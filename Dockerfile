FROM aymen2310/employee:latest
RUN npm install -g nodemon
WORKDIR /opt/sample/Employee
RUN npm install
RUN cp /opt/sample/Employee/node_modules/* /node_modules/
RUN rm -rf /opt/sample/Employee/node_modules
COPY app.js /opt/sample/Employee
EXPOSE 8888
CMD [ "nodemon" ]
