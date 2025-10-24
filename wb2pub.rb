#!/usr/bin/env ruby

# wb2pub url
url = ARGV[0]
#system("mkdir .temp/")
#resultadoDownload = `wget1 --page-requisites --user-agent=Mozilla --convert-links --adjust-extension --execute robots=off --quiet --directory-prefix ./.temp #{url}`
puts arquivo = `find ./.temp/ -type f -name "*.html"`
puts caminhoInicial = `pwd`
puts caminhoAbsoluto = `readlink -f #{arquivo}`.chomp
puts nome = `basename #{caminhoAbsoluto}`.chomp
puts caminhoPuro = `dirname #{caminhoAbsoluto}`.chomp
puts caminhoInicial = `pwd`.chomp
Dir.chdir("#{caminhoPuro.chomp}") do
  puts resultadoConversao = `pandoc #{nome} -f html -t epub3 -o #{nome.sub(/.html/,'.epub')} -s`
  system("mv '#{nome.sub(/.html/,'.epub')}' '#{caminhoInicial}/'")
end
system("rm -rf ./.temp")
