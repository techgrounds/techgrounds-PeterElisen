# NTW-02 Network Devices

Introductie:
Er bestaat geen netwerk zonder netwerkapparatuur als je meer dan twee computers aan elkaar wilt schakelen. 

Een korte, en zeker niet complete, lijst van netwerkapparatuur volgt:
router
switch
repeaters
access point 

Elk apparaat in de lijst draagt eraan bij dat je data bezorgd wordt bij de juiste computer. En vaak zijn ze slim genoeg om samen te onderhandelen zodat jij, als gebruiker, geen zorgen hoeft te maken over de instellingen. Je netwerkapparaten blijven het doen zelfs als je computers toevoegt of verwijdert van je netwerk. Protocollen spelen hierin een belangrijke rol.

Implementaties van netwerkapparatuur kunnen ook verschillen: er bestaan meerdere vormen van een switch die werken op verschillende lagen van het OSI-model.

AWS en Azure bieden diensten aan die gelijk zijn aan wat netwerkapparatuur doen. En ieder netwerkconcept (routing, switching, gateways) heeft één of meerdere cloud equivalenten.

Bestudeer:
Netwerkapparaten
Het OSI model in relatie tot deze netwerkapparaten

Benodigdheden:
Je eigen netwerk
Admin toegangsgegevens voor je router
NOOT: Als je geen admin-toegang hebt, bijvoorbeeld omdat je in een appartementencomplex met gedeelde wifi woont, neem dan via Zoom het scherm over van een teamgenoot, en doe zo de opdracht.

Opdracht:
Benoem en beschrijf de functies van veel voorkomend netwerkapparatuur
De meeste routers hebben een overzicht van alle verbonden apparaten, vind deze lijst. Welke andere informatie heeft de router over aangesloten apparatuur?
Waar staat je DHCP server op jouw netwerk? Wat zijn de configuratie

  

## Key-terms 

how can i see which devices are connected to my router :

To see which devices are connected to your router, you can use one of the following methods:

1. Router Admin Panel: Most routers provide a web-based administration panel that allows you to access and manage various settings. To access the admin panel, open a web browser on a device connected to your router and enter the router's IP address in the address bar. The IP address is typically printed on a label on the router itself or mentioned in the router's documentation. Once you access the admin panel, look for a section called "Connected Devices," "Device List," or similar. It will display a list of devices currently connected to your router, including their IP addresses, MAC addresses, and device names.

2. Mobile Apps: Some router manufacturers offer mobile apps that allow you to manage and monitor your router from your smartphone. These apps often include features to view connected devices. Check if your router manufacturer provides such an app and install it on your smartphone. Launch the app, log in with your router's credentials, and navigate to the appropriate section to view the list of connected devices.

3. Network Scanner Software: You can use network scanning software installed on your computer to scan your local network and identify connected devices. There are various network scanner tools available, such as Angry IP Scanner, Advanced IP Scanner, or Fing. Install one of these tools on your computer, run a network scan, and it will provide you with a list of devices connected to your router, along with their IP and MAC addresses.

4. Command Prompt or Terminal: If you are comfortable with using the command line, you can use the Command Prompt (Windows) or Terminal (Mac and Linux) to view connected devices. Open the Command Prompt or Terminal and type the command "ipconfig" (Windows) or "ifconfig" (Mac and Linux) to find the default gateway IP address. It usually appears as the "Default Gateway" under the network adapter information. Once you have the default gateway IP, use the "arp -a" command (Windows) or "arp -n" command (Mac and Linux) to display the ARP (Address Resolution Protocol) table, which contains a list of devices connected to your router.

Note: The methods mentioned above should provide you with a list of devices connected to your router at the time of checking. Keep in mind that the list may not be comprehensive if some devices are temporarily disconnected or have their network visibility disabled.

  

## Opdracht 1

Opdracht:
Benoem en beschrijf de functies van veel voorkomend netwerkapparatuur
De meeste routers hebben een overzicht van alle verbonden apparaten, vind deze lijst. Welke andere informatie heeft de router over aangesloten apparatuur?
Waar staat je DHCP server op jouw netwerk? Wat zijn de configuratie


peterelisen@penguin:/sbin$ sudo ifconfig
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 100.115.92.196  netmask 255.255.255.240  broadcast 100.115.92.207
        inet6 2a02:a210:bc6:4000:216:3eff:fe34:2f15  prefixlen 64  scopeid 0x0<global>
        inet6 fe80::216:3eff:fe34:2f15  prefixlen 64  scopeid 0x20<link>
        ether 00:16:3e:34:2f:15  txqueuelen 1000  (Ethernet)
        RX packets 75224  bytes 58035593 (55.3 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 21420  bytes 7630479 (7.2 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 250  bytes 690816 (674.6 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 250  bytes 690816 (674.6 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0


peterelisen@penguin:/sbin$ arp -n
-bash: arp: command not found
peterelisen@penguin:/sbin$ sudo arp -n
Address                  HWtype  HWaddress           Flags Mask            Iface
100.115.92.193           ether   00:16:3e:81:1c:31   C                     eth0
peterelisen@penguin:/sbin$ sudo arp -a
_gateway.lxd (100.115.92.193) at 00:16:3e:81:1c:31 [ether] on eth0
peterelisen@penguin:/sbin$ ip addr show
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
5: eth0@if6: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether 00:16:3e:34:2f:15 brd ff:ff:ff:ff:ff:ff link-netnsid 0
    inet 100.115.92.196/28 brd 100.115.92.207 scope global eth0
       valid_lft forever preferred_lft forever
    inet6 2a02:a210:bc6:4000:216:3eff:fe34:2f15/64 scope global dynamic mngtmpaddr 
       valid_lft 604800sec preferred_lft 604800sec
    inet6 fe80::216:3eff:fe34:2f15/64 scope link 
       valid_lft forever preferred_lft forever
peterelisen@penguin:/sbin$ 


![Screenshot](/00_includes/devices.png)










### Gebruikte bronnen 

[Plaats hier de bronnen die je hebt gebruikt.] 

  

### Ervaren problemen 

[Geef een korte beschrijving van de problemen waar je tegenaan bent gelopen met je gevonden oplossing.] 

  

### Resultaat 

[Omschrijf hoe je weet dat je opdracht gelukt is (gebruik screenshots waar nodig).] 
