Personal Development Box
========================

This is an experimental [Ansible][ansible] setup for my personal
development environment. It is most certainly impractical for
everyone, but I wanted to learn how to use Ansible for configuration
management.

It currently targets an Ubuntu 16.04 machine, specifically a System76
Galago UltraPro laptop.

Prerequisites
-------------

1. Install [Ansible][ansible]
2. `git clone https://github.com/jmdeldin/box.git && cd box`

Executing Ansible Commands
---------------------------

To run an arbitrary command:

    ansible -i hosts all -m shell -a 'echo hi'

To execute specific tagged tasks from the "playbook":

    ansible-playbook -i hosts --tags "ruby" system76.yml

To run the entire playbook:

    ansible-playbook -K -i hosts system76.yml

Author
------

Jon-Michael Deldin, dev@jmdeldin.com

License
-------

Licensed under the WTFPL.

[ansible]: http://ansible.cc
