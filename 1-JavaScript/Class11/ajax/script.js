// //JS object
// let obj = {
//   name: Leon,
//   age: 28,
//   showName: function () {
//     console.log(this.name);
//   },
// };

// json object
// let json = {
//   name: "Leon",
//   age: 28,
// };

// let name = json.name;
// let age = json["age"];

// console.log(name, age);

let academy = {
  academyName: "Qinshift",
  trainer: "Trajan Stevkovski",
  assistant: "Filip Zlatanovski",
  students: ["Ana", "Marija", "Dragan"],
};

console.log(academy);

let jsonContent = JSON.stringify(academy);
console.log(jsonContent);

let parsedJson = JSON.parse(jsonContent);
console.log(parsedJson);
