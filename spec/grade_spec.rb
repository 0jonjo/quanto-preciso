require "grade"

describe Grade do

  context "Create Grade and calculate" do
    it ":initialize" do
      expect(Grade.new(6, 6, 6, 0).bim1).to eq(6)
    end    
    
    it ":media" do
      expect(Grade.new(6, 6, 6, 6).media).to eq(6)
    end  

    it ":need_bim4" do
      expect(Grade.new(7, 6, 5, 0).need_bim4).to eq(6)
    end  

    it ":need_bim4 aprovado" do
      expect(Grade.new(10, 10, 10, 0).need_bim4).to eq("Aprovado")
    end  

    it ":need_bim4 recuperacao" do
      expect(Grade.new(4, 4, 4, 0).need_bim4).to eq("Em recuperação")
    end 

    it ":need_rec" do
      expect(Grade.new(5, 5, 5, 5).need_rec).to eq(5)
    end
    
    it ":need_rec reprovado" do
      expect(Grade.new(1, 1, 1, 1).need_rec).to eq("Não está em recuperação.")
    end 

    it ":need_rec aprovado" do
      expect(Grade.new(6, 6, 6, 6).need_rec).to eq("Não está em recuperação.")
    end 

    it ":final" do
      expect(Grade.new(6, 6, 6, 6).final).to eq(6)
    end

    it ":final calc" do
      grade = Grade.new(5, 5, 5, 5)
      grade.set_rec(8.0)
      expect(grade.final).to eq(6.0)
    end
    
  end  

  context "Messages" do
    it ":recuperacao" do
      expect(Grade.new(5, 7, 5, 0).recuperacao).to eq("Em recuperação")
    end  

    it ":aprovado" do
      expect(Grade.new(10, 10, 10, 0).aprovado).to eq("Aprovado")
    end  

    it ":reprovado" do
      expect(Grade.new(1, 1, 1, 1).reprovado).to eq("Reprovado")
    end    

    it ":fora_recuperacao" do
      expect(Grade.new(3, 3, 3, 3).fora_recuperacao).to eq("Não está em recuperação.")
    end 

  end    
end