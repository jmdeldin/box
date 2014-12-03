Personal Development Box
========================

This is an experimental [Ansible][ansible] setup for my personal
development environment. It is most certainly impractical for
everyone, but I wanted to learn how to use Ansible for configuration
management.

It currently targets an Ubuntu 13.10 machine, specifically a System76
Galago UltraPro laptop. If targeting other machines, remove the
`include: system76.yml` line from `setup.yml`.

Included Packages
-----------------

This environment is geared towards Ruby, R, and LaTeX, but for the full
list of packages, take a look at `ansible/setup.yml`.

Prerequisites
-------------

1. Install [Ansible][ansible]
2. `git clone https://github.com/jmdeldin/box.git && cd box`

Executing Ansible Commands
---------------------------

To run an arbitrary command:

    ansible -i ansible/hosts all -m shell -a 'echo hi'

To execute specific tagged tasks from the "playbook":

    ansible-playbook -i ansible/hosts --tags "ruby" ansible/main.yml

To run the entire playbook:

    ansible-playbook -K -i ansible/hosts ansible/main.yml

Author
------

Jon-Michael Deldin, dev@jmdeldin.com

License
-------

Licensed under the WTFPL.

[ansible]: http://ansible.cc
