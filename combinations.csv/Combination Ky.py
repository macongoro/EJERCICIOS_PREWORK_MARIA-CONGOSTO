import csv

# Columns from the image
A = ['Luz']
B = ["Gas", "compañia electrica", "luz más narata", "Endesa", "Repsol", "Word 2.6"]
C = ["comparador luz", "Comparador gas", "Comparador energia", "energia"]


# Combinations based on the specified rules
combinations = []

# B + C
for b in B:
    for c in C:
        combinations.append([f"{b} {c}"])

# B + D
for b in B:
    for d in D:
        combinations.append([f"{b} {d}"])

# B + C + D
for b in B:
    for c in C:
        for d in D:
            combinations.append([f"{b} {c} {d}"])

# A + B + C + D
for a in A:
    for b in B:
        for c in C:
            for d in D:
                combinations.append([f"{a} {b} {c} {d}"])

# A + B
for a in A:
    for b in B:
        combinations.append([f"{a} {b}"])

# Writing combinations to CSV
with open('combinations.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerows(combinations)
print