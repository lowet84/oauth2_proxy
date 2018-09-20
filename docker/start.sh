/bin/oauth2_proxy   --cookie-secure=false  --upstream="http://$SERVICE"  --http-address="0.0.0.0:4180" --provider=gitlab --login-url="https://gitlab.$OAUTH2_PROXY_COOKIE_DOMAIN/oauth/authorize" --redeem-url="http://gitlab/oauth/token" --validate-url="http://gitlab/api/v4/user" --redirect-url="https://portal.$OAUTH2_PROXY_COOKIE_DOMAIN/oauth2/callback" --gitlab-group=$GROUP  --email-domain=* --scope="api read_user"
