if [ ! -z "$DEBUG" ]
then
  echo "server domain: $SERVER_DOMAIN"
  echo "cookie secret: $COOKIE_SECRET"
  echo "client id: $CLIENT_ID"
  echo "client secret: $CLIENT_SECRET"
fi

/bin/oauth2_proxy   --cookie-secure=false  --upstream="http://$SERVICE"  --http-address="0.0.0.0:4180" --provider=gitlab --login-url="https://gitlab.$SERVER_DOMAIN/oauth/authorize" --redeem-url="http://gitlab/oauth/token" --validate-url="http://gitlab/api/v4/user" --redirect-url="https://portal.$SERVER_DOMAIN/oauth2/callback" --gitlab-group=$GROUP  --email-domain=* --scope="api read_user" --client-id "$CLIENT_ID" --cookie-secret "$COOKIE_SECRET" --client-secret "$CLIENT_SECRET" --cookie-domain "$SERVER_DOMAIN"
