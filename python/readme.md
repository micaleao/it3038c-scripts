This will list what vaccinations are available and the script is called cowin.<br>
First we have to get the script and create a virtual environment.

```
 virutalenv /venv/cowin <br>
 pip install cowinapi_by_ishaan
```
 
Now we need to initialize the code in python.
```
from cowinapi_by_ashaan import FetchData
cowin = FetchData()
```
Now our first way we can look at the data is in tabular form.
```
from cowinapi_by_ashaan import FetchData
cowin = FetchData()
states = cowin.get_states_table()
print(states)
```
Another way to look at it is in a list form.
```
from cowinapi_by_ashaan import FetchData
cowin = FetchData()
states = cowin.get_states_list()
print(states)
```
Then, if we want to see it by looking at districts we can use the code below.
```
from cowinapi_by_ashaan import FetchData
cowin = FetchData()
districts = cowin.get_districts_dict()
print(districts)
```
