# AWS DevOps Capstone Project (Terraform)

## Overview
This project demonstrates end-to-end AWS infrastructure deployment using Terraform, including CI/CD automation for a static frontend application.

## Architecture
- VPC with public subnets across multiple availability zones
- EC2 instance with Auto Scaling Group
- Application Load Balancer (ALB)
- S3 bucket for static website hosting
- CloudFront CDN for content delivery
- GitHub Actions for CI/CD pipeline

## CI/CD Pipeline
On every push to the `main` branch, GitHub Actions:
- Syncs frontend files to S3
- Invalidates CloudFront cache

## Tools Used
- Terraform
- AWS (EC2, S3, ALB, CloudFront, VPC)
- Git & GitHub
- GitHub Actions

## Frontend
Simple static website hosted on AWS S3 and distributed via CloudFront.
