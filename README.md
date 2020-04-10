# Report for B30SQ

## Possible tips
Download the zip or directly clone the repository using:

```git clone https://github.com/YifeiJing/B30SQ-Report.git```

After cloning or unzip, change to the work space and you can edit the content of report in **report.tex**. Don't mind if you have deleted any contents, because the changes will not be saved by *git* until you type in the command:

```
git add .
git commit -m "Message of the changes you have made"
```

The "Message ..." part in the command line is the changes you have made in the report. For example, edited **introduction**, added captures, or completed some sections.

To check for what we have done. Type in the command:

```git log --pretty=oneline```

Every time before you edit the report, please type in the command:

```git pull origin master```

This command will automatically update the repository to the latest version.

Each time after you edit the report, please update to the server by typing in the command after you have committed the changes:

```git push origin master```