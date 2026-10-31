# 🛡️ PHP Vulnerability Learning Lab

⚠️ **WARNING: EDUCATIONAL PURPOSES ONLY** ⚠️  
This repository contains an intentionally vulnerable PHP environment designed **strictly for local, isolated learning**. 
**DO NOT** deploy this to a public server, production environment, or expose it to the internet.

## 🎯 Objective
This lab is designed to help developers and security enthusiasts understand core PHP engine-level vulnerabilities (such as memory corruption flaws like "php2shell" or CGI argument injection). 

It demonstrates that vulnerabilities can exist in the *interpreter itself* (written in C), not just in poorly written PHP code.

## 🚀 How to Run (Requires Podman or Docker)

1. Clone this repository:
   \`\`\`bash
   git clone https://github.com/YOUR_USERNAME/php-vuln-lab.git
   cd php-vuln-lab
   \`\`\`

2. Run the setup script:
   \`\`\`bash
   ./setup.sh
   \`\`\`

3. Open your browser and visit:
   - Main Page: \`http://localhost:8080\`
   - PHP Info: \`http://localhost:8080/info.php\`

## 🧠 What You Will Learn
- How PHP interacts with web servers (Apache/CGI).
- Why engine-level flaws (like Out-Of-Memory \`longjmp\` handling) affect *all* code running on that version.
- How to identify vulnerable versions using \`phpinfo()\`.
- The importance of keeping server-side interpreters patched, regardless of how "clean" your application code is.

## 🛑 Cleanup
To stop and remove the lab when you are done:
\`\`\`bash
podman stop php-vuln-lab
podman rm php-vuln-lab
podman rmi php-vuln-lab-image
\`\`\`

---
*Created for educational purposes. Always practice responsible security research.*
