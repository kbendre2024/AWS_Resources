DevOps Technical Assignment

The point of this exercise is to demonstrate capabilities with some of the core technologies we use on a day-to-day basis. This is completely "open book" and meant to be completed within one day. All of this can be googled. If you get stuck, feel free to reach out for guidance. This is as much about the process as it is the result.

Requirements

Create a set of terraform modules that will provision a basic AWS environment. AWS resources provisioned should include the following:

   A VPC
   Public subnet(s)
   Private subnet(s)
   custom security group

Create terraform scripts that leverage your modules to instantiate the above resources. The target environment should contain the following:

   1 VPC
   2 public subnets
   2 private subnets
   1 security group with a rule allowing traffic from anywhere to port 443 for resources in the security group

Naming for these resources should be consistent, prepending a consistent prefix to each resource name
Follow best practices for externalization, making your Terraform modules potentially useable for multiple regions
Version control all of these files into a public GitHub repository. Meaningful and concise commit messages that show how you worked through this problem are a big plus.
