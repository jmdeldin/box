# Janitorial Tasks

## Remove Garbage Packages

    ansible-playbook -i ~/src/box/hosts ~/src/box/thinkpad.yml --tags janitor -e cleanup=True

## Remove Semi-Useful Garbage Packages

Useful before a backup and restore:

    ansible-playbook -i ~/src/box/hosts ~/src/box/thinkpad.yml --tags janitor -e nuclear=True
