#!/usr/bin/env ruby

def say_hello_goodbye(nome)
  #Por padrão, o resultado da última expressão em um método é retornada
  #Se ela não tiver um valor de retorno explícito.
  "Salutations and a Farewell to your arms, #{nome.capitalize}!"
end

puts(say_hello_goodbye("André"))
puts say_hello_goodbye("Bruna")
