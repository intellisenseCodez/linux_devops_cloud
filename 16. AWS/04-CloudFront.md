
# Amazon CloudFront

## What is CloudFront?

AWS CloudFront is a **Content Delivery Network (CDN)** that delivers content with **low latency and high transfer speed**.

Instead of users accessing content from one location, CloudFront caches content in **edge locations** worldwide.


## Why Use CloudFront?

Benefits:

- Faster content delivery
- Reduced latency
- Global caching
- DDoS protection
- HTTPS support
- Improved security



## How CloudFront Works

Without CDN:

`User → S3 Bucket (Single Region)`

With CDN:

`User → CloudFront Edge Location → S3 Origin`


Flow:

1. User requests website
2. CloudFront checks cache
3. If cached → return immediately
4. If not cached → fetch from S3
5. Cache content at edge location


## CloudFront Key Components

### 1. Distribution

A **distribution** is the configuration used to deliver content.

Types:

- Web distribution (HTTP/HTTPS)
- RTMP distribution (streaming)


### 2. Origin

The **origin** is the source of the content.

Example origins:

- S3 bucket
- EC2 instance
- Load Balancer
- External web server



### 3. Edge Locations

Edge locations are **AWS data centers around the world** that cache content closer to users.

Example:

`User in Lagos → Edge Location → Fetch from S3 if needed`

Benefits:

- Faster global access
- Reduced load on origin
- HTTPS support
- Better scalability

# Demo: Deploy Static Website with S3 + CloudFront