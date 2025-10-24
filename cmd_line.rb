#!/usr/bin/env ruby

def cheque_dependencias
  baixadores = ["wget1"]
  conversores = ["pandoc"]
  tem_baixador = false
  tem_conversor = false

  baixadores.each do |baixador|
    if system("#{baixador} --version") then
      tem_baixador = true
    end
  end

  conversores.each do |conversor|
    if system("#{conversor} --version") then
      tem_conversor = true
    end
  end

  if !tem_baixador then
    puts "Não tem um baixador disponível"
  end

  if !tem_conversor then
    puts "Não tem um conversor disponível"
  end
end

cheque_dependencias
puts "You gave #{ARGV.size} arguments"
p ARGV
