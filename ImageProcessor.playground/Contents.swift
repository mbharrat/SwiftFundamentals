//: Playground - noun: a place where people can play

import UIKit
//create class for imageprocessor
class ImageProcessor {
    var image: RGBAImage
    var avgRed = 0
    var avgGreen = 0
    var avgBlue = 0
    
    init(image: UIImage){
        self.image = RGBAImage(image: image)!
    }
    
    func functions(filter: [String], intensity: Int){
        self.averages(self.image)
        
        for option in filter {//this will allow params to be called by specific string aka Switch cases
            switch option.lowercaseString {
            case "make green":
                self.makeGreener(self.image, intensity: intensity)
            case "make blue":
                self.makeBluer(self.image, intensity: intensity)
            case "make red":
                self.makeRedder(self.image, intensity: intensity)
            case "bright":
                self.bright(self.image, intensity: intensity)
            case "black-white":
                self.bw(self.image, intensity: intensity)
            default:
                print("The filter", option.lowercaseString , "does not exist at the moment.")
            }
        }
    }
    //assign averages depending on specific image
    func averages(image: RGBAImage){//simple function used in modules
        var Red = 0
        var Green = 0
        var Blue = 0
        for y in 0..<image.height{
            for x in 0..<image.width{
                let index = y * image.width + x
                var pixel = image.pixels[index]
                Red = Red + Int(pixel.red)
                Green = Green + Int(pixel.green)
                Blue = Blue + Int(pixel.blue)
            }
        }
        let counter = image.width * image.height
        self.avgRed = Red/counter
        self.avgBlue = Blue/counter
        self.avgGreen = Green/counter
    }
    
    //greener!
    func makeGreener(image: RGBAImage, intensity: Int){//filter to enhance green pixels by 5 times
        for y in 0..<self.image.height{
            for x in 0..<self.image.width{
                let index = y * self.image.width + x
                var pixel = self.image.pixels[index]
                let greenDiff = Int(pixel.green) - avgGreen
                if(greenDiff > 0){
                    pixel.green = UInt8( max(0,min(255,avgGreen + greenDiff*intensity ) ) )
                    self.image.pixels[index] = pixel
                }
            }
        }
    }
    
    //make blue!
    func makeBluer(image: RGBAImage, intensity: Int){//filter to enhance blue pixels by 5 times
        for y in 0..<self.image.height{
            for x in 0..<self.image.width{
                let index = y * self.image.width + x
                var pixel = self.image.pixels[index]
                let blueDiff = Int(pixel.blue) - avgBlue
                if(blueDiff > 0){
                    pixel.blue = UInt8( max(0,min(255,avgBlue + blueDiff*intensity ) ) )
                    self.image.pixels[index] = pixel
                }
            }
        }
    }
    
    //make redder
    func makeRedder(image: RGBAImage, intensity: Int){//filter to enhance red pixels by 5 times
        for y in 0..<self.image.height{
            for x in 0..<self.image.width{
                let index = y * self.image.width + x
                var pixel = self.image.pixels[index]
                let redDiff = Int(pixel.red) - avgRed
                if(redDiff > 0){
                    pixel.red = UInt8( max(0,min(255,avgRed + redDiff*intensity ) ) )
                    self.image.pixels[index] = pixel
                }
            }
        }
    }
    
    //brightness
    func bright(image: RGBAImage, intensity: Int){//increase intensity by input
        let brightness = intensity
        for y in 0..<self.image.height {
            for x in 0..<self.image.width {
                let index = y * self.image.width + x
                var pixel = self.image.pixels[index]
                let G = round(Double(pixel.green) * Double(brightness)) //decrease done here
                
                let B = round(Double(pixel.blue) * Double(brightness)) //decrease done here
                
                let R = round(Double(pixel.red) * Double(brightness)) //decrease done here
                
                pixel.green = UInt8( max (0, min (255, G)))
                
                pixel.blue = UInt8( max (0, min (255, B)))
                
                pixel.red = UInt8( max (0, min (255, R)))
                self.image.pixels[index] = pixel
            }
        }
    }
    
    //black and white
    func bw(image: RGBAImage, intensity: Int){
        for y in 0..<self.image.height {
            for x in 0..<self.image.width {
                let index = y * self.image.width + x
                var pixel = self.image.pixels[index]
                
                let mid = 0.299 * Double(pixel.red) + 0.587 * Double(pixel.green) + 0.114 * Double(pixel.blue)
                let gray = round(mid)
                
                pixel.green = UInt8(gray) //* UInt8(intensity)
                
                pixel.blue = UInt8(gray) //* UInt8(intensity)
                
                pixel.red = UInt8(gray) //* UInt8(intensity)
                
                self.image.pixels[index] = pixel
            }
        }
    }
    func view() -> UIImage {//create ability to see new created image
        return self.image.toUIImage()!
    }
}


//test the code!
//
//og image
let image = UIImage(named: "sample")!
//make image instances for each of 5 filters
let one = ImageProcessor(image: image)
let two = ImageProcessor(image: image)
let three = ImageProcessor(image: image)
let four = ImageProcessor(image: image)
let five = ImageProcessor(image: image)

//how to use filter
//
//one
//-------------------------------
one.functions(["make green"], intensity: 9)
one.view()
//
//two
//-----------------------------
two.functions(["make red"], intensity: 56)
two.view()
//
//three
//-----------------------------
three.functions(["make blue"], intensity: 25)
three.view()
//
//four
//-----------------------------
four.functions(["bright"], intensity: 20)
four.view()
//
//five
//----------------------------
five.functions(["black-white"], intensity: 2)
five.view()


