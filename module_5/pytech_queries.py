from pymongo import MongoClient
url = "mongodb+srv://Roymega:Megacubs86!!@cluster0.lqezwyp.mongodb.net/?retryWrites=true&w=majority"
client = MongoClient(url)
db = client.pytech
students = db.students

docs = students.find({})
print(" -- DISPLAYING STUDENT DOCUMENTS FROM find() QUERY -- ")

for doc in docs:
    print("Student ID: " + str(doc["student_id"]))
    print("First Name: " + str(doc["first_name"]))
    print("Last Name: " + str(doc["last_name"]))
    print()

print(" -- DISPLAYING STUDENT DOCUMENTS FROM find_one() QUERY -- ")

doc = students.find_one({"student_id" : "1007"})

print("Student ID: " + str(doc["student_id"]))
print("First Name: " + str(doc["first_name"]))
print("Last Name: " + str(doc["last_name"]))