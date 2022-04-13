require "grade"

describe Grade do

  context "Create Grade and calculate" do
    it ":initialize" do
      grade = Grade.new(6, 6, 6, 0)
      expect(grade.bim1).to eq(6)
    end    
    
    it ":media" do
      expect(Grade.new(7, 7, 5, 5).media).to eq(6)
    end  

    it ":media rec" do
      expect{Grade.new(1, 1, 1, 1).media}.to raise_error("Reprovado")
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

    it ":rec" do
      expect(Grade.new(5, 5, 5, 5).rec).to eq(5)
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
      expect{Grade.new(1, 1, 1, 1).reprovado}.to raise_error("Reprovado")
    end    
  end    
end