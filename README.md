# serverless-demo

Current provider is `AWS` and some utilities were created to make the management easier.

## Setup

1. Install dependencies: `npm i`
2. Create a `.env` file and populate AWS credentials. Use `.env.sample` as reference.

## Deployment

Use `deploy:dev:all` when modifying the `serverless.yml` or the first time deployment.

Use `deploy:dev:function`  when updating code.

## Local Invocation

Function can be tested locally by running `invoke:local`

## Remote Invocation

Test deployed function by running `invoke:dev`

## AWS IAM permissions
 
In order to perform deployments a AWS account with programmatic access (Access key and Secret key) is required. A user can make deployments if they have the following policies attached.

Or add Admin access. (But probably shouldn't)
 
#### Managed  
 
1. AWSLambdaFullAccess
2. IAMFullAccess
3. AmazonS3FullAccess
4. AmazonAPIGatewayAdministrator
 
#### Inline policies
 
In addition to managed, there are some inline policies attached to a user to allow cloudformation usage.
 
 ```
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1539734624000",
      "Effect": "Allow",
      "Action": [
        "cloudformation:CreateStack",
        "cloudformation:CreateChangeSet",
        "cloudformation:ListStacks",
        "cloudformation:UpdateStack",
        "cloudformation:DescribeStacks",
        "cloudformation:DescribeStackResource",
        "cloudformation:DescribeStackEvents",
        "cloudformation:ValidateTemplate",
        "cloudformation:DescribeChangeSet",
        "cloudformation:ExecuteChangeSet",
        "cloudformation:DeleteStack"
      ],
      "Resource": [
        "*"
      ]
    }
  ]
}
```

### Deletion

`remove:dev:all` - Tear down the whole infrastructure

### References
- https://serverless.com/
