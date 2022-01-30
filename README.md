# automation_foundations_1

This project is a simple bash script to set up a minimal install of RHEL8 to be registered to a subscription, attach a pool id, enable necessary repositories, and install Ansible.

After setting up VMs in the Libvirt environment, I always have to do the following steps manually.

1. Register my subscription manager.
2. Attach pool id.
3. Disable all repositories.
4. Enable only the necessary repositories.

I want to automate these steps so that I only have to configure variables at the beginning, rather than type out commands in the terminal, wait, and then type some more commands.

Bash scripting is a language for automation of the Linux command line. While it is simple, it has some weaknesses. One weakness is that it is not verbose in its execution. This results in a lack of feedback for the user. This becomes a problem for the user, because of some of the following points.

1. The user does not know which step they are up to in the automation.
2. The user does not know where the automation stopped working due to an error, if there is an error.

That is why I want to use Ansible to do my automation instead.
Ansible is an automation tool that solves the above mentioned problems.
Because it solves the above problems by being more verbose in the steps it is taking, this result in more robust automation code, where the developer can understand what part of the script is not working, and apply fixes immediately.
There are many other advantages to using Ansible over Bash scripting.

This is why for automation_foundations_1, I want to use bash scripting only up to the point where I install Ansible. 

I want to install the Ansible package, so that I can run further automation tasks with Ansible.

To use this script,

1. Clone from Github to your directory. `$ git clone <url>`
2. Ensure the script is executable. `$ chmod +x <script_file_name>`
3. Execute the script. `sudo ./<script_file_name>`
4. Enter the prompts for rhsm username, rhsm password, and pool id as they come up interactively.

Note: If you have a complex password that includes special characters or capital letters, make sure that you use a backspace each time. The backspace ensures that the input is being parsed as it is, and not something else.