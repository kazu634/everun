#!/usr/bin/env rake

def os
  @os ||= (
    host_os = RbConfig::CONFIG['host_os']
    case host_os
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      :macosx
    when /linux/
      :linux
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  )
end

desc 'Preparation for Generating the HTML Pages'
task :prep do
  cd 'content/' do
    if os == :linux
      sh 'find . -type f -name "*.mde" | xargs --no-run-if-empty rm || true'
      sh 'find . -type f -name "*.md-e" | xargs --no-run-if-empty rm || true'
    else
      sh 'find . -type f -name "*.mde" | xargs rm || true'
      sh 'find . -type f -name "*.md-e" | xargs rm || true'
    end
  end

  cd 'public' do
    sh 'rm -rf *'
  end
end
