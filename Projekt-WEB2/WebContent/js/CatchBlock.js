            let app, player;
            
            let objekts = [];
            let keys = {};
            let keysDiv;
            let objekt;
            let counter = 0, objektBuildCounter = 80;
            let points = 0;


            window.onload = function(){
            app = new PIXI.Application({
                width: 608,
                height: 608,
                backgroundColor: 0xAAAAAA

            }

            );
            document.querySelector("#gameDiv").appendChild(app.view);

           
            
            
            



            

             // keyboard event handler
            window.addEventListener("keydown", keysDown);
            window.addEventListener("keyup", keysUp);


            // preload assets
            app.loader.baseUrl = "images/game1";
            app.loader
                    .add("eins", "eins.png" )
                    .add("zwei", "zwei.png" )
                    .add("drei", "drei.png" )
                    .add("vier", "vier.png" )
                    .add("funf", "funf.png" )         
                    .add("player", "player.png" )              
                    .add("enemy", "enemy.png" )
           
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
                 objekt = PIXI.Sprite.from(app.loader.resources.eins.texture);
                 objekt.points = 15
            }else if(zufallsObjekt == 2){
                 objekt = PIXI.Sprite.from(app.loader.resources.zwei.texture);
                 objekt.points = 3
            }else if(zufallsObjekt == 3){
                 objekt = PIXI.Sprite.from(app.loader.resources.drei.texture);
                 objekt.points =10
            }else if(zufallsObjekt == 4){
                 objekt =PIXI.Sprite.from(app.loader.resources.vier.texture);
                 objekt.points =1
            }else if(zufallsObjekt == 5){
                 objekt =PIXI.Sprite.from(app.loader.resources.enemy.texture);
                 objekt.points = -30
            }else{
                 objekt = PIXI.Sprite.from(app.loader.resources.funf.texture);
                 objekt.points = 5;
            }
            
            objekt.anchor.set(0.5);
            objekt.x = Math.floor(Math.random() * 700);   
            objekt.y = 20;
            app.stage.addChild(objekt);

            objekts.push(objekt);

            
        }
        function updateObjects(){
            for(let i = 0; i < objekts.length; i++){
               if(objekts[i].position.y < 550){
                    objekts[i].position.y += 3;
                }else{
                    app.stage.removeChild(objekts[i]);
                    objekts.splice(i,1);
                }
              

             
            }
            for(let i = 0; i < objekts.length; i++){
                
                if(collision(player, objekts[i])){
                    points += objekts[i].points;
                    app.stage.removeChild(objekts[i]);
                    objekts.splice(i,1);
                    if(points < 0 ){
                        points = 0;
                    }
                    console.log(points);
                    
                   
                }
                
                
            }

        }





        function keysDown(e){
            
            keys[e.keyCode] = true;


        }
        function keysUp(e){
            
            keys[e.keyCode] = false;
        }

        function gameLoop(){
            counter++;
            if(counter == objektBuildCounter){
                createObject();
                counter = 0;
                if(objektBuildCounter > 30){
                    objektBuildCounter--;
                }
               
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
                if(player.x <= 790){
                    player.x += 5;
                }

              

            //A
            }
            if(keys["37"] || keys["65"]){
                if(player.x >= 5){
                    player.x -= 5;
                }
            }
        }

