#.PHONY = test1, test2, add, commit, push, flowcontrol

###############################################
MESSAGE = "Hello my friends!"
echm:
	@echo ${MESSAGE}
###############################################

test_var = "hello"
test1:
	@echo "test1 ${test_var}"
	@echo "another one"
###############################################

test2: test1
	@echo "test 2"
###############################################

add:
	@git add .
	@git reset HEAD bash_scripts
	@git status
###############################################

comment_var = "updates"
commit: add
	@git commit -m "${comment_var}"
###############################################

branch = "master"
push: add commit
	@git push origin ${branch}
###############################################

foo = 3
flowcontrol:
ifeq (${foo}, 2)
	@echo "hello!"
else
	@echo "hello my friends!"
endif

ifdef foo2
	@echo "Foo2 is defined"
else
	@echo "Foo2 ain't defined"
endif
###############################################	

foo3 = "hello"
csub:
ifeq (${foo3}, jenkins)
	${info Checking user...}
	@echo "User confirmed"	
else
	${error "Unauthorised access!"}
endif	
##############################################

deltxt: echm
	@rm *.txt
	@echo ".txt files deleted!"
##############################################

echotxt: echm
	@echo "Texting texting texxttinng" >> results
##############################################

readtxt: echm
	@cat ${file_var}
#############################################

hash = ${shell git rev-parse HEAD}
githash:
	@echo "Hash = ${hash}"
#############################################

home = ${HOME}
homedir:
ifneq (, $(findstring j, ${home}))
	@echo "Home dir is ${home}"
else
	@echo "home dir not found!"	
endif
