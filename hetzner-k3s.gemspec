require_relative 'lib/hetzner/k3s/version'

Gem::Specification.new do |spec|
  spec.name          = "hetzner-k3s"
  spec.version       = Hetzner::K3s::VERSION
  spec.authors       = ["Vito Botta"]
  spec.email         = ["vito@botta.me"]

  spec.summary       = %q{A CLI to create a Kubernetes cluster in Hetzner Cloud very quickly using k3s.}
  spec.description   = %q{A CLI to create a Kubernetes cluster in Hetzner Cloud very quickly using k3s.}
  spec.homepage      = "https://github.com/vitobotta/hetzner-k3s"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/vitobotta/hetzner-k3s"
  spec.metadata["changelog_uri"] = "https://github.com/vitobotta/hetzner-k3s"

  spec.add_dependency "thor"
  spec.add_dependency "http"
  spec.add_dependency "net-ssh"
  spec.add_dependency "k8s-ruby"
  spec.add_dependency "sshkey"
  spec.add_dependency "ed25519"
  spec.add_dependency "bcrypt_pbkdf"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
