# frozen_string_literal: true

require_relative 'texts'

# Funcoes de coleta e tratamento de dados:

def start_choose
  choose = gets.chomp
  case choose.downcase
  when 'r'
    average_grade
  when 'n'
    getting_grades
  else
    puts 'Opção inválida. Escolha novamente'
    start_choose
  end
end

def gets_grade(description)
  puts "Digite a nota #{description} no formato X.X "
  x = gets.chomp.to_f
  raise puts 'A nota não pode ser menor que zero.' if x.negative?
  raise puts 'A nota não pode ser maior que 10.' if x > 10

  x
end

def average_grade
  average = gets_grade('da sua média anual')
  case average
  when 6..10
    passed
  when 0..2.5
    puts 'Você já reprovou :('
  else
    recovering = 15 - (average * 2)
    needthis(recovering)
  end
end

def getting_grades
  bim1 = gets_grade('do 1º bim')
  bim2 = gets_grade('do 2º bim')
  bim3 = gets_grade('do 3º bim')
  puts "As notas digitadas foram #{bim1}, #{bim2} e #{bim3}"
  @result = 24 - (bim1 + bim2 + bim3)
  grade_4bim
end

def grade_4bim
  case @result
  when -6..0
    passed
  when 10..23.9
    puts 'Você já está em recuperação!'
  else
    needthis(@result)
  end
end
