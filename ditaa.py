import subprocess
from IPython.display import Image

def ditaa(ditaa_str):
  with open('tmp.txt', 'w') as f:
    f.write(ditaa_str)

  command = ['java', '-Dfile.encoding=UTF-8', '-jar', 'ditaa0_9.jar', '-E', '-o', 'tmp.txt', 'tmp.png']
  output = subprocess.run(command, capture_output=True)
  if output.returncode:
    print(output.stderr.decode('utf-8'))
  else:
    print(output.stdout.decode('utf-8'))
  return Image('tmp.png')
