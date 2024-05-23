brew install kubernetes
brew install helm

# installing & configuring minikube (mac M2)
# https://devopscube.com/minikube-mac/
############
brew install qemu

brew install socket_vmnet
brew tap homebrew/services
HOMEBREW=$(which brew) && sudo ${HOMEBREW} services start socket_vmnet

brew install minikube

minikube start --driver qemu --network socket_vmnet
############