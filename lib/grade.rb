class Grade
    
  attr_reader :bim1, :bim2, :bim3, :bim4, :media, :rec, :final

  def initialize bim1, bim2, bim3, bim4
    @bim1 = bim1
    @bim2 = bim2
    @bim3 = bim3
    @bim4 = bim4
    @media = media
    @rec = rec
    @final = final
  end    

  def need_bim4
    need_bim4 = 24 - @bim1 - @bim2 - @bim3
    if need_bim4.negative?
      aprovado
    elsif need_bim4 > 10
      recuperacao
    else
      need_bim4
    end  
  end 

  def media
    @media = (@bim1 + @bim2 + @bim3 + @bim4) / 4 
  end

  def need_rec
    need_rec = 15 - (@media * 2)
    if @media >= 2.5 && @media < 6.0
      need_rec
    else
      fora_recuperacao
    end      
  end 

  def set_rec(nota)
    @rec = nota
  end  

  def final
    if @media >= 6.0
      @final = @media
    else
      @rec = 0 if @rec == nil
      @final = (@rec + @media * 2) / 3   
    end
  end

  def aprovado
    "Aprovado"
  end
  
  def recuperacao
    "Em recuperação"
  end 
  
  def reprovado
    "Reprovado"
  end 
  
  def fora_recuperacao
    "Não está em recuperação."
  end  

end