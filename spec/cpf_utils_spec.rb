require 'cpf_utils'

RSpec.describe CpfUtils do
  describe ".formatar" do
    it "formata corretamente o CPF" do
      cpf = CpfUtils.formatar('12345678909')
      expect(cpf).to eq('123.456.789-09')
    end

    it "remove caracteres não numéricos antes de formatar" do
      cpf = CpfUtils.formatar('123.456.789-09')
      expect(cpf).to eq('123.456.789-09')
    end

    it "não formata CPF inválido (menos de 11 dígitos)" do
      cpf = CpfUtils.formatar('123456789')
      expect(cpf).to eq('123456789')
    end
  end

  describe ".cpf_valido?" do
    it "retorna true para um CPF válido" do
      expect(CpfUtils.cpf_valido?('111.444.777-35')).to be true
    end

    it "retorna false para um CPF inválido" do
      expect(CpfUtils.cpf_valido?('123.456.789-00')).to be false
    end

    it "retorna false para um CPF com todos os dígitos iguais" do
      expect(CpfUtils.cpf_valido?('000.000.000-00')).to be false
    end

    it "retorna false para um CPF com menos de 11 dígitos" do
      expect(CpfUtils.cpf_valido?('123.456.789')).to be false
    end

    it "retorna true para um CPF válido sem formatação" do
      expect(CpfUtils.cpf_valido?('11144477735')).to be true
    end
  end

















  end
