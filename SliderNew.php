<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Parallax Slider with GSAP</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js"></script>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }
        
        .slider {
            position: relative;
            width: 100%;
            height: 70vh; /* Adjust the height here */
            overflow: hidden;
            z-index: 0; /* Lower z-index to ensure the slider appears below the header */
        }

        /* Black ribbon to display slider text */
        .slider::after {
            content: attr(data-text);
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 100%;
            background-color: black;
            color: white;
            padding: 5px;
            box-sizing: border-box;
            text-align: center;
            font-size: 14px;
            opacity: 0.8;
            z-index: 2; /* Ensure ribbon is above dots */
            border-radius: 5px;
        }

        .slide {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: flex-end; /* Align text to the bottom */
            flex-direction: column;
            text-align: left; /* Align text to the left */
            color: white;
            box-sizing: border-box; /* Include padding in width/height */
            opacity: 0;
            transition: opacity 0.5s ease; /* Transition opacity */
        }
        
        .slide.active {
            opacity: 1;
        }
        
        .slider-controls {
            position: absolute;
            bottom: 40px;
            left: 50%;
            transform: translateX(-50%);
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 3; /* Ensure dots are above ribbon */
        }
        
        .slider-dot {
            width: 8px;
            height: 8px;
            background-color: transparent;
            border: 2px solid white;
            border-radius: 50%;
            margin: 0 5px;
            cursor: pointer;
        }
        
        .slider-dot.active {
            background-color: white;
        }
    </style>
</head>
<body>
    <div class="slider" data-text="Multi story Building">
        <div class="slide active" style="background-image: url('images/p2.jpg');"></div>
        <div class="slide" style="background-image: url('images/p1.jpg');"></div>
        <div class="slide" style="background-image: url('images/p3.jpg');"></div>
        <div class="slider-controls">
            <div class="slider-dot" id="dot1"></div>
            <div class="slider-dot" id="dot2"></div>
            <div class="slider-dot" id="dot3"></div>
        </div>
    </div>
    <script>
        const slides = document.querySelectorAll('.slide');
        const dots = document.querySelectorAll('.slider-dot');
        const slideTexts = ["Multi Story Building", "Green Campus", "Large Garden"]; // Array of texts for each slide
        let currentSlide = 0;

        function showSlide(index) {
            slides.forEach((slide, i) => {
                if (i === index) {
                    slide.classList.add('active');
                    document.querySelector('.slider').setAttribute('data-text', slideTexts[i]); // Set text for current slide
                    dots[i].classList.add('active');
                } else {
                    slide.classList.remove('active');
                    dots[i].classList.remove('active');
                }
            });
        }

        function goToSlide(index) {
            currentSlide = index;
            showSlide(currentSlide);
        }

        dots.forEach((dot, index) => {
            dot.addEventListener('click', () => {
                goToSlide(index);
            });
        });

        function nextSlide() {
            currentSlide = (currentSlide + 1) % slides.length;
            showSlide(currentSlide);
        }

        function prevSlide() {
            currentSlide = (currentSlide - 1 + slides.length) % slides.length;
            showSlide(currentSlide);
        }

        setInterval(nextSlide, 5000); // Change slide every 5 seconds
    </script>
</body>
</html>
