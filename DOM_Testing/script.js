const container = document.querySelector("#container");

const newParagraph = document.createElement("p");
newParagraph.textContent = "Hey im red!"
newParagraph.style.color = "red";
container.appendChild(newParagraph);

const title = document.createElement("h3");
title.textContent = "Im a blue h3!";
title.style.color = "blue";
container.appendChild(title);

const div = document.createElement("div");
div.style.width = "300px";
div.style.height = "150px";
div.style.border = "2px solid black";
div.style.backgroundColor = "pink"

const boxTitle = document.createElement("h1");
boxTitle.textContent = "Im in a div!"

const boxParagraph = document.createElement("p");
boxParagraph.textContent = "MEE TOO!";

container.appendChild(div);

div.appendChild(boxTitle);
div.appendChild(boxParagraph); 