## Demo Application Documentation (Rails 7 + OAuth2)

This documentation provides an overview of the application, including how to run it with and without Docker, as well as instructions on setting up a new OAuth2 app via Doorkeeper.

### Running the Application with Docker

To run the application with Docker, follow these steps:

1. Ensure you have Docker and Docker Compose installed on your machine.

2. Clone the repository:

   ```shell
   cd oauth2_app
   ```

3. Build the Docker image and start the container:

   ```shell
   docker-compose up --build
   ```

   This command will build the Docker image using the Dockerfile and start the container. The Rails application will be accessible at `http://localhost:3000` in your browser.

4. Access the application:

   - Visit `http://localhost:3000/users/sign_up` to create a new user.
   - After signing up, visit `http://localhost:3000/users/sign_in` to log in.
   - Once logged in, you can access the secure page at `http://localhost:3000/secure`.

5. To stop the application and remove the Docker containers, use `Ctrl + C` in the terminal where the `docker-compose up` command is running.

### Running the Application without Docker

To run the application without Docker, follow these steps:

1. Ensure you have Ruby (version 2.7.4) installed on your machine.

2. Clone the repository:

   ```shell
   cd oauth2_app
   ```

3. Install dependencies:

   ```shell
   bundle install
   ```

4. Set up the database:

   ```shell
   rails db:create
   rails db:migrate
   ```

5. Start the Rails server:

   ```shell
   rails server
   ```

   The Rails application will be accessible at `http://localhost:3000` in your browser.

6. Access the application:

   - Visit `http://localhost:3000/users/sign_up` to create a new user.
   - After signing up, visit `http://localhost:3000/users/sign_in` to log in.
   - Once logged in, you can access the secure page at `http://localhost:3000/secure`.

### Setting up a new OAuth2 App via Doorkeeper

To set up a new OAuth2 app via Doorkeeper, follow these steps:

1. Ensure the application is running either with or without Docker, as per the instructions above.

2. Register a new user (doesn't have to be admin)

3. Visit `http://localhost:3000/oauth/applications` in your browser.

4. Click on "New Application" to create a new OAuth2 app.

5. Fill in the required details, such as the name, redirect URI, and scopes.

6. Click "Submit" to create the app.

7. Once created, you will receive a `client_id` and `client_secret`. These will be used for OAuth2 authentication with Doorkeeper. Use these in the client (froneted) app.

That's it! You now have the application running either with or without Docker, and you have set up a new OAuth2 app using Doorkeeper.
