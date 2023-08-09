# cl-installation-examples
This repository is only used when installing/configuring CodeLogic in an air-gapped Ubuntu(focal) environment, where it is necessary to acquire packages on a Windows host and move them to the Linux host.

Implementation steps:
1. Clone this repository on the Windows host: git clone https://github.com/CodeLogicExamples/cl-installation-examples.git
2. Run download-cldeps.ps1 in a powershell terminal.  This will download the CodeLogic .deb file. * Note the CodeLogic dependencies are already in the dependencies directory.
3. Recursively scp the cl-installation-examples folder to the Ubuntu host: scp -r cl-installation-examples $USER@$HOST:$DESTINATION
4. Log into the Ubuntu host, and navigate to the $DESTINATION/dependencies directory.
5. Run: sudo dpkg -i ./*.deb
6. Run: cd ../
7. Run: sudo dpkg -i ./codelogic_23.12.7_all.deb
   
The CodeLogic instance should now be installed, and we are ready for the configuration steps.
