# Hardware choices

* 1x Rock64 4Go RAM for the master
* 3x Raspberry PI 3 for workers
* 3x https://www.amazon.com/gp/product/B017Z32E6M/ref=oh_aui_detailpage_o08_s00?ie=UTF8&psc=1[PiBlox Cases]
* https://www.amazon.com/gp/product/B0056ZSF74/ref=oh_aui_detailpage_o00_s00?ie=UTF8&psc=1[Ethernet cables]
* https://www.amazon.com/gp/product/B01MRH8P7E/ref=oh_aui_detailpage_o00_s00?ie=UTF8&psc=1[Micro USB cables]
* https://www.amazon.com/gp/product/B00JP47EFG/ref=oh_aui_detailpage_o00_s01?ie=UTF8&psc=1[ORICO USB2.0 HUB]
* 4x 32GB memory cards

# Kubernetes Stack

The Kubernetes cluster stack:

* Kubernetes 1.13
* Weave Net as the overlay network
* MetalLB LoadBalancer
* Traefik as the ingress controller
* CoreDNS as the KubeDNS server
* CoreDNS as the DNS server to resolve my internal services

# Network

* Network: **192.168.1.0/24**
* Gateway: **192.168.1.1**
* DNS: **192.168.1.1**

Kubernetes Nodes:

* Master1: **192.168.1.36**
* Node1: **192.168.1.20**
* Node2: **192.168.1.26**
* Node3: **192.168.1.29**

MetalLB CIDR:

* Cidr **192.168.1.224/27**
* Min: **192.168.1.225**
* Max: **192.168.1.254**

Traefik

* Internal Ingress IP : **192.168.1.20**
