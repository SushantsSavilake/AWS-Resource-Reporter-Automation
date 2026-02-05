# AWS-Resource-Reporter-Automation
A lightweight Bash utility that audits your AWS environment for active resources. This script is designed to run automatically via Linux Cron jobs and output the results to a structured log file for monitoring.


🚀 Features
S3 Audit: Lists all accessible S3 buckets.
EC2 Tracking: Retrieves a list of all active Instance IDs using jq filtering.
Lambda Overview: Lists all deployed Lambda functions.
IAM Security: Provides a list of all IAM users in the account.
Auto-Logging: Redirects both standard output and errors to a timestamped log file.
Debug Mode: Utilizes set -x for transparent execution tracking.


📋 Prerequisites
*AWS CLI: Installed and configured with "aws configure".
*jq: A lightweight command-line JSON processor.

- sudo apt update && sudo apt install jq -y

*Permissions: Ensure your AWS IAM user has at least "ReadOnlyAccess".
_____________________________________________________________________________________________________________


🛠️ Step-by-Step Setup
1. Clone and Prepare the Script
Copy the script to your machine and give it execution permissions:

bash -
chmod +x system-info.sh

2. Manual Execution
Run the script manually to ensure your AWS credentials and jq are working correctly:

bash- 
./system-info.sh
(The output will be saved to aws_resource_output.txt (or your specified log file)).

3. Automate with Cron
To run this report automatically every day at 8:00 PM (20:00), follow these steps:
  I) Open the crontab editor:

  bash- 
  crontab -e

  II) Add the following line at the bottom (replace ubuntu with your actual username):

  bash-
  0 20 * * * /bin/bash /home/ubuntu/system-info.sh >> /home/ubuntu/aws_cron_log.txt 2>&1

  III) Save and exit. The system will confirm: crontab: installing new crontab.

____________________________________________________________________________________________________________

📂 Understanding the Redirection
The script uses 2>&1 to ensure you don't miss anything:

* 1 is Standard Output (the list of resources).

* 2 is Standard Error (any AWS connection issues or debug logs).

* 2>&1 sends both streams to the same file so you can troubleshoot failures easily.
