#!/usr/bin/env rake

require 'socket'

desc 'Generate the HTML demo pages including drafts'
task :demo do
  ip = Socket.getifaddrs.select{|x|
    x.name =~ /^e.{2}\d+/ and x.addr.ipv4?
  }.first.addr.ip_address

  sh "hugo server --buildDrafts -w --bind #{ip} -b #{ip} --disableFastRender"
end
