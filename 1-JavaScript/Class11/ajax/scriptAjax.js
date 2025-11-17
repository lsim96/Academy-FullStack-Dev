// $(document).ready(function () {
//   //   console.log("We are ready");
//   //this is only the event handler
//   $("#data").on("click", function () {
//     //Ajax
//     $.ajax({
//       url: "https://jsonplaceholder.typicode.com/users",
//       method: "GET", //default is GET
//       success: function (result) {
//         console.log("We are in success");
//         console.log(result);
//       },
//       error: function (error) {
//         console.log("We are in error");
//         console.log(error);
//       },
//     });

//     //Ajax
//   });
// });

$(document).ready(function () {
  $("#data").on("click", function () {
    $.ajax({
      url: "https://swapi.tech/api/people/1",
      method: "GET",
      success: function (result) {
        let result1 = result.result.properties.name;
        let result2 = result.result.properties.height;
        let result3 = result.result.properties.mass;
        console.log(result1);
        console.log(result2);
        console.log(result3);
      },
    });
  });
});
