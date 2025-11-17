document.getElementById("data").addEventListener("click", function () {
  // ------Fetch ------
  fetch("https://jsonplaceholder.typicode.com/users")
    .then(function (response) {
      console.log("Called from fetch as success");
      console.log(response);
      return response.json();
    })
    .then(function (result) {
      console.log("Secone then after parsing result");
      console.log(result);
    })
    .catch(function (error) {
      console("Called from fetch as error");
      console.log(error);
    });

  // ------Fetch ------
});
