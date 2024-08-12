# URL and TLD Extraction Script

This script is designed to extract URLs from a given domain file and then extract Top-Level Domains (TLDs) from those URLs. It includes color-coded output to differentiate between standard messages and warnings.

## Features

- **Extract URLs**: The script reads a file containing domains and extracts all URLs found within it.
- **Extract TLDs**: It then extracts TLDs from the URLs and saves them in a separate file.
- **Auto-cleanup**: The intermediate result file containing URLs is automatically removed after TLD extraction.

## Usage
- Change permission of script `chmod +x tld_cutter.sh`
- Copy tld_cutter.sh to bin folder `cp tld_cutter /usr/local/bin`

```bash
./tld_cutter.sh <domain_file.txt>
```
## Example
- get all data from ffuf with tlds `ffuf -w tls.txt -u https://domain.com | tee -a output.txt`
- `tld_cutter output.txt`
