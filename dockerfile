# 1. Base image: provides Node.js and npm
FROM node:latest

# 2. Set working directory inside the container
WORKDIR /app

# 3. Copy project files into /app
COPY . .

# 4. Install dependencies
RUN npm install

# Build application
RUN npm run build

# 5. Document the port your application uses
EXPOSE 3000

# 6. Start the NestJS application
CMD ["npm", "run", "start:prod"]