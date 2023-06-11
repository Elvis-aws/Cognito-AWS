
# Deploy stack
- cd user-pool
- sam build
- sam deploy
- aws s3 cp ./html s3://cognito-app-s3-bucket --recursive
- aws cognito-idp list-users --user-pool-id ap-northeast-1_Ajzqt7Te7 --filter "name='Elvis'"

# Delete files
aws s3 rm s3://cognito-app-s3-bucket  --recursive
aws s3 ls s3://cognito-app-s3-bucket



https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox/FMfcgzGsnBdHNsDmdgSKBgXmFmrxLcpk
