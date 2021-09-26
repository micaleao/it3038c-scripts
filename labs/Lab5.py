import datetime
while True:
    try:
        bday = input("Please enter your birthday(eg. August 1 2001):")
        birthday = datetime.datetime.strptime(bday, '%B %d %Y')
        break
    except:
        print("Please put in format Month Day Year")
tday = datetime.datetime.today()
timedelta = (tday - birthday).total_seconds
print("You have been alive for:",timedelta,"seconds")