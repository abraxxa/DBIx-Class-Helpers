package DBIx::Class::Helper::Row::CleanResultSet;

# ABSTRACT: Get an unfiltered ResultSet from the row

use strict;
use warnings;

use parent 'DBIx::Class::Row';

sub clean_rs { return shift->result_source->resultset }

1;

=pod

=head1 SYNOPSIS

In result class:

 __PACKAGE__->load_components('Helper::Row::CleanResultSet');

Elsewhere:

 $row->clean_rs->$some_rs_method

similar to:

 $row->result_source->resultset->$some_rs_method

=head1 DESCRIPTION

Sometimes you need to be able to access the ResultSet containing all rows.

=head1 METHODS

=head2 clean_rs

 $row->clean_rs
