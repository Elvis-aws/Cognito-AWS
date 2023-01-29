

**********
User pools
**********
- A user pool is a user directory in Amazon Cognito
- With a user pool, your users can sign in to your web or mobile app through Amazon Cognito, or federate
  through a third-party identity provider (IdP)
- Whether your users sign in directly or through a third party, all members of the user pool have a
  directory profile that you can access through an SDK
******************
User pools provide
******************
    - Sign-up and sign-in services
    - A built-in, customizable web UI to sign in users
    - Social sign-in with Facebook, Google, Login with Amazon, and Sign in with Apple, and through
      SAML and OIDC identity providers from your user pool
    - User directory management and user profiles
    - Security features such as multi-factor authentication (MFA), checks for compromised credentials,
    - Account takeover protection, and phone and email verification
    - Customized workflows and user migration through AWS Lambda triggers
    - Integrates with API Gateway and ALB
       - Authenticate users using your ALB before sending them to the backend