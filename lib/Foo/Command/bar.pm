package Foo::Command::bar;
use App::Cmd::Setup -command;

sub abstract    { "example command abstract" }
sub description { "description of example command" }

sub execute {
    print "Hello world\n";
}

1;