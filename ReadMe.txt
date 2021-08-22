Steps for starting the project:

- This project is based on Mortgage application.
- The project front-end is developed in ReactJs with Javascript & .NET Core Web API 5.0. I have used VS Code as an editor.
- Backend is used as SQL Server.
- Steps to open the project:
	- Open VS Code editor and open \mortgage.client client which is front-end
 	- Open Web API project in VS 2019 editor.
	- Execute below commands for Front-end libraries.
        - Install these dependencies to runt he project: npm install, npm i -s axios, npm install bootstrap ,npm i -s redux react-redux redux-thunk
- Once all these dependencies installed through terminal windows, please start the Web API project.
- Web API project is will run on localhost.
- Then start the Front -end project by executing command "npm start" on VS Code.
- Please make sure the localhost port on which front-end run on should also defined in Web API project in startup.cs class.
-    app.UseCors(options => 
                options.WithOrigins("http://localhost:3000")
                .AllowAnyHeader()
                .AllowAnyMethod()
            );

- Once react applicatoonlaunched , first page will be customer registration page, Mortgage page and then dashboard page.

- The application has used Redux for the state management.
          
​    

 
​    
