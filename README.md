# app_cmd_demo

Demo of [App::Cmd](https://metacpan.org/pod/App::Cmd) module usage

Local running

```
$ git clone git@github.com:pavelsr/app_cmd_demo.git
$ cd app_cmd_demo
$ perl -Ilib bin/foo                # "foo" command help
$ perl -Ilib bin/foo bar            # "foo bar" command execute, print hello world
$ perl -Ilib bin/foo bar --help     # help of "foo bar" command

```

You can install this demo as system-wide `foo` command using [Dist::Zilla](https://metacpan.org/pod/Dist::Zilla), 
just create [dist.ini](http://dzil.org/tutorial/new-dist.html) file

