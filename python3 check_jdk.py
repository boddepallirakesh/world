import os
import subprocess
import sys

def check_javac():
    """Check if 'javac' is available."""
    try:
        # Run 'javac -version' and capture the output
        result = subprocess.run(["javac", "-version"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        if result.returncode == 0:
            print(f"Javac found: {result.stderr.strip() or result.stdout.strip()}")
            return True
        else:
            print("Javac is not available.")
            return False
    except FileNotFoundError:
        print("Javac is not installed or not in the PATH.")
        return False

def install_jdk():
    """Install JDK based on the operating system."""
    print("Attempting to install JDK...")
    if sys.platform.startswith("linux"):
        distro = ""
        try:
            # Detect if the system is Debian-based or RHEL-based
            with open("/etc/os-release", "r") as f:
                content = f.read()
                if "debian" in content.lower() or "ubuntu" in content.lower():
                    distro = "debian"
                elif "centos" in content.lower() or "rhel" in content.lower():
                    distro = "rhel"
        except FileNotFoundError:
            print("Unable to determine the Linux distribution. Install JDK manually.")
            return False

        if distro == "debian":
            os.system("sudo apt update && sudo apt install default-jdk -y")
        elif distro == "rhel":
            os.system("sudo yum install java-11-openjdk-devel -y")
        else:
            print("Unsupported Linux distribution. Install JDK manually.")
            return False
    elif sys.platform == "darwin":
        print("Please install JDK on macOS using 'brew install openjdk' or manually.")
        return False
    elif sys.platform == "win32":
        print("Please download and install JDK from https://www.oracle.com/java/technologies/javase-downloads.html")
        return False
    else:
        print("Unsupported operating system.")
        return False

    print("JDK installation attempted. Verify installation with 'javac -version'.")
    return True

def main():
    if not check_javac():
        print("Javac is not found. Attempting to install JDK...")
        if install_jdk():
            print("JDK installation completed. Please ensure 'javac' is in the PATH.")
        else:
            print("Failed to install JDK. Install it manually.")

if __name__ == "__main__":
    main()
