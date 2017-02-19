# demo

Prerequirements:
- have a virtualisation layer (kvm, virtualbox or hyper-v)
- download minishift
  https://github.com/minishift/minishift/releases/
- extract the archive
- move minishift binary to a path related folder
  ~/.local/bin/ or /usr/bin/ or a custom one, but this requires you to add the folder to your $PATH variable
  (a custom path is the only option for windows)
- download openshift client tools
  https://github.com/openshift/origin/releases/
- move oc binary to a path related folder
  ~/.local/bin/ or /usr/bin/ or a custom one, but this requires you to add the folder to your $PATH variable
  (a custom path is the only option for windows)


Run this:
$ sudo chmod +x ./startup-demo.sh
$ ./startup-demo.sh
