.PHONY = test1, test2, add, commit, push
test_var = "hello"
comment_var = ""

test1:
	@echo "test1 ${test_var}"
	@echo "another one"

test2: test1
	@echo "test 2"

add:
	@git add .
	@git reset HEAD bash_scripts
	@git status


commit: add
	@git commit -m "${comment_var}"

push: add commit
	@git push origin master

