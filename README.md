# automation_foundations_1

This project is a simple bash script to set up a fresh minimal install of RHEL8 to be registered to a subscription, attach a pool id, enable necessary repositories, and install Ansible.

After setting up VMs in the Libvirt environment, I always have to do the following steps manually.

1. Register my subscription manager.
2. Attach pool id.
3. Disable all repositories.
4. Enable only the necessary repositories.

I want to automate these steps so that I only have to configure variables at the beginning, rather than type out commands in the terminal, wait, and then type some more commands.

Scripting is a language for automation. While it is simple, it has some weaknesses. The main weakness is that it is not verbose in its execution. This results in a lack of feedback for the user. This becomes a problem for the user, because of some of the following points.

1. The user does not know which step they are up to in the automation.
2. The user does not know where the automation stopped working due to an error, if there is an error.

That is why I want to use Ansible to do my automation instead.
Ansible is an automation tool that solves the above mentioned problems.
Because it solves the above problems by being more verbose in the steps it is taking, this result in more robust automation code.
There are many other advantages to using Ansible over Bash scripting.

This is why for automation_foundations_1, I want to use bash scripting only up to the point where I install Ansible. 

I want to install the Ansible package, so that I can run further automation tasks with Ansible.