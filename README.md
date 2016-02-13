# Intercom::Ex1::Flatten

A flatten function that flattens an array of arbitrarily nested arrays of integers into a flat array of integers.

## Installation

Add this line to your application's Gemfile:

    gem 'intercom-ex1-flatten', git: 'https://github.com/dmgr/intercom-ex1-flatten.git'

And then execute:

    $ bundle

## Usage

    Intercom::Ex1.flatten([[1,2,[3]],4]) == [1,2,3,4]
