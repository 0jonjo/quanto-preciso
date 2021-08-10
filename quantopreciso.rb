# frozen_string_literal: true

# Funcoes de coleta de dados e impressao de resultado
def peganota(description)
  puts "Digite a nota #{description} no formato X.X "
  x = gets.chomp.to_f
  raise puts 'A nota não pode ser menor que zero.' if x.negative?
  raise puts 'A nota não pode ser maior que 10.' if x > 10

  x
end

def japacou
  puts 'Você já está aprovado por média.'
end

def precisade(nota)
  puts "Você precisa de no mínimo #{nota.ceil(1)} para passar."
end

# Def do inicio do programa
def inicio
  puts 'Digite n para saber quanto precisa no 4º bimestre'
  puts 'Digite r para saber quanto precisa na recuperação'
  @escolha = gets.chomp
  selecao
end

def selecao
  case @escolha
  when 'r'
    calc_media_anual
  when 'n'
    nota_4bim
  else
    puts 'Opção inválida. Escolha novamente'
    inicio
  end
end

def calc_media_anual
  mediaanual = peganota('da sua média anual')
  case mediaanual
  when 6..10
    japacou
  when 0..2.5
    puts 'Você já reprovou :('
  else
    recuperacao = 15 - (mediaanual * 2)
    precisade(recuperacao)
  end
end

def nota_4bim
  bim1 = peganota('do 1º bim')
  bim2 = peganota('do 2º bim')
  bim3 = peganota('do 3º bim')
  puts "As notas digitadas foram #{bim1}, #{bim2} e #{bim3}"
  @resultado = 24 - (bim1 + bim2 + bim3)
  selecao_resultado
end

def selecao_resultado
  case @resultado
  when -6..0
    japacou
  when 10..23.9
    puts 'Você já está em recuperação!'
  else
    precisade(resultado)
  end
end

inicio
