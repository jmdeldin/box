thinkpad:
	ansible-playbook -i hosts thinkpad.yml -K

clobber: clean
	ansible-playbook -i hosts thinkpad.yml -K --tags janitor -e cleanup=True

nuclear: clobber
	ansible-playbook -i hosts thinkpad.yml -K --tags janitor -e nuclear=True

clean:
	rm -f *.retry
