import boto3

client = boto3.client('s3', region_name='ap-south-1')

# Create bucket
response = client.create_bucket(
    Bucket='meri-badli-mera-pani-123'
)

print("Bucket created successfully")
