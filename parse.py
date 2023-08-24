from pathlib import Path

path = Path(r"./dump.txt")
out = set()

with path.open("r", encoding="utf8") as file:
	in_block = False
	for line in file:
		line = line.strip()

		if line == "START GLOBALS BLOCK":
			in_block = True
		elif line == "END GLOBALS BLOCK":
			in_block = False
		elif in_block:
			out.add(line)

out = [glob for glob in out]
out.sort()

for glob in out:
	print(glob)
