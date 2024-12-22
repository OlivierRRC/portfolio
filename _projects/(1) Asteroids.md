---
name: Asteroids
tools: [p5js]
image: ../assets/NecromacerPost/Cover.jpg
description: Classic asteroids game built using p5js.
---

# Asteroids

As a sport of capstone project in my math course, I was tasked with making the classic game asteroids using the p5js framework. This marked the first time I made a full game without an engine to support me. Although this was a daunting task at first, it ended up being really fun to architect all of the systems myself.

![Screenshot from 2024-12-19 17-14-02.png](Asteroids%2016138c5e5e2d80659e5febea2619f64b/Screenshot_from_2024-12-19_17-14-02.png)

# Starting Point

When I first started this assignment, I decided not to worry about the gameplay of the game. I know this may seem counter intuitive, but I first wanted to start with all of the menu screens. These were the start screen, leaderboard screen, and game over screen.

I needed some way to decide which one of these screens I wanted to be rendering, and so I decided to use an enum along with a switch statement to decide which one to render.

The first problem I encountered with the approach was that javascript didn’t have an enum I could use, so I created my own object to act as an enum.

```jsx
let states = {
  current: 0,
  main: 0,
  game: 1,
  leaderboard: 2,
  gameOver: 3,
};
```

The current value of the object was the one to be switched on, and I would be checking it against all of the other values to determine which screen to show.

```jsx
  switch (states.current) {
    case states.main:
      main.draw();
      break;
    case states.game:
      game.update();
      break;
    case states.leaderboard:
      leaderBoard.draw();
      break;
    case states.gameOver:
      gameOver.draw();
      break;
  }
```

Once I had this system in place, it was now a matter of actually setting up these screens to display things and be interactable.

I made an individual .js script for each of the screens to keep things tidy. In my main script I create an object off of each of these scripts.

## Button Class

When I was making the main menu, I realized that having a button class would be useful since all of my UI elements would need at least one button.

I decided that all of my buttons would be text based, so I set out to find the bounds created by the text. The value of the text size ends up being equal to the height of the text, which makes that value easy to get. The width of the text can be found using a built in textWidth function in p5js. Before using it, I have to make sure to set the text to the correct size, or it’ll return the wrong width.

I then drew a bounding box around coordinates I got. I found the that text was always offset 7 units from where the bounding box would draw, so I simply move the text over by 7 for it to draw correctly.

I made a function that returns a true boolean if the mouse position is within the bounds of the button. I then check that boolean and if it is true change the color of the button slightlighy in order to give some visual feedback.

```jsx
    drawingContext.shadowColor = color(255);
    if (this.hovered(mPos)) {
      fill(170);
      drawingContext.shadowColor = color(170);
    }
```

When creating the button objects, I pass in a lambda function that can be called when the button is pressed. I also use a lock boolean to make sure a button will not trigger its function multiple times in one click.

```jsx
if (mouseIsPressed) {
	if (!this.hovered(mPos)) {
		this.lock = true;
	} else if (!this.lock) {
		this.f(); //execute funcion when the button is clicked
		this.lock = true;
	}
} else {
this.lock = false;
}
```

![2024-12-19-23:29:35.345821304.gif](Asteroids%2016138c5e5e2d80659e5febea2619f64b/2024-12-19-232935.345821304.gif)