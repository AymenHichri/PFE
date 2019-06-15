FROM aymen2310/employee
RUN npm install -g nodemon
WORKDIR /opt/sample/Employee
COPY app.js /opt/sample/Employee
EXPOSE 8888
CMD [ "nodemon" ]
