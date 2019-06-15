FROM aymen2310/employee
RUN npm install -g nodemon
WORKDIR /opt/sample/Employee
RUN npm install && mv -f /opt/sample/Employee/node_modules/* /node_modules/
COPY app.js /opt/sample/Employee
EXPOSE 8888
CMD [ "nodemon" ]
