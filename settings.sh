# !!! Be careful, this script will be executed by the root user. !!!

# Please have a look at this Wiki page for this file:
# NOTE: It's in german.
# https://github.com/sunweaver/nextcloud-high-performance-backend-setup/wiki/02-Setup-Script

# Dry run (Don't actually alter anything on the system. (except in $TMP_DIR_PATH))
# Leave empty, if you wish that the user will be asked about this.
DRY_RUN=false

# Should the script try to install the high-performance-backend server
# without any user input?
UNATTENDED_INSTALL=false

# Set to true to add new Nextcloud domains to an existing HPB installation.
# When enabled, existing secrets are preserved and only new domains get new secrets.
ADD_DOMAINS_MODE=false

# When in ADD_DOMAINS_MODE, specify which services should get the new domains:
# Set to true to add new domains to Signaling / Nextcloud Talk
ADD_DOMAINS_TO_SIGNALING=false
# Set to true to add new domains to Collabora / Nextcloud Office
ADD_DOMAINS_TO_COLLABORA=false

# General settings
# Leave empty, if you wish that the user will be asked about this.
# You can also specify multiple Nextcloud servers by separating them with commas.
#NEXTCLOUD_SERVER_FQDNS="nextcloud.example.org"

# Resource tiers for Nextcloud domains (used for Signaling/Talk limits)
# Comma-separated list matching NEXTCLOUD_SERVER_FQDNS order
# Available tiers: budget, standard, premium, unlimited
# - budget:    SD 480p,  10 sessions,  500 Kbps video,  750 Kbps screen share
# - standard:  HD 720p,  20 sessions, 1000 Kbps video, 1500 Kbps screen share
# - premium:   FHD 1080p, 40 sessions, 2000 Kbps video, 2500 Kbps screen share
# - unlimited: No limits on quality or concurrent sessions
# Example: NEXTCLOUD_SERVER_TIERS="budget,standard,premium"
# Leave empty to be asked interactively for each domain
#NEXTCLOUD_SERVER_TIERS=""

# Leave empty, if you wish that the user will be asked about this.
#SERVER_FQDN="nc-workhorse.example.org"

# Only modify if you know what you're doing.
#SSL_CERT_PATH_RSA=""
#SSL_CERT_KEY_PATH_RSA=""
#SSL_CHAIN_PATH_RSA=""
#SSL_CERT_PATH_ECDSA=""
#SSL_CERT_KEY_PATH_ECDSA=""
#SSL_CHAIN_PATH_ECDSA=""
#DHPARAM_PATH=""

# Collabora (Gets asked anyway, except unattended install.)
SHOULD_INSTALL_COLLABORA=true

# Signaling (Gets asked anyway, except unattended install.)
SHOULD_INSTALL_SIGNALING=true

SHOULD_INSTALL_UFW=true
SHOULD_INSTALL_NGINX=true
SHOULD_INSTALL_CERTBOT=true
SHOULD_INSTALL_UNATTENDEDUPGRADES=true
SHOULD_INSTALL_MSMTP=true

# Logfile get created if UNATTENDED_INSTALL is true.
# Leave empty, if you wish that the user will be asked about this.
LOGFILE_PATH="$(pwd)/setup-nextcloud-hpb-$(date +%Y-%m-%dT%H:%M:%SZ).log"

# Configuration gets copied and prepared here before copying them into place.
# This prevents config being broken if something goes wrong.
# Leave empty, if you wish that the user will be asked about this.
TMP_DIR_PATH="./tmp"

# Secrets, passwords and configuration gets saved in this file.
# Leave empty, if you wish that the user will be asked about this.
SECRETS_FILE_PATH=""

# This email address gets passed on to the services the user whiches to install.
# The services (like Certbot) can send email notification for important info.
# Leave empty, if you wish that the user will be asked about this.
EMAIL_USER_ADDRESS=""
# The password for the address above. Used to authenticate to the SMTP server.
EMAIL_USER_PASSWORD=""
# The username to authencicate with. Most likely it will be just the full email
# address. But there are email hoster which require a different username.
EMAIL_USER_USERNAME=""
# The SMTP server to send the emails to.
EMAIL_SERVER_HOST=""
# The port on which we will try to connect to the SMTP server.
#EMAIL_SERVER_PORT="25"
#EMAIL_SERVER_PORT="587"

# Should the ssh service be disabled?
#DISABLE_SSH_SERVER=false

# Should nextcloud-spreed-signaling, nats-server and coturn be built and
# installed from sources?
SIGNALING_BUILD_FROM_SOURCES=""

# DNS Resolver. Here a custom DNS server can be specified,
# otherwise the one configured in resolv.conf is used
DNS_RESOLVER=""
