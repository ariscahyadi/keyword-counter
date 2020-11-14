## Utility to count specific keywords from all files in directory

It is used to count and sort specific keywords (as defined in 
[keyword.txt](keyword.txt)) inside all the files and directory.

### Usage

In order to use this tool, please use these following commands:
```shell script
$ chmod 755 keyword-count.sh
$ ./keyword-count.sh <directory_name>
```

The result will be something like this:
```shell script
$ ./keyword-count.sh ../kubernetes-website/content/id/docs/
berkas      521
kontainer      497
anda      263

```
Contributor: [Aris Risdianto](mailto:aris.risdianto@gmail.com)