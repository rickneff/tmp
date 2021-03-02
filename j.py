import os

def j(clojure_program):
    with open('tmp.clj', 'w') as f:
      f.write(clojure_program)
    return os.system('clojure -M tmp.clj')
