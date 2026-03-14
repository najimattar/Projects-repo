import boto3

client = boto3.client('ec2', region_name='ap-south-1')

response = client.stop_instances(
    InstanceIds=[
        'i-058a7e2b76b1df5c1',
        'i-0c37196ddeb481642',
        'i-06c2da8f6205c00d5',
        'i-0cef143ea60894b52'
    ]
)

print("Instances stopped successfully")
print(response)
