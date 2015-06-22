### freepbx-update

A couple of shell scripts to automate FreePBX cumulative updates.

1. Modify the ```UPGRADESDIR``` in both scripts if required.
2. Run ```freepbx-load-upgrades.sh``` to pre-stage all FreePBX updates to ```UPGRADESDIR```
3. Run ```freepbx-perform-upgrades.sh``` to perform the next upgrade in the process, along with any documented (http://wiki.freepbx.org/display/FD/Updating+FreePBX+Official+Distro)file moves or deletes that are required