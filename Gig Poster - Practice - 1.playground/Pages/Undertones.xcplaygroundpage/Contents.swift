//: # Gig Poster - Practice Task 1
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![undertones-no-grid](undertones-no-grid.png "Undertones")
 ![undertones-with-grid](undertones-with-grid.png "Undertones")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let lightGrey = Color(hue: 84, saturation: 6, brightness: 88, alpha: 100)
let deepRed = Color(hue: 7, saturation: 97, brightness: 72, alpha: 100)

// Begin your solution here...

//// see where is the origin
//canvas.drawAxes()
//
//// move the origin 100 pixels right, 200 pixels up
//canvas.translate(to: Point(x: 100, y: 200))
//
//// let's see where the orgin is
//canvas.drawAxes()
//
//// draw square at the orgin
//canvas.drawRectangle(at: Point(x: 0, y: 0), width: 50, height: 50)
//
//// Make shapes have no fill
//canvas.drawShapesWithFill = false
//
//// move the orgin again - over 100, up 300
//canvas.translate(to: Point(x:100, y: 300))
//canvas.drawAxes()
//
//// draw squares
//for _ in 1...6{
//    canvas.rotate(by: 60)
//    canvas.drawRectangle(at: Point(x: 0, y: 0), width: 30, height: 30)
//}

// draw background
canvas.fillColor = lightGrey
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// translate orgin
canvas.translate(to: Point(x: 17, y: 375))

// draw rotating text
var y = 0
for x in 1...19{
    
    canvas.drawText(message: "undertones", at: Point(x: -2*x, y: y-x), size: 65)
    canvas.rotate(by: -90/18)
    
}

/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multilple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

