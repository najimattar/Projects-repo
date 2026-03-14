def add_input(source, key, value):
    found = False

    with open(source, "r") as f:
        lines = f.readlines()

    with open(source, "w") as f:
        for line in lines:
            if line.strip().startswith(key):
                f.write(f"{key} = {value}\n")
                found = True
            else:
                f.write(line)

        if not found:
            f.write(f"{key} = {value}\n")


file = input("Enter file name: ")
keys = input("Enter Key: ")
data = input("Enter Value: ")

add_input(file, keys, data)
