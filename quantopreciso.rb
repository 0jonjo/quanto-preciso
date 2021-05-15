#Funções de coleta de dados e impressão de resultado
def peganota(description)
	puts "Digite a nota #{description} no formato X.X "
	gets.chomp.to_f 
	end

def japacou()
	return puts "Você já está aprovado por média."
	end

def precisade(nota)
	return puts "Você precisa de no mínimo #{nota.ceil(1)} para passar."
	end

#Início do programa
puts "Digite qualquer tecla para saber quanto precisa no 4º bimestre"
puts "Digite r para saber quanto precisa na recuperação"
escolha = gets.chomp

if escolha == "r"
	mediaanual = peganota('da sua média anual')
	if mediaanual >= 6
		japacou()
	elsif mediaanual < 2.5
		puts "Você já reprovou :(" 
	else 
		recuperacao = 15 - (mediaanual * 2)
		precisade(recuperacao) 
	end

else
	bim1 = peganota('do 1º bim')
	bim2 = peganota('do 2º bim')
	bim3 = peganota('do 3º bim')
	puts "As notas digitadas foram #{bim1}, #{bim2} e #{bim3}"
	resultado = 24 - (bim1 + bim2 + bim3)
		if resultado <= 0
			japacou()
		elsif resultado > 10
			puts "Você já está em recuperação!"
		else 
			precisade(resultado)
		end
end

