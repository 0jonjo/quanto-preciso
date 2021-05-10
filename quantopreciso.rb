puts "Digite qualquer tecla para saber quanto precisa no 4º bimestre"
puts "Digite r para saber quanto precisa na recuperação"
escolha = gets.chomp

if escolha == "r"
	puts "Digite sua média anual"
	mediaanual = gets.chomp.to_f
	if mediaanual >= 6
		puts "Você não está em recuperação, já passou :)" 
	elsif mediaanual < 2.5
		puts "Você já reprovou :(" 
	else 
		recuperacao = 15 - (mediaanual * 2)
		puts "Você precisa de no mínimo #{recuperacao.ceil(1)}" 
	end

else
	puts "Digite as notas dos 3 bimestres no formato X.X"
	bim1 = gets.chomp.to_f
	bim2 = gets.chomp.to_f
	bim3 = gets.chomp.to_f
	puts "As notas digitadas foram #{bim1}, #{bim2} e #{bim3}"
	resultado = 24 - (bim1 + bim2 + bim3)
		if resultado <= 0
			puts "Você já está passado por média"
		else 
			puts "Você precisa de #{resultado.ceil(1)} para passar por média"
		end
end

