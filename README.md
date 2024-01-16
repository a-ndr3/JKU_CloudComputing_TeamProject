# Explore Dynatrace to observe your application


## Team Members
- Andrei Blokhin
- Jürgen Göller

### [Proposal Link](https://github.com/a-ndr3/JKU_CloudComputing_TeamProject/blob/main/PROPOSAL.md)



--------------- Project Walkthrough --------------

- [ ] Requirements and installed software required to proceed with the walkthrough: 
   -  Docker (optional: DockerHub account)

- [ ] Set Google Cloud project
   - Follow the guide from the demo from the 1st up to the 5th step
    
- [ ] Create docker files for each service
   - Use [this example](https://github.com/a-ndr3/JKU_CloudComputing_TeamProject/blob/main/dockerfile_AlpineExample.dockerfile) or this [this example](https://github.com/a-ndr3/JKU_CloudComputing_TeamProject/blob/main/dockerfile_example1.dockerfile) depending on the system in the image
     
- [ ] Build and push images to the hub
   - Use this command to build an image
      ```
      $ docker build -f %servicename%.dockerfile -t %yourhubname%/%folder%:%name% .
      ```
      ![image](https://github.com/a-ndr3/JKU_CloudComputing_TeamProject/assets/66060105/f72b78ef-57cf-4931-a2ea-9b462ee76603)

   - Push the created image to your hub
      ```
      $ docker push %yourhubname%/%folder%:%name%
      ```
      ![image](https://github.com/a-ndr3/JKU_CloudComputing_TeamProject/assets/66060105/e6e963d1-07a6-44dc-ab16-333923f229dc)

- [ ] Use created images in your *.yaml file and deploy the demo to the cluster using the command
      ```
      kubectl apply -f ./release/kubernetes-manifests.yaml
      ```
  Check your pods
      ```
      kubectl get pods
      ```
      or
      ```
      kubectl get deployments -o wide
      ```
      ![image](https://github.com/a-ndr3/JKU_CloudComputing_TeamProject/assets/66060105/fed05793-9e2c-4b4b-83c9-e9cfc2d644de)
   
- [ ] Install Dynatrace tools
   - Use documentation to generate a .yaml file provided by Dynatrace here
     ```
     https://docs.dynatrace.com/docs/setup-and-configuration/setup-on-k8s/
     ```
   - Use the commands
     ```
     kubectl create namespace dynatrace
     kubectl apply -f https://github.com/Dynatrace/dynatrace-operator/releases/download/v0.14.2/kubernetes.yaml
     kubectl -n dynatrace wait pod --for=condition=ready --selector=app.kubernetes.io/name=dynatrace-operator,app.kubernetes.io/component=webhook --timeout=300s
     kubectl apply -f dynakube.yaml
     ```
     - Check your Dynatrace dashboard
       
     ![image](https://github.com/a-ndr3/JKU_CloudComputing_TeamProject/assets/66060105/1fb4ad4c-c9e6-4002-85fa-ab6cddc919ab)

- [ ] Monitor acctivity (events, logs etc.)

    ![image](https://github.com/a-ndr3/JKU_CloudComputing_TeamProject/assets/66060105/48174864-7638-43b5-997a-9871b12e6d68)

