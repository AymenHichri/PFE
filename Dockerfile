FROM aymen2310/employee:latest


COPY app.js /opt/sample/Employee
COPY package.json /opt/sample/Employee


EXPOSE 8888
CMD [ "npm", "run", "start.dev" ]
