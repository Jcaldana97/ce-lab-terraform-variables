#!/bin/bash
 
echo "=== Development Environment ==="
aws s3api get-bucket-versioning --bucket myapp-jcaa-bootcamp-0702026-dev-bucket
aws s3api get-bucket-tagging --bucket myapp-jcaa-bootcamp-0702026-dev-bucket
 
echo ""
echo "=== Production Environment ==="
aws s3api get-bucket-versioning --bucket myapp-jcaa-bootcamp-072026-prod-bucket
aws s3api get-bucket-tagging --bucket myapp-jcaa-bootcamp-072026-prod-bucket
