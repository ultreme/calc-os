# coding: utf-8
Vagrant.configure(2) do |config|
    config.vm.guest = :windows
    # Configuration de winrm, qui rend la VM scriptable depuis
    # l'extérieur.
    config.vm.communicator = "winrm"
    # Identifiants pour que Vagrant puisse commander la VM
    config.winrm.username = "IEUser"
    config.winrm.password = "Passw0rd!"
    # Ouverture du port réseau de winrm
    config.vm.network :forwarded_port, guest: 5985, host: 59851,
        id: "winrm", auto_correct:true
    # Ouverture du port du remote desktop protocol
    config.vm.network :forwarded_port, guest: 3389, host: 33891,
        id: "rdp", auto_correct:true
    # Chemin de la box qui sera importée au premier démarrage
    config.vm.box_url = "file://vagrant-win7-ie11"
    # Timeout rapide (30 s) au premier démarrage
    config.vm.boot_timeout = 30
    # Nom de la box
    config.vm.box = "win7-ie11"

    # Configuration spécifique à la techno de virtualisation
    # utilisée
    config.vm.provider "virtualbox" do |vb|
        # Afficher l'interface graphique Windows
        vb.gui = true
        # Mémoire vive
        vb.memory = "1024"
        # Presse-papiers partagé
        vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    end
end
