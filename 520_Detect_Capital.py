import re

class Solutions:
	def detectCapitalUse(self, word):
		return re.fullmatch(r"^[A-Z][a-z]*|^[A-Z]*|^[a-z]*|", word)

# python function isupper() islower()



