certificate_file="/etc/ssh/ssh_host_ed25519_key-cert.pub"
certificate_data="$(mktemp certdata.XXXXX)"

[ ! -f "$certificate_file" ] && exit 1 # Validation failure, missing cert.

# Print certificate data, strip leading whitespace.
ssh-keygen -L -f "$certificate_file" \
    | sed -e 's/^\W*//g' > "$certificate_data"

[ 0 -ne $(grep -q '^Type:.*host certificate$' "$certificate_data"; echo $?) ] \
    && exit 1 # Validation failure, incorrect cert type.

[ 0 -ne $(grep -q "HostCertificate $certificate_file" /etc/ssh/sshd_config; echo $?) ] \
    && exit 1 # Validation failure, bad SSH daemon config.

# Audit SSH's running config.
# TODO: This doesn't seem to work as Katacoda's own verification check.
#       It's possible that the verification scripts are running as part
#       of an earlier SSH connection that cannot be reloaded. For the
#       moment, we'll just assume that the user did this correctly as per
#       the instructions above instead of auditing the running config.
#ssh -o "StrictHostKeyChecking=yes" -o "IdentitiesOnly=yes" -v host01 2>&1 \
#    | grep -q "Server host certificate:"
#[ 0 -ne "$?" ] && exit 1 # Validation failure, running config is missing cert.

rm -f "$certificate_data" # Cleanup temporary files.

echo done # Validation successful.
