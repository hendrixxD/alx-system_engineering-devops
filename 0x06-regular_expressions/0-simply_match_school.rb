#!/usr/bin/env bash
#! regular expressison that matches "school"

puts ARGV[0].scan(/(School)/).join
