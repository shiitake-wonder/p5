int countIn = 0;
void setup() {
    size(800,800);
    // fullScreen();
    noFill();
    frameRate(1200);
}
void draw() {
    noStroke();
    float x = random(0, width);
    float y = random(0, height);
    float distance = dist(width/2, height/2, x, y);
    if (distance < width/2) {
        fill(0, 255, 0);
        ellipse(x, y, 5, 5);
        countIn++;
    }
    else {
        fill(0);https://github.com/shiitake-wonder/p5
        ellipse(x, y, 5, 5);
    }
    float montePI = float(countIn) / float(frameCount) * 4;
    if(frameCount % 1000 == 0)
        println(frameCount,montePI,abs(PI - montePI));
    noFill();
    strokeWeight(3);
    stroke(255);
    ellipse(width/2, height/2, width, height);
}
