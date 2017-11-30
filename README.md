Personal Development Box
========================

This is an experimental [Ansible][ansible] setup for my personal
development environment. It is most certainly impractical for
everyone, but I wanted to learn how to use Ansible for configuration
management.

Targets
-------

1. Development laptop (Thinkpad T460p) running Ubuntu 17.10
2. Home backup server "VCR" (named for its form factor)

Prerequisites
-------------

1. Install [Ansible][ansible]
2. `git clone https://github.com/jmdeldin/box.git && cd box`

Executing Ansible Commands
---------------------------

To run an arbitrary command:

    ansible -i hosts all -m shell -a 'echo hi'

To execute specific tagged tasks from the "playbook":

    ansible-playbook -i hosts --tags "ruby" thinkpad.yml

To run the entire playbook:

    ansible-playbook -K -i hosts system76.yml

Author
------

Jon-Michael Deldin, dev@jmdeldin.com

License
-------

Licensed under the WTFPL.

[ansible]: http://ansible.cc
