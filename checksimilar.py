import json

def json_files_are_identical(file1, file2):
    with open(file1, 'r') as f1, open(file2, 'r') as f2:
        data1 = json.load(f1)
        data2 = json.load(f2)
    return data1 == data2

# Usage
file1 = 'file1.json'
file2 = 'file2.json'
if json_files_are_identical(file1, file2):
    print(f'{file1} and {file2} are identical.')
else:
    print(f'{file1} and {file2} are not identical.')