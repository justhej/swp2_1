### 2.1.4 Incrementing the value

```Swift
// 2.1.4
// v- noob

var gemCounter = 0

 while isBlockedLeft{
        moveForward()
        if isOnGem{
            collectGem()
            gemCounter += 1
        }
        if isBlocked && !isBlockedRight {
            turnRight()
            if isOnGem{
            collectGem()
            gemCounter += 1
        }
        } 
        if isBlocked {
            break
        }
    }
////////////////////////////////


```

```Swift

// 2.1.4
// v- 1

while !isBlocked {
    moveForward()
    if isOnGem{
        collectGem()
        gemCounter += 1
    }
    if isBlockedLeft && !isBlockedRight{
        turnRight()
    }
}

////////////////////////////////

````

```Swift
// 2.1.4
// v- Hej

for k in 1...15 {
    moveForward()
    if isOnGem{
        collectGem()
        gemCounter += 1
    }
    k == 7 || k == 9 ? turnRight() : ()
}

////////////////////////////////

````

### 2.1.5 Seeking seven gems

```Swift
// 2.1.5
// v- 0

var gemCounter = 0

while gemCounter < 7 {
    moveForward()
    if isOnGem{
        collectGem()
        gemCounter += 1
    }
    if isBlocked{
        turnLeft()
        turnLeft()
    }
}
////////////////////////////////

````

```Swift
// 2.1.5
// v- 1

var gems = 0
while gems < 7 {
    moveForward()
    if isBlocked{
        turnLeft()
        turnLeft()
    }
    if isOnGem{
        collectGem()
        gems += 1
    }
}

////////////////////////////////

````

### 2.1.6 Three gems, four switches


```Swift
// 2.1.6
// v-0

var gems = 0
var swis = 0

func twistAndTurns(){
    if isBlocked && isBlockedLeft{
        turnRight() 
    }; 
    if isBlocked && isBlockedRight{
        turnLeft() 
    };   
}

func nav(){
    moveForward()
    while gems < 3 {
        moveForward()
        if isOnGem{
            collectGem()
            gems += 1
        }
        twistAndTurns()
    }
    
    while swis < 4 {
        moveForward()
        if isOnClosedSwitch{
            toggleSwitch()
            swis += 1
        }
        twistAndTurns()
    }
    }

while !isBlocked{
    nav()
}
            

////////////////////////////////

````


```Swift
// 2.1.6
// v- 1

var gems = 0
var switches = 0 
while true {
   
    while gems < 3  {
        moveForward()
        if isBlocked && !isBlockedRight {
               turnRight()
           }
           else if isBlocked && !isBlockedLeft {
               turnLeft()
           }
    if isOnGem{
        collectGem()
        gems += 1
    }
    }

    while switches < 4 {
        moveForward()
        if isBlocked && !isBlockedRight {
               turnRight()
           }
           else if isBlocked && !isBlockedLeft {
               turnLeft()
           }
    if isOnClosedSwitch{
        toggleSwitch()
        switches += 1
    }
    }
    if gems == 3 && switches == 4 {
        break
    }
}



////////////////////////////////

````

```Swift
// 2.1.6
// v- 2

func traverse() {
    moveForward()
    if isBlocked && isBlockedLeft {
        turnRight()
    }
    else if isBlocked && isBlockedRight {
        turnLeft()
    }
}

func collect(){
    if gems < 3 && isOnGem {
        collectGem()
        gems += 1
    }
    else if swis < 4 && isOnClosedSwitch {
        toggleSwitch()
        swis += 1
    }
}

var swis = 0
var gems = 0 

while gems < 3 || swis < 4 {
    traverse()
    collect()
}

////////////////////////////////

````

```Swift
// 2.1.6
// v- 3

func traverse() {
    moveForward()
        if isBlocked && isBlockedLeft{
            turnRight()
        }
        else if isBlocked && isBlockedRight {
            turnLeft()
        }
}



var swis = 0
var gems = 0 
while gems < 3 {
    traverse()
    if isOnGem{
        collectGem()
        gems += 1
    }
}

while swis < 4 {
    traverse()
    if isOnClosedSwitch{
        toggleSwitch()
        swis += 1
    }
}

////////////////////////////////

````

### 2.17 Checking for equal values

```Swift
// 2.1.7
// v- 0

let switchCounter = numberOfSwitches

var gems = 0


while gems < switchCounter{
    moveForward()
    if isOnGem{
        collectGem()
        gems += 1
    }; 
    if isBlockedLeft && isBlocked {
        turnRight()
    } ;
        
    }


////////////////////////////////

````

```Swift
// 2.1.7
// v- 1

let switchCounter = numberOfSwitches
var gems = 0 

while gems < switchCounter {
    moveForward()
    if isOnGem{
        collectGem()
        gems += 1
    }
    isBlocked ?  turnRight() : ()
}

////////////////////////////////

````
### 2.1.8 Round up the switches

```Swift
// 2.1.8
// v- 0

var gems = 0 
var swis = 0

moveForward()
while !isBlocked {
    nav()
    if isOnOpenSwitch{
        break 
    }
}
func nav(){
        moveForward()
            if isBlocked && !isBlockedRight{
                turnRight()}; 
    
    if isOnGem{
            collectGem()
            gems += 1}; 
    
    while swis < gems {
        moveForward()
        if isBlocked && !isBlockedRight{
            turnRight()}; 
        
        if isOnGem{
            collectGem()
            gems += 1}; 
        
        if isOnClosedSwitch{
            toggleSwitch()
            swis += 1};
    }
}


////////////////////////////////

````


```Swift
// 2.1.8
// v- 1

var gems = 0
var switches = 0

while true {
    moveForward()
    if isOnGem{
        collectGem()
        gems += 1 
    }
    if isBlocked {
        turnRight()
    }
    if isOnClosedSwitch{
        toggleSwitch()
        switches += 1
        if switches == gems {
            break
        }
    }
}

////////////////////////////////

````

```Swift
// 2.1.8
// v- 2

var gems = 0
var switches = 0

func steer(){
    moveForward()
    isBlocked ? turnRight() : ()
    if isOnGem{
        collectGem()
        gems += 1
    }
}

while true {
    steer()
    if isOnClosedSwitch{
        toggleSwitch()
        switches += 1
        if switches == gems {
            break
        }
    }
}
////////////////////////////////

````

```Swift
// 2.1.8
// v- 3

var gems = 0 
var swits = 0
moveForward()
for k in 1...15 {
    moveForward()
    if isOnGem{
        collectGem()
        gems += 1
    }
    if isOnClosedSwitch{
        toggleSwitch()
        swits += 1
        if swits == gems {
            break
        }
    }
    if [3, 5, 7, 9, 11, 13, 15].contains(k) {
        turnRight()
    }
}
////////////////////////////////

````


```Swift
// 2.1.8
// v- 4 

var gems = 0, swits = 0
moveForward()

for k in 1...15 {
    moveForward()
    if isOnGem {
        collectGem()
        gems += 1
    }
    if isOnClosedSwitch {
        toggleSwitch()
        swits += 1
        if swits == gems { break }
    }
    if k % 2 != 0  && k > 2 { turnRight() }
}


////////////////////////////////

````
### 2.1.9 Collect the total

```Swift
// 2.1.9
// v- 0

let totalGems = randomNumberOfGems
var gems = 0

while gems < totalGems{
    if !isBlocked && isBlockedRight {
        moveForward()
        if isOnGem{
            collectGem()
            gems += 1
        }
    } else if isBlocked && !isBlockedRight{
        turnRight()
        moveForward()
        if isOnGem{
            collectGem()
            gems += 1
        }
    }  else if isBlocked && !isBlockedLeft{
        turnLeft()
        moveForward()
        if isOnGem{
            collectGem()
            gems += 1
        }
    } else if isBlocked{
        turnLeft()
        turnLeft()
        moveForward()
    }
}



////////////////////////////////

````

```Swift
// 2.1.9
// v- 1

let totalGems = randomNumberOfGems

var gems = 0
while gems < totalGems {
    moveForward()
    if isOnGem {
        collectGem()
           gems += 1
    }
 
    if isBlocked && !isBlockedRight {
        turnRight()
    }
    else if isBlocked && !isBlockedLeft {
        turnLeft()
    }
    else if isBlocked && isBlockedLeft && isBlockedRight {
        turnLeft()
        turnLeft()
    }
}
////////////////////////////////

````


```Swift
// 2.1.9
// v- 3

let totalGems = randomNumberOfGems
var gems = 0

func clear() {
    moveForward()
    if isOnGem{
        collectGem()
        gems += 1
    }
}

func whenBlockedDo() {
    !isBlockedRight ? turnRight() : ()
    !isBlockedLeft  ? turnLeft()  : ()
    if isBlocked { turnLeft(); turnLeft() }
}

while gems < totalGems {
    clear()
    whenBlockedDo()
}



////////////////////////////////

````
