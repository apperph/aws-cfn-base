## AWS VPC - AWS CloudFormation
### Template details

The templates below are included in this repository and reference architecture:

| Template | Description |
| --- | --- | 
| [services/vpc-2azs.yaml](infrastructure/vpc.yaml) | This template deploys a VPC with a pair of public and private subnets spread across two Availability Zones. It deploys an [Internet gateway](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Internet_Gateway.html), with a default route on the public subnets. It deploys a pair of NAT gateways (one in each zone), and default routes for them in the private subnets. |
| [services/vpc-3azs.yaml](infrastructure/vpc.yaml) | This template deploys a VPC with a pair of public and private subnets spread across three Availability Zones. It deploys an [Internet gateway](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Internet_Gateway.html), with a default route on the public subnets. It deploys a pair of NAT gateways (one in each zone), and default routes for them in the private subnets. |
| [services/vpc-4azs.yaml](infrastructure/vpc.yaml) | This template deploys a VPC with a pair of public and private subnets spread across four Availability Zones. It deploys an [Internet gateway](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Internet_Gateway.html), with a default route on the public subnets. It deploys a pair of NAT gateways (one in each zone), and default routes for them in the private subnets. |

### Templates Parameters
| Access                   | Description                                                                                            |
| ------------------------ | ------------------------------------------------------------------------------------------------------ |
| EnvironmentName          | The name of environment for the current stack (e.g. dev, test, staging, beta, production).                                                         |
| CidrClassB          | Class B of VPC CIDR (10.XXX.0.0/16) |
| HasSSMParameterIntegration             | Enabling this option will use SSM Parameter Store to store parameter values that can be used by other AWS Cloudformation stacks.                                                     |