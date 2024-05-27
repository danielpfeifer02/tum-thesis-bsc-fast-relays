import sys

with open(sys.argv[1], 'rb') as f:
    data = f.readlines()

for n, line in enumerate(data):
    try:
        line.decode('ascii')
    except UnicodeDecodeError as e:
        line = line.decode('utf-8')
        print(f'{n}: {line}')
        print(f'  ^-- {e}')

