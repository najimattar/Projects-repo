import boto3

ec2=boto3.client('ec2', 'ap-south-1')

response = ec2.describe_instances()
for reservations in response['Reservations']:
  for instances in reservations['Instances']:
    print(instances['InstanceId'])

