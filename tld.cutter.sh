#!/bin/bash
domain=$1
result="urls"
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Check if arguments are provided
if [ -z "$domain" ]; then
    echo -e "${RED}Usage: $0 <domain>${NC}"
    exit 1
fi

echo -e "${GREEN}Domain: $domain${NC}"
sleep 2
echo -e "${GREEN}Result file: $result${NC}"

# Extract URLs from the input domain file and save them in the result file
grep -Eo "https?://[a-zA-Z0-9./?=_-]*" "$domain" > "$result"
echo -e "${GREEN}URLs extracted to $result${NC}"
sleep 2

# Extract TLDs matching the domain and save them to a new file
grep -oP "(?<=//)[^/]*\.[a-zA-Z]{2,}" "$result" > "${domain}_scope.txt"
echo -e "${GREEN}TLDs extracted to ${domain}_scope.txt${NC}"
sleep 2

echo -e "${RED}Removing ${result}${NC}"
sleep 2
sudo rm ${result}
echo -e "${RED}${result} removed${NC}"
