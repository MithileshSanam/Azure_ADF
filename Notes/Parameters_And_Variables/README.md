# Parameters
1. Parameters once created can not be modified.
2. There are three types of Parameters  
    Pipeline Parameters  
    Dataset Parameters  
    Linked Service Parameters  
3. Pipeline Parameters:  
    a. Pipeline parameters are created at a pipeline level  
    b. They can be utilised anywhere within a Pipeline  
    c. Parameter created for one pipeline can not be used for another pipeline  
   <img width="854" alt="Screenshot 2025-02-08 at 11 38 58 AM" src="https://github.com/user-attachments/assets/2c4c4f7a-b99b-4a99-9461-6a203d4eb6cb" />  
    d. Usage of pipeline parameters (example) - Inside a set variable activity  
   <img width="663" alt="Screenshot 2025-02-08 at 11 41 45 AM" src="https://github.com/user-attachments/assets/1e1da5cb-b45e-45fc-8521-1c097966e64b" />
4. Dataset Parameters:  
    a. Dataset parameters are created at a dataset level and can be used for set any value in the dataset i.e, filename etc
    b. They can access pipeline parameters for setting its value.  
    c. Below is screenshot of creating a dataset parameter at a dataset level
   <img width="738" alt="Screenshot 2025-02-08 at 11 57 29 AM" src="https://github.com/user-attachments/assets/5bc7b114-c3a5-4722-8d8d-d5c791192c71" />  
    d. Same shall be provided in the fields where parameter value needs to be defined  
   <img width="1063" alt="Screenshot 2025-02-08 at 11 59 09 AM" src="https://github.com/user-attachments/assets/6cab52f4-7cb8-4bfd-892e-4a215367721d" />  
    e. Created a pipeline level parameter to send the value to the dataset from the pipeline 
   <img width="728" alt="Screenshot 2025-02-08 at 12 01 24 PM" src="https://github.com/user-attachments/assets/1d55c4a5-0194-456c-af4a-df3424fb7d86" />  
   f. Assiging dataset parameter with a pipeline parameter  
   <img width="853" alt="Screenshot 2025-02-08 at 12 01 01 PM" src="https://github.com/user-attachments/assets/3578f2f6-f6fe-4ff3-b07d-eb471ba4dcd1" />
5. Linked Service Parameters:  
    a. They are created at linked service level.
    b. These parameters can be access for any pipeline using the linked service.  
    c. Whenever the linked service is utilised, values need to be provided for the same
   <img width="584" alt="Screenshot 2025-02-08 at 11 55 02 AM" src="https://github.com/user-attachments/assets/8c304664-9d5e-4645-a5f6-bdda7f0c6b20" />  
    
