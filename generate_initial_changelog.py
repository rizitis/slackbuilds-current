import os
import time
from datetime import datetime

# Define the base directory as the current working directory
base_dir = os.getcwd()

# Path for the changelog file
changelog_file = os.path.join(base_dir, 'ChangeLog.txt')

# Function to format the current date and time
def get_current_time():
    return datetime.utcnow().strftime("%a %b %d %H:%M:%S UTC %Y")

# Function to read the existing changelog
def read_changelog():
    if os.path.exists(changelog_file):
        with open(changelog_file, 'r') as file:
            return file.read()
    return ""

# Function to write new changes to the top of the changelog
def write_changelog(new_entries):
    current_content = read_changelog()
    with open(changelog_file, 'w') as file:
        file.write(new_entries)
        file.write(current_content)

# Function to get the modification time of a file
def get_file_modification_time(file_path):
    return os.path.getmtime(file_path)

def scan_directories(base_dir):
    changes = {}
    for root, dirs, files in os.walk(base_dir):
        # Filter out hidden directories
        dirs[:] = [d for d in dirs if not d.startswith('.')]
        
        for file in files:
            # Skip hidden files
            if file.startswith('.'):
                continue

            # Skip the ChangeLog.txt file to avoid infinite loops
            if file == 'ChangeLog.txt':
                continue

            file_path = os.path.join(root, file)
            mod_time = get_file_modification_time(file_path)
            changes[file_path] = mod_time
    return changes


# Function to generate changelog entries for new or modified files
def generate_changelog_entries(new_changes, old_changes):
    entries = ""
    for file_path, mod_time in new_changes.items():
        if file_path not in old_changes or mod_time > old_changes[file_path]:
            relative_path = os.path.relpath(file_path, base_dir)
            entries += f"{relative_path}: Updated at {time.strftime('%Y-%m-%d %H:%M:%S', time.gmtime(mod_time))}.\n"
    return entries

# Function to save the changes timestamp for future reference
def save_changes_timestamp(changes):
    with open('file_timestamps.txt', 'w') as f:
        for file_path, mod_time in changes.items():
            f.write(f"{file_path} {mod_time}\n")

# Function to load the previously saved timestamps
def load_previous_timestamps():
    if os.path.exists('file_timestamps.txt'):
        with open('file_timestamps.txt', 'r') as f:
            previous_changes = {}
            for line in f:
                file_path, mod_time = line.strip().split(' ', 1)
                previous_changes[file_path] = float(mod_time)
            return previous_changes
    return {}

# Main script
if __name__ == "__main__":
    current_time = get_current_time()
    
    # Load previous file modification times
    old_changes = load_previous_timestamps()

    # Scan directories for changes
    new_changes = scan_directories(base_dir)

    # Generate changelog entries
    new_entries = generate_changelog_entries(new_changes, old_changes)

    if new_entries:
        # Add the current time and new entries to the top of the changelog
        new_changelog_entries = f"{current_time}\n{new_entries}+--------------------------+\n"
        write_changelog(new_changelog_entries)
        print("Changelog updated with new entries.")
    else:
        print("No changes detected.")

    # Save the new file modification times
    save_changes_timestamp(new_changes)

