import os
import re

TOPICS_DIR = "topics"

def clean_qmd_file(file_path):
    """
    Cleans up YAML front matter in a .qmd file:
    1. Wraps title in double quotes.
    2. Strips unnecessary blank lines/spaces before and after '---'.
    """
    with open(file_path, "r", encoding="utf-8") as f:
        content = f.read()

    # Split into YAML block and body based on '---' delimiters
    # Matches starting '---' and ending '---'
    parts = re.split(r"^---\s*$", content, maxsplit=2, flags=re.MULTILINE)

    if len(parts) >= 3:
        yaml_block = parts[1]
        body = parts[2]

        # Process lines inside the YAML block
        yaml_lines = []
        for line in yaml_block.splitlines():
            # Check for title key (e.g., title: My Title or title: "My Title")
            title_match = re.match(r"^(\s*title\s*:\s*)(.*)$", line)
            if title_match:
                key_prefix = title_match.group(1)
                raw_title = title_match.group(2).strip()

                # Remove existing surrounding quotes (single or double) if present
                if (raw_title.startswith('"') and raw_title.endswith('"')) or \
                   (raw_title.startswith("'") and raw_title.endswith("'")):
                    raw_title = raw_title[1:-1]

                # Escape any internal double quotes
                clean_title = raw_title.replace('"', '\\"')

                # Reconstruct line with title wrapped in double quotes
                line = f'{key_prefix}"{clean_title}"'

            yaml_lines.append(line)

        # Rebuild YAML string, stripping extra blank lines inside
        cleaned_yaml = "\n".join(yaml_lines).strip()
        
        # Clean up body: strip leading newlines so it sits neatly after '---'
        cleaned_body = body.lstrip("\r\n")

        # Reconstruct file content with concise '---' spacing
        new_content = f"---\n{cleaned_yaml}\n---\n\n{cleaned_body}"

        with open(file_path, "w", encoding="utf-8") as f:
            f.write(new_content)

        print(f"Cleaned formatting in: {file_path}")
    else:
        print(f"Skipped (no valid front matter): {file_path}")

def process_topics_directory(directory):
    """
    Recursively scans topics directory for .qmd files and cleans them.
    """
    for root, _, files in os.walk(directory):
        for file in files:
            if file.endswith(".qmd") and not file.startswith("."):
                qmd_path = os.path.join(root, file)
                clean_qmd_file(qmd_path)

if __name__ == "__main__":
    if os.path.exists(TOPICS_DIR):
        print(f"Formatting .qmd files in '{TOPICS_DIR}'...\n")
        process_topics_directory(TOPICS_DIR)
        print("\nFinished cleaning YAML formatting and title quotes!")
    else:
        print(f"Error: Could not find '{TOPICS_DIR}' folder.")