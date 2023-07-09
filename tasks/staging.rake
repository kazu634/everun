#!/usr/bin/env rake

require 'find'

desc 'Deploy the hugo contents to the server'
task :stag => [ :prep ] do
  sh 'hugo -e staging -v --minify'

  sh 'find public -type f -name "*.gz" -delete'

  sh 'find public/ -type f | egrep "\.(css|js|png|jpg|html|JPG|PNG|CSS|JS|HTML)$" | xargs -n 1 -i% -P 0 sh -c "cp % %.bk && gzip % && mv %.bk %"'

  sh 'ssh -p 10022 webadm@10.0.1.222 "rm -rf /var/www/test-everun/*"'
  sh 'rsync -e "ssh -p 10022" -rltvz --omit-dir-times --delete public/ webadm@10.0.1.222:/var/www/test-everun'
end
