//canvas im div
const cvs = document.getElementById("snake");
const ctx = cvs.getContext("2d");

//jede Box hat 32 px
const box = 32;

//Bilder laden

const ground = new Image();
ground.src = "images/Snake/ground.png";

const foodImg = new Image();
foodImg.src = "images/Snake/food.png";

//Audios laden

let dead = new Audio();
let eat = new Audio();
let up = new Audio();
let right = new Audio();
let left = new Audio();
let down = new Audio();

dead.src = "audio/dead.mp3";
eat.src = "audio/eat.mp3";
up.src = "audio/up.mp3";
right.src = "audio/right.mp3";
left.src = "audio/left.mp3";
down.src = "audio/down.mp3";


//Schlange ist ein array. Für jedes Körperteil kommt ein Arrayeintrag dazu
let snake = [];
//Schlangenkof Startpunkt
snake[0] = {
		x : 9 * box,
		y : 10 * box
};


//Münze position zufällig
let food = {
		x : Math.floor(Math.random()*17+1) * box,
		y : Math.floor(Math.random()*15+3) * box
}



let score = 0;

//Steuerung

let d;

document.addEventListener("keydown",direction);

function direction(event){
	let key = event.keyCode;
	if( key == 37 && d != "RIGHT"){
		left.play();
		d = "LEFT";
	}else if(key == 38 && d != "DOWN"){
		d = "UP";
		up.play();
	}else if(key == 39 && d != "LEFT"){
		d = "RIGHT";
		right.play();
	}else if(key == 40 && d != "UP"){
		d = "DOWN";
		down.play();
	}
}

//Kollision der Schlange mit sich selbst
function collision(head,array){
	for(let i = 0; i < array.length; i++){
		if(head.x == array[i].x && head.y == array[i].y){
			return true;
		}
	}
	return false;
}

//Alle Grafiken auf Canvas anzeigen oder zeichnen

function draw(){

	ctx.drawImage(ground,0,0);

	for( let i = 0; i < snake.length ; i++){
		ctx.fillStyle = ( i == 0 )? "green" : " limegreen";   // Kopf und Körper unterschiedliche Farbe
		ctx.fillRect(snake[i].x,snake[i].y,box,box);


	}

	ctx.drawImage(foodImg, food.x, food.y);

	// old head position
	let snakeX = snake[0].x;
	let snakeY = snake[0].y;


	if( d == "LEFT"){
		snakeX -= box;
	}
	if( d == "UP"){
		snakeY -= box;
	}
	if( d == "RIGHT"){
		snakeX += box;
	} 
	if( d == "DOWN"){
		snakeY += box;
	} 

	//Kollision der Schlange mit der Münze
	if(snakeX == food.x && snakeY == food.y){
		score++;
		eat.play();
		food = {
				x : Math.floor(Math.random()*17+1) * box,
				y : Math.floor(Math.random()*15+3) * box
		}

	}else{

		snake.pop();
	}



	let newHead = {
			x : snakeX,
			y : snakeY
	}

	// game over , Rand oder mit sich selbst

	if(snakeX < box || snakeX > 17 * box || snakeY < 3*box || snakeY > 17*box || collision(newHead,snake)){
		clearInterval(game);
		dead.play();
		const xhr = new XMLHttpRequest(); 	
		xhr.open('POST', '/Projekt-WEB2/Points');

		const params = {
				Points:points
		}

		xhr.setRequestHeader('Content-Type', 'application/json');

		xhr.send(JSON.stringify(params));



	}

	snake.unshift(newHead);

	// Punkteanzeige

	ctx.fillStyle = "white";
	ctx.font = "45px Changa one";
	ctx.fillText(score,2.2*box,1.6*box);
}


//Geschwindigkeit des Spiels

let game = setInterval(draw,100);
