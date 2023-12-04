# 0x0F-load_balancer
Load Balancer Configuration
Overview
This project focuses on configuring a load balancer and web servers to distribute incoming traffic efficiently. The tasks involve setting up Nginx on web servers, installing and configuring HAproxy as the load balancer, and automating the configuration with both Bash and Puppet scripts.

Task 0: Double the Number of Webservers
Requirements:
Configure Nginx on web-01 and web-02 to include a custom HTTP header.
The custom header must be named X-Served-By.
The header value should be the hostname of the server running Nginx.

Usage:
Run the script on web-01.
Execute the script on web-02 using SSH.

Task 1: Install Your Load Balancer
Requirements:
Install and configure HAproxy on lb-01.
HAproxy should distribute traffic to web-01 and web-02 using a round-robin algorithm.
HAproxy should be manageable via an init script.

Task 2: Add a Custom HTTP Header with Puppet
Requirements:
Use Puppet to add a custom HTTP header to Nginx.
The custom header should be named X-Served-By.
The header value should be the hostname of the server running Nginx.

Apply the configuration using sudo puppet apply 2-puppet_custom_http_response_header.pp.
