import sys
def fizz_buzz(limit):
	for i in range(1,limit+1): 
		if i % 3 == 0:
			print('fizz')
		if i % 5  == 0:
			print('buzz')
		if i % 5 and  i % 3:
			print(i)

def main(): 
	fizz_buzz(int(sys.argv[1]))

if __name__ == '__main__':
	main()

