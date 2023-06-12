
# Deploy stack
- cd user-pool
- sam build
- sam deploy
- aws s3 cp ./html s3://identity-pool-s3-bucket --recursive
- aws cognito-idp initiate-auth --auth-flow USER_PASSWORD_AUTH --client-id lb3ujb4snfs4ci3kurbag73jf --auth-parameters USERNAME=ngwesseaws@gmail.com,PASSWORD=cydKi3-catroj-vujnif 
- aws cognito-idp list-users --user-pool-id eu-west-2_sa3hImjkF --filter "name='Elvis'"
- aws cognito-identity get-id --identity-pool-id "eu-west-2:3b022f92-5bc7-43a7-8c06-c2158dfc1069" --logins cognito-idp.example_region.amazonaws.com/example_cognito_user_pool_id=id_token




Q
# Delete files
aws s3 rm s3://cognito-app-s3-bucket  --recursive
aws s3 ls s3://cognito-app-s3-bucket



https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox/FMfcgzGsnBdHNsDmdgSKBgXmFmrxLcpk


