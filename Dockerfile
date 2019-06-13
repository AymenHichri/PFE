FROM aymen2310/employee:latest


COPY PFE/Employee/app.js /opt/sample/Employee/app.js

EXPOSE 8888
CMD [ "npm", "run", "start.dev" ]
