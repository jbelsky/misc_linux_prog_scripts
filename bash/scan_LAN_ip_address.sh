printf "%s\n%s\n%s\n\n" "#########" "Ping the local network with a 56-byte packetsize 3 times using local IP address" "#########"
ping -v 192.168.1.124 56 3

printf "%s\n%s\n%s\n\n" "#########" "Query the ping destinations using 'arp -a'" "#########"
arp -a