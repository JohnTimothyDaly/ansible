#!/usr/bin/ruby

#fail("ERROR: #{__FILE__} expects 1 argument but got #{ARGV.length}") unless ARGV.length == 1
unless ARGV.length == 1
  print "no_arg"
  exit
end

$NAME = ARGV[0]
$RES = `sudo dscl . -read /groups/admin GroupMembership`
$RES.slice!('GroupMembership: ')
$ADMINS_ARRAY = $RES.split(' ')

#fail("ERROR: #{$NAME} is not in admin group") unless $ADMINS_ARRAY.include?($NAME)

if $ADMINS_ARRAY.include?($NAME)
  print 'is_admin'
else
  print 'not_admin'
end