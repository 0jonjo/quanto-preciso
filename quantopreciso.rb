#Funções de impressão de resultado
def japacou()
	return puts "Você já está aprovado por média"
	end

def precisade(nota)
	return puts "Você precisa de no mínimo #{nota.ceil(1)} para passar"
	end

#Início do programa
puts "Digite qualquer tecla para saber quanto precisa no 4º bimestre"
puts "Digite r para saber quanto precisa na recuperação"
escolha = gets.chomp

if escolha == "r"
	puts "Digite sua média anual no formato X.X"
	mediaanual = gets.chomp.to_f
	if mediaanual >= 6
		japacou()
	elsif mediaanual < 2.5
		puts "Você já reprovou :(" 
	else 
		recuperacao = 15 - (mediaanual * 2)
		precisade(recuperacao) 
	end

else
	puts "Digite as notas dos 3 bimestres no formato X.X"
	bim1 = gets.chomp.to_f
	bim2 = gets.chomp.to_f
	bim3 = gets.chomp.to_f
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

