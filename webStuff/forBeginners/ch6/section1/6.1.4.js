var obj1 = {
    "car": ["blue", "black"]
};

var obj2 = {
    "car1": {"color": "blue"},
    "car2": {"color": "black"}
}

var obj3 = {
    "car1": {
        "color": "blue",
        "model": "Mustang"
    },
    "car2": {
        "color": "black",
        "model": "Civic"
    }
};



// Challenge

var myObj = {
    "people": [
        {
            "firstName": "Mike",
            "lastName": "Smith",
            "age": 30
        },
        {
            "firstName": "John",
            "lastName": "Jones",
            "age": 40
        }
    ]
};

console.log(myObj);

var nameVar = "Name";
var output1 = document.getElementById("output1");
var output2 = document.getElementById("output2");

var i = 0;
output1.innerHTML = myObj.people[i].firstName;
output2.innerHTML = myObj.people[i]['last' + nameVar];

var i = 1;
output1.innerHTML += myObj.people[i].firstName;
output2.innerHTML += myObj.people[i]['last' + nameVar];


