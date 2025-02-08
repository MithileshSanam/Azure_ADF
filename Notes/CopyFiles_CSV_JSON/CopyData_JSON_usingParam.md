# Using Parameters, performing Copy Data activity
<ol>
<li>Create Metadata Activity to read all subfiles in a folder in ADLS</li>
<li>Field List Arguments - Child Items lists all files in a folder. Hence Data set assigned to the metadata activity should only have path till folder. </li><br/>
  <img width="856" alt="Screenshot 2025-02-08 at 3 36 45 PM" src="https://github.com/user-attachments/assets/2dedbb3a-e6c0-4e6b-9ec2-bf3e872cab34" />  <br/>
<li>Create a foreach activity with condition for item as</li>
  <img width="620" alt="Screenshot 2025-02-08 at 3 40 22 PM" src="https://github.com/user-attachments/assets/4d72f4b8-dfeb-49a6-a42c-4c1dec94c794" />  <br/>
<li>Make sure sequential is checked for foreach activity</li>
  <img width="539" alt="Screenshot 2025-02-08 at 3 41 54 PM" src="https://github.com/user-attachments/assets/d5edcf9e-739d-4b21-9ad2-016575aad218" />  <br/>
<li> In the foreach activity create a set variable activity that creates a filename variable by splitting file name with format retrived from foreach activity</li>
  <img width="688" alt="Screenshot 2025-02-08 at 4 14 45 PM" src="https://github.com/user-attachments/assets/822e8fc5-7742-48fe-848c-1ed1835aa9be" /> <br/>
  <li>Create two copy data activities one for JSON and other for CSV </li>
  <li>Source config remains same for both copy data activities </li>
  <img width="848" alt="Screenshot 2025-02-08 at 4 18 20 PM" src="https://github.com/user-attachments/assets/84b5b9ac-8e65-46a5-9954-db04d8cc8040" /> <br/>
  <li> For sink, create separate datasets for each </li>
</ol>
