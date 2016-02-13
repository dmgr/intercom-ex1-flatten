# Intercom::Ex1::Flatten

A flatten function that flattens an array of arbitrarily nested arrays of integers into a flat array of integers.

## Installation

Add this line to your application's Gemfile:

    gem 'intercom-ex1-flatten'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install intercom-ex1-flatten

## Usage

    Intercom::Ex1.flatten([[1,2,[3]],4]) == [1,2,3,4]
