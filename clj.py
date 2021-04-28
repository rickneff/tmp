import subprocess

def clj(clojure_program):
    with open('tmp.clj', 'w') as f:
      f.write('(print (do ' + clojure_program + '))')
    command = ['clojure', '-M', 'tmp.clj']
    output = subprocess.run(command, capture_output=True)
    if output.returncode:
        print(output.stderr.decode('utf-8'))
    else:
        print(output.stdout.decode('utf-8'))
