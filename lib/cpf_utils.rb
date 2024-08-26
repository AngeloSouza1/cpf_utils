# frozen_string_literal: true

require_relative "cpf_utils/version"

module CpfUtils
  class Error < StandardError; end
  
  def self.formatar(cpf)
    cpf = cpf.gsub(/\D/, '') # Remove todos os caracteres não numéricos
    cpf.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')
  end

  
  
  def self.cpf_valido?(cpf)
    cpf = cpf.gsub(/\D/, '') # Remove todos os caracteres não numéricos
  
    # Verifica se o CPF tem 11 dígitos
    return false unless cpf.length == 11
  
    # Verifica se todos os dígitos são iguais (ex.: 111.111.111-11), o que é inválido
    return false if cpf.chars.uniq.length == 1
  
    # Cálculo do primeiro dígito verificador
    soma = 0
    (0..8).each { |i| soma += cpf[i].to_i * (10 - i) }
    primeiro_digito = 11 - (soma % 11)
    primeiro_digito = 0 if primeiro_digito >= 10
  
    return false unless primeiro_digito == cpf[9].to_i
  
    # Cálculo do segundo dígito verificador
    soma = 0
    (0..9).each { |i| soma += cpf[i].to_i * (11 - i) }
    segundo_digito = 11 - (soma % 11)
    segundo_digito = 0 if segundo_digito >= 10
  
    segundo_digito == cpf[10].to_i
  end
  
end
