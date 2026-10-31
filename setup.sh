#!/bin/bash
echo "Building the vulnerable PHP lab environment..."
podman build -t php-vuln-lab-image .

echo "Starting the container on http://localhost:8080 ..."
podman run -d --name php-vuln-lab -p 8080:80 php-vuln-lab-image

echo "Lab is running! Visit: http://localhost:8080"
echo "To stop it, run: podman stop php-vuln-lab && podman rm php-vuln-lab"
