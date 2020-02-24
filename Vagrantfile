Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.provision "shell", inline: <<~EOF
    # Install Katacoda prerequisites.
    curl --silent --show-error --location https://deb.nodesource.com/gpgkey/nodesource.gpg.key \
        | sudo apt-key add -
    echo "deb https://deb.nodesource.com/node_13.x $(lsb_release -s -c) main" \
        | sudo tee /etc/apt/sources.list.d/nodesource.list
    sudo apt-get update
    sudo apt-get install --yes nodejs && \
        npm install --global katacoda-cli

    # Download the Katacoda scenario sources.
    [ -d scenario-examples ] || \
	    git clone \
            https://github.com/katacoda/scenario-examples.git \
                scenario-examples

    KATACODA_UPSTREAM_NWO=#{ENV['KATACODA_UPSTREAM_NWO']}
    if [ -n "$KATACODA_UPSTREAM_NWO" -a ! -d "$KATACODA_UPSTREAM_NWO" ]; then
        git clone \
            https://github.com/${KATACODA_UPSTREAM_NWO}.git \
                ${KATACODA_UPSTREAM_NWO#*/}
    fi
  EOF

  config.vm.post_up_message = <<~EOF
    Katacoda development environment is ready. Use these commands to
    access the virtual machine and modify the scenario:

        vagrant ssh # Log in to the Vagrant-managed Virtual Machine.
        cd /vagrant # Go to the Vagrant sync'ed folder.
        katacoda scenario:create # Generate a new scenario scaffold.

    If this is your first time developing Katacoda scenarios, be sure
    to spend five minutes going through some Katacoda tutorials at:

        https://katacoda.com/scenario-examples/scenarios/create-scenario-101

    Or use the `katacoda scenarios:demo` command to see an example.
  EOF
end
