import boto3

client = boto3.client('s3', region_name='ap-south-1')

response = client.delete_bucket(
    Bucket='meri-badli-mera-pani-123'
)

print("Bucket deleted successfully")
