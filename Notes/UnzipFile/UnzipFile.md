# Unzipping a file from Raw folder to Landing Folder
1. Upload Zipped File to Raw Folder
    <img width="1123" alt="Screenshot 2025-02-08 at 10 51 12 AM" src="https://github.com/user-attachments/assets/dc40dc31-0b7b-4db5-b15c-b26bf5dc7266" />
2. Navigate to ADF and create a new pipeline
3. Navigate to Move and Transform and add Copy Data activity
4. Create Source Data set with settings:  
   File Type : Binary  
   Compression Type: Zip Deflate  
   <img width="1058" alt="Screenshot 2025-02-08 at 10 54 35 AM" src="https://github.com/user-attachments/assets/8fd2298e-477a-423f-b655-1eaed356aa09" />
5. Create Destination Data set
   <img width="1020" alt="Screenshot 2025-02-08 at 10 55 22 AM" src="https://github.com/user-attachments/assets/77dcb1f3-a70f-40ee-bcf0-61b097c54019" />
6. In the copy data activity, navigate to source tab. Ensure Preserve zip file name as folder is unchecked
   <img width="842" alt="Screenshot 2025-02-08 at 10 56 47 AM" src="https://github.com/user-attachments/assets/74b256c0-772c-43bf-9ab2-01efc66f1a45" />
7. Navigate to Sink Tab
   <img width="849" alt="Screenshot 2025-02-08 at 10 57 57 AM" src="https://github.com/user-attachments/assets/646df348-7faa-4dec-906c-52faf5fd1356" />
