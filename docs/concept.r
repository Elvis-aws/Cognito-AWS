

*******
Cognito
*******
    - Amazon Cognito provides authentication, authorization, and user management for your web and mobile apps
    - Your users can sign in directly with a user name and password, or through a third party such as Facebook,
      Amazon, Google or Apple
    - The two main components of Amazon Cognito are user pools and identity pools
    - User pools are user directories that provide sign-up and sign-in options for your app users
    - Identity pools enable you to grant your users access to other AWS services
    - You can use identity pools and user pools separately or together
    ***********************************************************
    An Amazon Cognito user pool and identity pool used together
    ***********************************************************
        - In the first step your app user signs in through a user pool and receives user pool tokens after a
          successful authentication
        - Next, your app exchanges the user pool tokens for AWS credentials through an identity pool
        - Finally, your app user can then use those AWS credentials to access other AWS services such as
          Amazon S3 or DynamoDB