import subprocess

def j(clojure_program):
    with open('tmp.clj', 'w') as f:
      f.write(clojure_program)
    return subprocess.call(['clojure', '-M', 'tmp.clj'])
