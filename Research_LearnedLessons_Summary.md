Research Summary:

  - Dynatrace Setup & Metrics: Our research mostly involved reading through the official Dynatrace [documentation](https://docs.dynatrace.com/docs) and a few other resources regarding usage of k8s and Linux. This provided complete guidance on setting up and utilizing Dynatrace for monitoring purposes.
  - Unhealthy environment: To make the system unstable we decided to use simple but powerful tools for stress testing. We mainly utilized tools such as stress-ng and iperf3. These tools were instrumental in evaluating the performance and resilience of our services under load.

Lessons Learned:

  - Dynatrace in Kubernetes: We successfully learned to install and configure Dynatrace in a Kubernetes environment, enabling robust monitoring of our microservices.
  - Monitoring and Error Identification: By using various monitoring tools within Dynatrace, we could effectively track the status and identify potential errors in our microservices.
  - Metrics Analysis: We have worked on our ability to filter and interpret the metrics provided by Dynatrace, which is key to maintaining optimal system performance.

Stress Testing Overview:

Purpose: Stress testing was done to assess the stability and performance of our microservices under different and sometimes extreme conditions.
Approach: We used tools like stress-ng and iperf3, which simulate high loads and network traffic, to push our systems to their limits and observe their behavior.
