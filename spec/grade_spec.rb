require_relative "../lib/grade.rb"

describe Grade do
    it "create a grade" do
        grade = Grade.new(6, 6, 6, 0)
        expect(grade.bim1).to eq(6)
    end    
    
    it "calculate media" do
        expect(Grade.new(7, 7, 5, 5).media).to be(6)
    end  

    it "need bim4 calculate" do
        expect(Grade.new(7, 6, 5, 0).need_bim4).to be(6)
    end  

    it "need bim4 aprovado" do
        expect(Grade.new(10, 10, 10, 0).need_bim4).to be("Aprovado")
    end  

    it "need bim4 recuperacao" do
        expect(Grade.new(1, 1, 1, 0).need_bim4).to be("Em recuperação")
    end

    it "calculate media" do
        expect(Grade.new(6, 6, 6, 6).media).to be(6)
    end  

    it "recuperacao" do
        expect(Grade.new(1, 1, 1, 0).recuperacao).to be("Em recuperação")
    end  

    it "aprovado" do
        expect(Grade.new(10, 10, 10, 0).aprovado).to be("Aprovado")
    end  

    it "reprovado" do
        expect(Grade.new(1, 1, 1, 1).reprovado).to be("Reprovado")
    end      
end