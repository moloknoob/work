from sqlalchemy import * 
import json
from sqlalchemy.orm import sessionmaker


database_name = "banta"
user = "julien"
password = "pass"
database_URL="mysql+mysqlconnector://julien:pass@localhost/banta"

engine = create_engine(database_URL)

def to_jsonify_object(obj):
    # Access the keys directly from the dictionary
    object_json = {
        'name': obj.get('name'),
        'language': obj.get('language'),
        'external_id': obj.get('external_id'),
        'bio': obj.get('bio'),
        'version': obj.get('version')
    }
    return object_json

# def to_jsonify_object(object):
#     object_json = {'name': data_list, 'language': data_list.language, 'external_id': data_list.external_id, 'bio': data_list.bio, 'version': data_list.version}
#     return object_json

class full_objet():
    __tablename__ = 'full_object'
    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String(100), nullable=False)
    language = Column(String(50), nullable=False)
    external_id = Column(String(50), nullable=False)
    bio = Column(String(255), nullable=True)
    version = Column(DECIMAL(4, 2), nullable=False)

with open('in/data.json', 'r') as file:
    data_list = json.load(file)

tab = []
for i in data_list:
    object = to_jsonify_object(i)
    tab.append(object)


for i in tab:
    print(i)
    