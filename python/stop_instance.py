import boto3

# Create EC2 client
ec2 = boto3.client('ec2')

# Get all instances
response = ec2.describe_instances()

instance_ids = []

# Collect all instance IDs
for reservation in response['Reservations']:
    for instance in reservation['Instances']:
        instance_ids.append(instance['InstanceId'])

# Stop instances
if instance_ids:
    ec2.stop_instances(InstanceIds=instance_ids)
    
    print("Stopping instances:")
    for i in instance_ids:
        print(i)
else:
    print("No instances found")
