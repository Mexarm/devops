import os
import json

def save_environ(filename):
    with open(filename,'w') as handle:
        handle.write(json.dumps(dict(os.environ)))
    
if __name__=="__main__":
    filename = os.environ.get('OUTPUT_FILE') or 'env.json'
    save_environ(filename)
    for k in os.environ:
        print("{} = {}".format(k,os.environ[k]))
    print('{} created.'.format(filename))
    # im not dying that easy :)
    while True: 
        pass
