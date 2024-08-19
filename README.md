This project involves the implementation of infrastructure and services for a self-storage company.

<img width="461" alt="Screenshot 2024-08-19 at 20 41 56" src="https://github.com/user-attachments/assets/069d4796-7f44-47ee-ab9f-71fb025fe607">

The system is highly available:

<img width="437" alt="Screenshot 2024-08-16 at 12 17 54" src="https://github.com/user-attachments/assets/d405003f-8cb1-4848-954a-4f277bedb453">

AWS Route 53 is used for DNS and Cloudfront services for instant availability worldwide.
Amazon CloudFront is a Content Delivery Network service, that provides access to a global infrastructure for the website content for quick access whilst reducing load on the backend systems.

<img width="362" alt="Screenshot 2024-08-16 at 12 17 25" src="https://github.com/user-attachments/assets/8e3b6634-9b3a-4322-a8fb-a27f56911790">

An SNS topic with an email address is used as an endpoint.
CloudWatch Agent is installed to send alarms and alerts.
