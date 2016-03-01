$bits = 4096;
$pass = "file:inputs/passphrase.txt"
$enc = "-aes128"
$subj = "/C=US/ST=California/L=LosAngeles/CN=lvh.me"
$out = "./output"

$client_ca_root_priv = "#{$out}/client_ca_root_priv.key"
$client_ca_root_publ = "#{$out}/client_ca_root_publ.crt"
$client_ca_root_priv_nopass = "#{$client_ca_root_priv}.nopass"

$server_ca_root_priv = "#{$out}/server_ca_root_priv.key"
$server_ca_root_csr  = "#{$out}/server_ca_root_priv.csr"
$server_ca_root_publ = "#{$out}/server_ca_root_publ.crt"
$server_ca_root_priv_nopass = "#{$server_ca_root_priv}.nopass"

$client_priv = "#{$out}/client_priv.key"
$client_priv_csr  = "#{$out}/client_priv.csr"
$client_publ_crt = "#{$out}/client_publ.crt"
$client_priv_nopass = "#{$client_priv}.nopass"
$client_publ_priv_pem = "#{$out}/client_publ_priv.pem"
