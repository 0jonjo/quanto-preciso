class Grade
    
  attr_reader :bim1, :bim2, :bim3, :bim4, :media, :rec, :final

  def initialize bim1, bim2, bim3, bim4
    @bim1 = bim1
    @bim2 = bim2
    @bim3 = bim3
    @bim4 = bim4
    @media = media
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

  def aprovado
    "Aprovado"
  end
  
  def recuperacao
    "Em recuperação"
  end 
  
  def reprovado
    "Reprovado"
  end  

end