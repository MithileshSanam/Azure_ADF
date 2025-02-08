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
4. Dataset Parameters:  
    a. Dataset parameters are created at a dataset level and can be used for set any value in the dataset i.e, filename etc
    b. They can access pipeline parameters for setting its value.
5. Linked Service Parameters:  
    a. They are created at linked service level.
    b. These parameters can be access for any pipeline using the linked service.
