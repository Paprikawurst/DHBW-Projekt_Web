           let app, player;
            let data;
            let lives = 3;
            let objekts = [];
            let keys = {};
            let keysDiv;
            let objekt;
            let counter = 0, objektBuildCounter = 80;
            let points = 0;

            // load audio files

            let dead = new Audio();
           

            dead.src = "audio/dead.mp3";
           
            let statusM = new PIXI.Text('Punkte: '  + points + " Leben: " + lives,{fontFamily : 'Arial', fontSize: 24, fill : 0xff1010, align : 'center'});


            window.onload = function(){
            app = new PIXI.Application({
                width: 800,
                height: 600,
                backgroundColor: 0xAAAAAA

            }

            );
            document.querySelector("#gameDiv").appendChild(app.view);

            data = document.querySelector("#data");
            
            
            

            app.stage.addChild(statusM);

            

             // keyboard event handler
            window.addEventListener("keydown", keysDown);
            window.addEventListener("keyup", keysUp);


            // preload assets
            app.loader.baseUrl = "images";
            app.loader
                    
                    .add("zwei", "Mundschutz.png" )
                    .add("drei", "Klopapier.png" )
                    .add("vier", "corona_bier.png" )
                    .add("funf", "Desinfektionsmittel.png" )         
                    .add("player", "player.png" )              
                    .add("enemy", "corona.png" )
                    .add("deadScreen", "deadScreen.png" )

           
            app.loader.onComplete.add(doneLoading);
            app.loader.onError.add(reportError);

            app.loader.load();

            

        }
        function reportError(e){
            console.error("Error: " + e.message);

        }
        function doneLoading(e){
            console.log("Done Loading!")
            player = PIXI.Sprite.from(app.loader.resources.player.texture);
            
            player.anchor.set(0.5);
            player.x = app.view.width /2;
            player.y = 550;
           
            app.stage.addChild(player);
            
            app.ticker.add(gameLoop);
        }


        function collision(a,b){
            let aBox = a.getBounds();
            let bBox = b.getBounds();

            return aBox.x + aBox.width > bBox.x &&
                aBox.x < bBox.x + bBox.width &&
                aBox.y + aBox.height > bBox.y &&
                aBox.y < bBox.y + bBox.height;

        }
  
        
        
        
        function createObject(){
            let zufallsObjekt =  Math.floor(Math.random() * 6);
            let objekt;
            if(zufallsObjekt == 1){
                 objekt = PIXI.Sprite.from(app.loader.resources.zwei.texture);
                 objekt.points = 3
            }else if(zufallsObjekt == 2){
                 objekt = PIXI.Sprite.from(app.loader.resources.drei.texture);
                 objekt.points =10
            }else if(zufallsObjekt == 3){
                 objekt =PIXI.Sprite.from(app.loader.resources.vier.texture);
                 objekt.points =1
            }else if(zufallsObjekt == 4){
                    objekt = PIXI.Sprite.from(app.loader.resources.funf.texture);
                    objekt.points = 5;
            }else{
                 objekt =PIXI.Sprite.from(app.loader.resources.enemy.texture);
                 objekt.points = -30
                 
            }
            
            objekt.anchor.set(0.5);
            objekt.x = 100+Math.floor(Math.random() * 600);   
            objekt.y = 20;
            app.stage.addChild(objekt);

            objekts.push(objekt);

            
        }
        function updateObjects(){
            for(let i = 0; i < objekts.length; i++){
               if(objekts[i].position.y < 550){
                    objekts[i].position.y += 5;
                }else{
                    app.stage.removeChild(objekts[i]);
                    objekts.splice(i,1);
                }
                
              

             
            }
            for(let i = 0; i < objekts.length; i++){
                
                if(collision(player, objekts[i])){
                    points += objekts[i].points;
                    //updateStatusMessage(points);
                    
                    
                    if(objekts[i].points == -30){
                        lives--;
                        dead.play();
                    }
                    app.stage.removeChild(objekts[i]);
                    objekts.splice(i,1);
                    if(points < 0 ){
                        points = 0;
                        lives = 0;
                    }
                    app.stage.removeChild(statusM);
                    statusM = new PIXI.Text('Punkte: '  + points + " Leben: " + lives,{fontFamily : 'Arial', fontSize: 24, fill : 0xff1010, align : 'center'});
                    app.stage.addChild(statusM);
                    
                    
                   
                }
                
                
            }

        }
        function updateStatusMessage(message) {
            statusM.text = message.value;
        }





        function keysDown(e){
            
            keys[e.keyCode] = true;


        }
        function keysUp(e){
            
            keys[e.keyCode] = false;
        }

        

        function gameLoop(){
            counter++;
            //data.innerHTML = JSON.stringify('Punkte: '  + points + " Leben: " + lives);
            
            if(counter == objektBuildCounter){
                createObject();
                counter = 0;
                if(objektBuildCounter > 20){
                    objektBuildCounter--;
                }
               
            }
            
            if(lives==0){
                app.ticker.stop();
                let deadScreen = PIXI.Sprite.from(app.loader.resources.deadScreen.texture);
                deadScreen.anchor.set(0.5);
                deadScreen.x = 400;   
                deadScreen.y = 300;
                app.stage.addChild(deadScreen);

            }
            updateObjects();
            


            
            //W
            /*if(keys["87"]) {
                player.y -= 3;
            //S
            }
            if(keys["83"]){
                player.y += 3;
            //D
            }*/
            if(keys["39"] || keys["68"]){
                if(player.x <= 770){
                    player.x += 10;
                }

              

            //A
            }
            if(keys["37"] || keys["65"]){
                if(player.x >= 21){
                    player.x -= 10;
                }
            }
        }