FROM rhscl/python-35-rhel7
COPY . .
CMD ["python", "prueba.py"]
