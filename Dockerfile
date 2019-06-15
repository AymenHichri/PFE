FROM aymen2310/employee:latest
RUN npm install -g nodemon
WORKDIR /opt/sample/Employee
RUN rm -rf /node_modules
RUN npm install && mv /opt/sample/Employee/node_modules /node_modules
COPY app.js /opt/sample/Employee

EXPOSE 8888
CMD [ "nodemon" ]
