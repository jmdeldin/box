thinkpad:
	ansible-playbook -i hosts thinkpad.yml -K

clobber:
	ansible-playbook -i hosts thinkpad.yml -K --tags janitor -e cleanup=True

nuclear:
	ansible-playbook -i hosts thinkpad.yml -K --tags janitor -e nuclear=True

clean:
	rm *.retry
