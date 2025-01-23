document.getElementById("submit").addEventListener("click", function(){
    let someText = "";
    let name = document.getElementById("name").value;
    someText += " Имя: " + name;
    let surname = document.getElementById("surname").value;
    someText += " Фамилия: " + surname;
    let fathname = document.getElementById("fathname").value;
    someText += " Отчество: " + fathname;
    let mail = document.getElementById("mail").value;
    someText += " Почта " + mail;
    let num = document.getElementById("tel").value;
    someText += " Номер: " + num + " ";
    let div = document.querySelector("div").children;
    for(let i=1; i < div.length; i+=2) {
        someText += div[i+1].textContent + ": " + div[i].checked + " ";
    }

    let fac = document.getElementById("fac").value;
    someText += "Факультет: "+ fac + " ";

    let group = document.getElementById("group").value;
    someText += "Группа: "+ group + " ";

     let course = document.getElementById("course").value;
    someText += "Курс: "+ course;

    let textElement = document.createElement("p");
    textElement.innerText = someText;
    document.getElementById("footer").append(textElement);
})