# CpfUtils

<div align="justify">
A gem CpfUtils é uma utilidade simples e eficaz para lidar com operações comuns envolvendo CPFs brasileiros. Ela oferece funcionalidades para validação e formatação de CPFs, permitindo que desenvolvedores garantam a integridade e a conformidade dos dados de CPF em suas aplicações. A gem inclui métodos para formatar CPFs de maneira padronizada e para validar se um CPF é legítimo, verificando tanto a estrutura quanto os dígitos verificadores. Ideal para projetos que exigem manipulação precisa de CPFs, CpfUtils ajuda a simplificar essas tarefas essenciais no desenvolvimento de aplicações no Brasil.
</div>

## 🚀 Instalação

🔹 Para instalar a gem, adicione a seguinte linha ao seu arquivo Gemfile:

```rubby
gem 'cpf_utils"
```

🔹 Em seguida, execute o comando:
```shell
bundle install
```

🔹 Você também pode instalar a gem diretamente, sem um Gemfile:
```shell
gem install cpf_utils
```

### Uso

🔹 Utilizar a formatação de CPF
```ruby
cpf = "11144477735"
formatado = CpfUtils::formatar(cpf)
# retorno de "111.444.777-35"
```

🔹 Utilizar a validação de CPF
```ruby
cpf = "11144477735"
formatado = CpfUtils::cpf_vlido?(cpf)
# retorno de true
```

## 💡 Recursos
 
 🔹 Validação de CPF: Verifica se um CPF é legítimo, checando tanto a estrutura quanto os dígitos verificadores.
 
 🔹 Formatação de CPF: Formata CPFs de maneira padronizada, adicionando pontos e traços.
 
 🔹 Fácil Integração: Projetada para ser facilmente integrada em projetos Ruby.

## 👁️‍🗨️ Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests no repositório do GitHub.

