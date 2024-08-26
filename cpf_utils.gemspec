# frozen_string_literal: true

require_relative "lib/cpf_utils/version"

Gem::Specification.new do |spec|
  spec.name = "cpf_utils"
  spec.version = CpfUtils::VERSION
  spec.authors = ["AngeloSouza1"]
  spec.email = ["angeloafdesouza@gmail.com"]

  spec.summary = "Uma gem de utilidade simples para lidar com a validação e formatação de CPF."
  spec.description = "Esta gem fornece utilitários para validar e formatar CPFs brasileiros."
  
  # Remova ou comente essa linha por enquanto
  # spec.homepage = "https://github.com/seu_usuario/cpf_utils"  # Você pode definir para uma URL válida mais tarde
  spec.required_ruby_version = ">= 3.0.0"

  # Remova ou comente essas linhas por enquanto
  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  # Remova ou comente essas linhas por enquanto
  # spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/AngeloSouza1/cpf_utils"
    spec.metadata["changelog_uri"] = "https://github.com/AngeloSouza1/cpf_utils/blob/main/CHANGELOG.md"

  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
