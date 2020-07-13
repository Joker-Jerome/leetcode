class Solution():
	def reverseBits(self, n):
		res = 0
		power = 31
		while n:
			res += (n & 1) << power
			n >>= 1
			power -= 1
		return res