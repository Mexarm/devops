FROM satell.sct.gob.mx:5000/sct-redhat_docker-rhscl_python-35-rhel7
COPY . .
CMD ["python", "prueba.py"]
