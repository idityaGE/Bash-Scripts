# TypeScript Project Setup Script

This is a Bash script that automates the setup of a basic TypeScript project, initializing `npm`, creating necessary folders, and configuring `tsconfig.json`.

```bash
project_name/
  |- src/
    |- index.ts
  |- package.json
  |- tsconfig.json
```

### Prerequisites

- **Node.js**
  ```bash
  node -v
  ```
- **TypeScript**
  ```bash
  tsc -v
  ```
- **WSL or Linux Environment**

### Steps to Run

1. **Download or copy the script**: Save the script in a file, e.g., `setup-ts-project.sh`.
2. **Open your terminal in WSL Ubuntu**: Use `cd` to navigate to the folder where the script is saved.
3. **Make the script executable**:
```bash
chmod +x setup-ts-project.sh
```
4. **Run the script**:
```bash
./setup-ts-project.sh
```

## Things to Keep in Mind

- **File Execution**: Ensure the script has the correct Unix-style line endings (`LF`). If you edited the script on Windows, Windows-style line endings (CRLF) instead of Unix-style (LF).

## Troubleshooting
1. **Run this command** to convert line endings:

```bash
sed -i 's/\r$//' setup-ts-project.sh
```

## Conclusion

This script simplifies the initial setup of a TypeScript project, handling the configuration of the project structure and `tsconfig.json`. It’s designed to be run in WSL or any Linux-based environment.

Feel free to modify the script as needed for your specific project requirements!