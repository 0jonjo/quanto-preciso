# frozen_string_literal: true

# Funcoes de impressao de texto

def start_program_msg
  puts '---CALCULADORA DE NOTAS---'
  puts '------REDE MUNICIPAL------'
  puts '------PARNAMIRIM-RN-------'
end

def menu_msg
  puts 'Escolha a opção desejada:'
  puts 'Digite *N* para saber quanto precisa no 4º bimestre'
  puts 'Digite *R* para saber quanto precisa na Recuperação'
end

def passed
  puts 'Você já está aprovado por média.'
end

def needthis(grade)
  puts "Você precisa de no mínimo #{grade.ceil(1)} para passar."
end
