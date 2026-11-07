
# Start with a ready-made system that already has Node.js installed." This is your base image.
FROM node:latest
# Create a folder called /app inside the image and work from there." Every step after this happens inside that folder.
WORKDIR /app
# Copy everything from my project folder (first .) into the current folder in the image (second ., which is /app
COPY . .
# Install dependencies
RUN npm install
# Expose a port
EXPOSE 3000
# Define the command to run your application
CMD ["npm", "run", "start:dev"]