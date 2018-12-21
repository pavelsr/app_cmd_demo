package Foo::Command::bar;
use App::Cmd::Setup -command;
use Data::Dumper;

sub abstract    { "example command abstract" }
sub description { "description of example command" }

# https://metacpan.org/pod/App::Cmd::Command#opt_spec
sub opt_spec {
    return (
        [ "baz", "Option - can be used as subcommand" ],
        [ "xyz", "Second demo option"]
    );
}

# foo bar baz
# 'baz' will be in $args->[0]

# foo bar baz xyz
# 'baz' will be in $args->[0], 'xyz' will be in $args->[1]

# foo bar quux
# 'quux' will be in $args->[0], so presence in $args doesn't depends on sub opt_spec presence

# foo bar --baz x
# 'baz' will be in $opt (Getopt::Long::Descriptive::Opts object) and x will be in $args $args->[0]    

# foo bar --abc
# '--abc' will be in $args->[0] since no 'abc' in opt_spec sub

sub execute {
    my ( $self, $opt, $args ) = @_;
    # print "Options : ".Dumper $opt;     # Getopt::Long::Descriptive::Opts
    # print "Arguments : ".Dumper $args;  
    
    my $subcommand = $args->[0];
    if ( $subcommand eq 'baz' ) {
        print "Subcommand baz is working\n";
    }

    if ( $opt->baz ) {
        print "Option baz is set\n";
    }
    
    # print "Hello world\n";
}

1;