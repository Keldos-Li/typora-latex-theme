let p = document.querySelector("#write > p:last-of-type");
if (p.innerHTML === "&nbsp;") {
    p.remove();
}
