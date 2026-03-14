import boto3

ec2= boto3.client('ec2', 'ap-south-1')

response = ec2.run_instances(
    ImageId='ami-0a14f53a6fe4dfcd1',
    InstanceType='t2.micro',
    KeyName='aws_key',
    SecurityGroupIds=['sg-0f14cc277f52b924c'],
    MinCount=1,
    MaxCount=1

        )

print("Code successfully run")
print("Instance ID:", response['Instances'][0]['InstanceId'])
