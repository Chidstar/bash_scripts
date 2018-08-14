.PHONY = copy, ssher

zipcopy: 
	zip pythons.zip *.py Makefile
	scp /home/jenkins/wrapup/pythons.zip jenkins@10.0.10.11:/home/jenkins/

ssher: zipcopy
	ssh jenkins@10.0.10.11 'rm -rf pythons; mkdir pythons;\
	unzip -o /home/jenkins/pythons.zip -d /home/jenkins/pythons/;\
	cd ./pythons/; python add.py'

	
