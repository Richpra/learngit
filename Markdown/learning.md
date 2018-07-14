# Git 学习

1. 对于一个文件，如果需要记录下其版本和更改，所需要的步骤主要有两个：

- 使用 git-add 命令将文件添加到仓库。
- 使用 git-commit命令将文件提交到仓库。

2. 在git提交环节，存在 *三大部分* ：

- working tree 
- index file
- commit

   这三大部分中：

- working tree: 就是你所工作在的目录，每当你在代码中进行了修改，working tree的状态就改变了。
- index file：是索引文件，它是连接working tree和commit的桥梁，每当我们使用git-add命令来登记后，index file的内容就改变了，此时index file就和working tree同步了。
- commit：是最后的阶段，只有commit了，我们的代码才真正进入了git仓库。我们使用git-commit就是将index file里的内容提交到commit中。

  总结一下：

- git diff：是查看working tree与index file的差别的。
- git diff --cached：是查看index file与commit的差别的。
- git diff HEAD：是查看working tree和commit的差别的。（你一定没有忘记，HEAD代表的是最近的一次commit的信息）

3. 当对文件更改时，保存过之后，改变的只是 work tree，而并非index tree。因此此时用git-diff命令查看，可以看到二者的区别。然而如果git-add之后，index tree与work tree 就同步了，此时使用git-diff命令看不出差别。

4. 如果在版本库中已经删了文件，那么就不能从旧的版本中还原了，因而从版本库中删除文件即git-rm命令使用要格外小心！
