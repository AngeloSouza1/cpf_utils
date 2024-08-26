# CpfUtils

A gem CpfUtils é uma utilidade simples e eficaz para lidar com operações comuns envolvendo CPFs brasileiros. Ela oferece funcionalidades para validação e formatação de CPFs, permitindo que desenvolvedores garantam a integridade e a conformidade dos dados de CPF em suas aplicações. A gem inclui métodos para formatar CPFs de maneira padronizada e para validar se um CPF é legítimo, verificando tanto a estrutura quanto os dígitos verificadores. Ideal para projetos que exigem manipulação precisa de CPFs, CpfUtils ajuda a simplificar essas tarefas essenciais no desenvolvimento de aplicações no Brasil.

## Instalação

Adicionar em seu Gemfile

```rubby
gem 'cpf_utils"
```

Para instalar rode o comando abaixo

```shell
bundle install
```

Ou instalar diretamente sem um Gemfile:
```shell
gem install cpf_utils
```

Utilizar a formatação de CPF
```rubby
cpf = "11144477735"
formatado = CpfUtils::formatar(cpf)
# retorno de "111.444.777-35"
```

Utilizar a validação de CPF
```rubby
cpf = "11144477735"
formatado = CpfUtils::cpf_vlido?(cpf)
# retorno de true
```