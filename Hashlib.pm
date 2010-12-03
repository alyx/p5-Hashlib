#!/usr/bin/env perl

# Hashlib.pm - A truely proper interface to most Digest:: modules.
# Copyright 2010 Alexandria Wolcott

# To appease PerlCritic:
#   $Id$ $Revision$ $HeadURL$ $Date$ $Source$

package Hashlib;
use strict;
use warnings;
use Carp qw(croak carp);

our $VERSION = 0.90;

sub new {
    my $class = shift;
    my $self = bless {}, $class;
    return $self;
}

# Hashing subroutines

sub blake {
    my ( $self, $size, $data ) = @_;
    if ( ( !$size ) or ( !$data ) ) {
        croak( __PACKAGE__ . '::BLAKE: Missing required paramaters' );
    }
    eval { require Digest::BLAKE } or croak('Missing Digest::BLAKE');
    my $hash = Digest::BLAKE->new($size);
    $hash->add($data);
    my $out = {
        bin  => $hash->digest,
        hex  => $hash->hexdigest,
        base => $hash->b64digest
    };
    return $out;
}

sub bmw {
    my ( $self, $size, $data ) = @_;
    if ( ( !$size ) or ( !$data ) ) {
        croak( __PACKAGE__ . '::BMW: Missing required paramaters' );
    }
    eval { require Digest::BMW } or croak('Missing Digest::BMW');
    my $hash = Digest::BMW->new($size);
    $hash->add($data);
    my $out = {
        bin  => $hash->digest,
        hex  => $hash->hexdigest,
        base => $hash->b64digest
    };
    return $out;
}

sub echo {
    my ( $self, $size, $data ) = @_;
    if ( ( !$size ) or ( !$data ) ) {
        croak( __PACKAGE__ . '::ECHO: Missing required paramaters' );
    }
    eval { require Digest::ECHO } or croak('Missing Digest::ECHO');
    my $hash = Digest::ECHO->new($size);
    $hash->add($data);
    my $out = {
        bin  => $hash->digest,
        hex  => $hash->hexdigest,
        base => $hash->b64digest
    };
    return $out;
}

sub fugue {
    my ( $self, $size, $data ) = @_;
    if ( ( !$size ) or ( !$data ) ) {
        croak( __PACKAGE__ . '::Fugue: Missing required paramaters' );
    }
    eval { require Digest::Fugue } or croak('Missing Digest::Fugue');
    my $hash = Digest::Fugue->new($size);
    $hash->add($data);
    my $out = {
        bin  => $hash->digest,
        hex  => $hash->hexdigest,
        base => $hash->b64digest
    };
    return $out;
}

sub groestl {
    my ( $self, $size, $data ) = @_;
    if ( ( !$size ) or ( !$data ) ) {
        croak( __PACKAGE__ . '::Groestl: Missing required paramaters' );
    }
    eval { require Digest::Groestl } or croak('Missing Digest::Groestl');
    my $hash = Digest::Groestl->new($size);
    $hash->add($data);
    my $out = {
        bin  => $hash->digest,
        hex  => $hash->hexdigest,
        base => $hash->b64digest
    };
    return $out;
}

sub hamsi {
    my ( $self, $size, $data ) = @_;
    if ( ( !$size ) or ( !$data ) ) {
        croak('__PACKAGE__ ::Hamsi: Missing required paramaters');
    }
    eval { require Digest::Hamsi } or croak('Missing Digest::Hamsi');
    my $hash = Digest::Hamsi->new($size);
    $hash->add($data);
    my $out = {
        bin  => $hash->digest,
        hex  => $hash->hexdigest,
        base => $hash->b64digest
    };
    return $out;
}

sub jh {
    my ( $self, $size, $data ) = @_;
    if ( ( !$size ) or ( !$data ) ) {
        croak( __PACKAGE__ . '::JH: Missing required paramaters' );
    }
    eval { require Digest::JH } or croak('Missing Digest::JH');
    my $hash = Digest::JH->new($size);
    $hash->add($data);
    my $out = {
        bin  => $hash->digest,
        hex  => $hash->hexdigest,
        base => $hash->b64digest
    };
    return $out;
}

sub keccak {
    my ( $self, $size, $data ) = @_;
    if ( ( !$size ) or ( !$data ) ) {
        croak( __PACKAGE__ . '::Keccak: Missing required paramaters' );
    }
    eval { require Digest::Keccak } or croak('Missing Digest::Keccak');
    my $hash = Digest::Keccak->new($size);
    $hash->add($data);
    my $out = {
        bin  => $hash->digest,
        hex  => $hash->hexdigest,
        base => $hash->b64digest
    };
    return $out;
}

sub luffa {
    my ( $self, $size, $data ) = @_;
    if ( ( !$size ) or ( !$data ) ) {
        croak( __PACKAGE__ . '::Luffa: Missing required paramaters' );
    }
    eval { require Digest::JH } or croak('Missing Digest::Luffa');
    my $hash = Digest::Luffa->new($size);
    $hash->add($data);
    my $out = {
        bin  => $hash->digest,
        hex  => $hash->hexdigest,
        base => $hash->b64digest
    };
    return $out;
}

sub shavite {
    my ( $self, $size, $data ) = @_;
    if ( ( !$size ) or ( !$data ) ) {
        croak( __PACKAGE__ . '::SHAvite: Missing required paramaters' );
    }
    eval { require Digest::SHAvite3 } or croak('Missing Digest::SHAvite3');
    my $hash = Digest::SHAvite3->new($size);
    $hash->add($data);
    my $out = {
        bin  => $hash->digest,
        hex  => $hash->hexdigest,
        base => $hash->b64digest
    };
    return $out;
}

sub simd {
    my ( $self, $size, $data ) = @_;
    if ( ( !$size ) or ( !$data ) ) {
        croak( __PACKAGE__ . '::SIMD: Missing required paramaters' );
    }
    eval { require Digest::SIMD } or croak('Missing Digest::SIMD');
    my $hash = Digest::SIMD->new($size);
    $hash->add($data);
    my $out = {
        bin  => $hash->digest,
        hex  => $hash->hexdigest,
        base => $hash->b64digest
    };
    return $out;
}

sub shabal {
    my ( $self, $size, $data ) = @_;
    if ( ( !$size ) or ( !$data ) ) {
        croak( __PACKAGE__ . '::Shabal: Missing required paramaters' );
    }
    eval { use Digest::Shabal } or croak('Missing Digest::Shabal');
    my $hash = Digest::Shabal->new($size);
    $hash->add($data);
    my $out = {
        bin  => $hash->digest,
        hex  => $hash->hexdigest,
        base => $hash->b64digest
    };
    return $out;
}

1;

__END__
