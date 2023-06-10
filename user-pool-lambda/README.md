
# Run application
1. sam build
2. sam deploy
3. make a get request
  {"message":"Unauthorized"}
4. Create a cognito user
5. Copy the CognitoAuthCommand command from the stack output
6. Replace USERNAME (your email address) and PASSWORD with values when you created your account
  ***
  aws cognito-idp initiate-auth --auth-flow USER_PASSWORD_AUTH --client-id 1l708cb5j1eiv98lvnonh8i790 --auth-parameters USERNAME=ngwesseaws@gmail.com,PASSWORD=cydKi3-catroj-vujnif
  ***
7. export ID_TOKEN="<PASTE TOKEN HERE>"
8. curl <API_Endpoint>/users -H "Authorization:$ID_TOKEN"
  ***
  curl https://s6jgf8016g.execute-api.eu-west-2.amazonaws.com/Prod/users -H "Authorization:$ID_TOKEN"
  ***
  “User is not authorized to access this resource"
  Why?!? That's our fault. We told you to ask for a list of users, but you do not have permission to access other 
  peoples data. Regular users can only access their own data. You are currently just a regular user.
  To get your own info, you need to know your principal ID. The principal ID is created by Cognito and is not your userid.
  To find get your principal ID, you need to decode and extract it from the JWT token:
9. Navigate to https://jwt.io/ 
10. Paste in the IdToken value and choose to decode it
11. Take note of the sub field in the payload data
  sub - is the "subject claim" which identifies the principal that is the subject of the JWT.
  SPOILER ALERT: If request your data based on your principal ID now, there won't be any! The Users table has no items 
  for that principal ID at this time. Go ahead and try getting data for your principal ID:
12. curl <API Endpoint>/users/<sub-value> -H "Authorization:$ID_TOKEN"
   ***
  curl https://s6jgf8016g.execute-api.eu-west-2.amazonaws.com/Prod/users/67d68334-81ee-4507-9008-fc66138d62cc -H "Authorization:$ID_TOKEN"
  ***
13. curl --location --request PUT '<YOUR-API-ENDPOINT-URL>/users/<SUB-VALUE>' \
     --data-raw '{"name": "My name is <TYPE YOUR NAME HERE>"}' \
     --header "Authorization: $ID_TOKEN" \  
     --header "Content-Type: application/json" \ 
14. curl <API Endpoint>/users -H "Authorization:<IdToken value>" (If u have admin access)
   ***
  curl https://s6jgf8016g.execute-api.eu-west-2.amazonaws.com/Prod/users -H "Authorization:$ID_TOKEN"
  ***


# ngwesseaws@gmail.com
# Elvis
# cydKi3-catroj-vujnif