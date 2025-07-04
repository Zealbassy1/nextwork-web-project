<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Netflix Clone</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Google Fonts: Inter -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    <style>
        /* Custom styles to supplement Tailwind */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #000;
            color: #fff;
        }
        .hero-bg {
            background-image: linear-gradient(to top, rgba(0, 0, 0, 0.8) 0, rgba(0, 0, 0, 0) 60%, rgba(0, 0, 0, 0.8) 100%), url('https://placehold.co/1920x1080/000000/E50914?text=NETFLIX');
            background-size: cover;
            background-position: center;
        }
        .feature-section {
            border-top: 8px solid #222;
        }
        .faq-question {
            transition: background-color 0.2s ease-in-out;
        }
        .faq-question:hover {
            background-color: #404040;
        }
        .faq-answer {
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.25s cubic-bezier(0.5, 0, 0.1, 1);
        }
        .faq-item.open .faq-answer {
            max-height: 1200px; /* Large enough for content */
        }
        .faq-item.open .faq-icon {
            transform: rotate(45deg);
        }
        .faq-icon {
            transition: transform 0.25s ease-in-out;
        }
        .email-form-label {
            transition: all 0.2s ease-out;
        }
        /* Style for when the input is focused or has value */
        .email-input:focus + .email-form-label,
        .email-input:not(:placeholder-shown) + .email-form-label {
            top: 0.5rem;
            font-size: 0.75rem; /* text-xs */
        }
    </style>
</head>
<body>

    <!-- Header and Hero Section -->
    <div class="hero-bg pb-12">
        <header class="container mx-auto px-4 sm:px-6 lg:px-8 py-6">
            <div class="flex justify-between items-center">
                <!-- Netflix Logo (SVG) -->
                <svg viewBox="0 0 111 30" class="w-24 md:w-36 h-auto fill-current text-red-600" aria-hidden="true">
                  <path d="M105.062 14.281c0 1.344-1.125 2.469-2.531 2.469H94.125v4.688c0 1.406-1.062 2.531-2.469 2.531h-4.031c-1.406 0-2.531-1.125-2.531-2.531V7.406c0-1.406 1.125-2.531 2.531-2.531h4.031c1.406 0 2.469 1.125 2.469 2.531v4.406h5.844c1.406 0 2.531 1.125 2.531 2.469zM91.969 11.844V7.406h-1.844v8.938h1.844v-4.5zM81.875 21.688c-1.219 0-2.5-.938-2.5-2.625V7.406c0-1.562 1.281-2.625 2.5-2.625h4.031c1.219 0 2.375.938 2.375 2.625v11.656c0 1.688-1.156 2.625-2.375 2.625h-4.031zM83.938 7.938h-1.844v11.125h1.844V7.938zM70.312 14.281c0 1.344-1.125 2.469-2.531 2.469H59.438v4.688c0 1.406-1.062 2.531-2.469 2.531h-4.031c-1.406 0-2.531-1.125-2.531-2.531V7.406c0-1.406 1.125-2.531 2.531-2.531h4.031c1.406 0 2.469 1.125 2.469 2.531v4.406h5.844c1.406 0 2.531 1.125 2.531 2.469zM68.219 11.844V7.406h-1.844v8.938h1.844v-4.5zM51.25 21.688c-1.219 0-2.5-.938-2.5-2.625V7.406c0-1.562 1.281-2.625 2.5-2.625h4.031c1.219 0 2.375.938 2.375 2.625v11.656c0 1.688-1.156 2.625-2.375 2.625h-4.031zM53.312 7.938h-1.844v11.125h1.844V7.938zM39.562 21.688c-1.219 0-2.5-.938-2.5-2.625V7.406c0-1.562 1.281-2.625 2.5-2.625h4.031c1.219 0 2.375.938 2.375 2.625v11.656c0 1.688-1.156 2.625-2.375 2.625h-4.031zM41.625 7.938h-1.844v11.125h1.844V7.938zM29.25 16.156c-1.188 0-2.156-.875-2.156-2.188V7.406c0-1.312 1.031-2.281 2.25-2.281h4.031c1.188 0 2.156.969 2.156 2.281v6.562c0 1.312-1.031 2.188-2.25 2.188h-3.969v3.312c0 .812-.625 1.438-1.438 1.438h-4.031c-.812 0-1.438-.625-1.438-1.438V7.406c0-1.312 1.031-2.281 2.25-2.281h4.031c1.188 0 2.156.969 2.156 2.281v2.031h-3.969c-1.188 0-2.156-.875-2.156-2.188V7.406c0-1.312 1.031-2.281 2.25-2.281h4.031c1.188 0 2.156.969 2.156 2.281v6.562c0 1.312-1.031 2.188-2.25 2.188H29.25zM24.812 7.406c0-1.312 1.031-2.281 2.25-2.281h4.031c1.188 0 2.156.969 2.156 2.281v6.562c0 1.312-1.031 2.188-2.25 2.188h-4.031c-1.188 0-2.156-.875-2.156-2.188V7.406zm-4.031 8.75v-6.562c0-1.312 1.031-2.281 2.25-2.281h1.781v8.938H23.03c-1.219 0-2.25-1.031-2.25-2.375zM11.938 21.688c-1.219 0-2.5-.938-2.5-2.625V7.406c0-1.562 1.281-2.625 2.5-2.625h4.031c1.219 0 2.375.938 2.375 2.625v11.656c0 1.688-1.156 2.625-2.375 2.625H11.938zm2.062-13.75h-1.844v11.125h1.844V7.938zM0 14.281c0 1.344-1.125 2.469-2.531 2.469H-10.937v4.688c0 1.406-1.062 2.531-2.469 2.531h-4.031c-1.406 0-2.531-1.125-2.531-2.531V7.406c0-1.406 1.125-2.531 2.531-2.531h4.031c1.406 0 2.469 1.125 2.469 2.531v4.406h5.844c1.406 0 2.531 1.125 2.531 2.469z"></path>
                </svg>
                <a href="#" class="bg-red-600 hover:bg-red-700 text-white font-medium rounded-md text-sm sm:text-base px-4 py-2 transition-colors duration-200">Sign In</a>
            </div>
        </header>

        <div class="container mx-auto px-4 sm:px-6 lg:px-8 text-center mt-20 md:mt-40">
            <h1 class="text-3xl md:text-5xl lg:text-6xl font-black max-w-3xl mx-auto">Unlimited movies, TV shows, and more</h1>
            <h2 class="text-lg md:text-2xl font-medium mt-4">Watch anywhere. Cancel anytime.</h2>
            <form class="mt-6 max-w-2xl mx-auto" onsubmit="event.preventDefault();">
                <h3 class="text-lg md:text-xl mb-4">Ready to watch? Enter your email to create or restart your membership.</h3>
                <div class="flex flex-col sm:flex-row gap-2">
                    <div class="relative flex-grow">
                        <input type="email" id="email" name="email" class="email-input block w-full px-4 py-4 text-white bg-black bg-opacity-70 border border-gray-500 rounded-md focus:outline-none focus:ring-2 focus:ring-white peer" placeholder=" " />
                        <label for="email" class="email-form-label absolute text-gray-400 left-4 top-4 z-10 origin-[0] pointer-events-none">Email address</label>
                    </div>
                    <button type="submit" class="bg-red-600 hover:bg-red-700 text-white text-xl md:text-2xl font-medium rounded-md px-6 py-3 flex items-center justify-center">
                        Get Started
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-6 h-6 ml-2">
                          <path stroke-linecap="round" stroke-linejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                        </svg>
                    </button>
                </div>
            </form>
        </div>
    </div>

    <!-- Feature: Enjoy on your TV -->
    <section class="feature-section py-16 md:py-20">
        <div class="container mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8 items-center">
                <div class="text-center md:text-left">
                    <h2 class="text-3xl md:text-5xl font-black">Enjoy on your TV</h2>
                    <p class="text-lg md:text-2xl mt-4">Watch on Smart TVs, Playstation, Xbox, Chromecast, Apple TV, Blu-ray players, and more.</p>
                </div>
                <div class="relative">
                    <img src="https://placehold.co/600x450/000000/FFFFFF?text=TV+Screen" alt="TV" class="rounded-lg mx-auto">
                </div>
            </div>
        </div>
    </section>

    <!-- Feature: Download your shows -->
    <section class="feature-section py-16 md:py-20">
        <div class="container mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8 items-center">
                <div class="relative order-2 md:order-1">
                    <img src="https://placehold.co/600x450/000000/FFFFFF?text=Mobile+Device" alt="Mobile" class="rounded-lg mx-auto">
                </div>
                <div class="text-center md:text-left order-1 md:order-2">
                    <h2 class="text-3xl md:text-5xl font-black">Download your shows to watch offline</h2>
                    <p class="text-lg md:text-2xl mt-4">Save your favorites easily and always have something to watch.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Feature: Watch everywhere -->
    <section class="feature-section py-16 md:py-20">
        <div class="container mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8 items-center">
                <div class="text-center md:text-left">
                    <h2 class="text-3xl md:text-5xl font-black">Watch everywhere</h2>
                    <p class="text-lg md:text-2xl mt-4">Stream unlimited movies and TV shows on your phone, tablet, laptop, and TV.</p>
                </div>
                <div class="relative">
                     <img src="https://placehold.co/600x450/000000/FFFFFF?text=Multiple+Devices" alt="Devices" class="rounded-lg mx-auto">
                </div>
            </div>
        </div>
    </section>

    <!-- Feature: Create profiles for kids -->
    <section class="feature-section py-16 md:py-20">
        <div class="container mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8 items-center">
                <div class="relative order-2 md:order-1">
                    <img src="https://placehold.co/600x450/000000/FFFFFF?text=Kids+Profile" alt="Kids" class="rounded-lg mx-auto">
                </div>
                <div class="text-center md:text-left order-1 md:order-2">
                    <h2 class="text-3xl md:text-5xl font-black">Create profiles for kids</h2>
                    <p class="text-lg md:text-2xl mt-4">Send kids on adventures with their favorite characters in a space made just for them—free with your membership.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- FAQ Section -->
    <section class="feature-section py-16 md:py-20">
        <div class="container mx-auto px-4 sm:px-6 lg:px-8 max-w-4xl">
            <h2 class="text-3xl md:text-5xl font-black text-center mb-12">Frequently Asked Questions</h2>
            <div class="space-y-2 faq-container">
                <!-- FAQ Item 1 -->
                <div class="faq-item">
                    <button class="faq-question w-full bg-[#303030] p-6 text-left text-xl md:text-2xl flex justify-between items-center">
                        <span>What is Netflix?</span>
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="faq-icon w-8 h-8">
                          <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                        </svg>
                    </button>
                    <div class="faq-answer bg-[#303030] mt-px">
                        <p class="p-6 text-lg md:text-xl">Netflix is a streaming service that offers a wide variety of award-winning TV shows, movies, anime, documentaries, and more on thousands of internet-connected devices. You can watch as much as you want, whenever you want without a single commercial – all for one low monthly price. There's always something new to discover and new TV shows and movies are added every week!</p>
                    </div>
                </div>
                <!-- FAQ Item 2 -->
                <div class="faq-item">
                    <button class="faq-question w-full bg-[#303030] p-6 text-left text-xl md:text-2xl flex justify-between items-center">
                        <span>How much does Netflix cost?</span>
                         <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="faq-icon w-8 h-8">
                          <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                        </svg>
                    </button>
                    <div class="faq-answer bg-[#303030] mt-px">
                        <p class="p-6 text-lg md:text-xl">Watch Netflix on your smartphone, tablet, Smart TV, laptop, or streaming device, all for one fixed monthly fee. Plans range from ₦1,200 to ₦4,400 a month. No extra costs, no contracts.</p>
                    </div>
                </div>
                <!-- FAQ Item 3 -->
                <div class="faq-item">
                    <button class="faq-question w-full bg-[#303030] p-6 text-left text-xl md:text-2xl flex justify-between items-center">
                        <span>Where can I watch?</span>
                         <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="faq-icon w-8 h-8">
                          <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                        </svg>
                    </button>
                    <div class="faq-answer bg-[#303030] mt-px">
                        <p class="p-6 text-lg md:text-xl">Watch anywhere, anytime. Sign in with your Netflix account to watch instantly on the web at netflix.com from your personal computer or on any internet-connected device that offers the Netflix app, including smart TVs, smartphones, tablets, streaming media players and game consoles. You can also download your favorite shows with the iOS, Android, or Windows 10 app. Use downloads to watch while you're on the go and without an internet connection. Take Netflix with you anywhere.</p>
                    </div>
                </div>
                <!-- FAQ Item 4 -->
                <div class="faq-item">
                    <button class="faq-question w-full bg-[#303030] p-6 text-left text-xl md:text-2xl flex justify-between items-center">
                        <span>How do I cancel?</span>
                         <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="faq-icon w-8 h-8">
                          <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                        </svg>
                    </button>
                    <div class="faq-answer bg-[#303030] mt-px">
                        <p class="p-6 text-lg md:text-xl">Netflix is flexible. There are no pesky contracts and no commitments. You can easily cancel your account online in two clicks. There are no cancellation fees – start or stop your account anytime.</p>
                    </div>
                </div>
            </div>
            
            <form class="mt-12 max-w-2xl mx-auto text-center" onsubmit="event.preventDefault();">
                <h3 class="text-lg md:text-xl mb-4">Ready to watch? Enter your email to create or restart your membership.</h3>
                <div class="flex flex-col sm:flex-row gap-2">
                    <div class="relative flex-grow">
                        <input type="email" id="email-bottom" name="email-bottom" class="email-input block w-full px-4 py-4 text-white bg-black bg-opacity-70 border border-gray-500 rounded-md focus:outline-none focus:ring-2 focus:ring-white peer" placeholder=" " />
                        <label for="email-bottom" class="email-form-label absolute text-gray-400 left-4 top-4 z-10 origin-[0] pointer-events-none">Email address</label>
                    </div>
                    <button type="submit" class="bg-red-600 hover:bg-red-700 text-white text-xl md:text-2xl font-medium rounded-md px-6 py-3 flex items-center justify-center">
                        Get Started
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-6 h-6 ml-2">
                          <path stroke-linecap="round" stroke-linejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                        </svg>
                    </button>
                </div>
            </form>

        </div>
    </section>
    
    <!-- Footer -->
    <footer class="feature-section py-16">
        <div class="container mx-auto px-4 sm:px-6 lg:px-8 max-w-5xl text-gray-400">
            <p class="mb-8">Questions? Call <a href="tel:0800-000-0000" class="hover:underline">0800-000-0000</a></p>
            <div class="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-4 gap-4 text-sm">
                <a href="#" class="hover:underline">FAQ</a>
                <a href="#" class="hover:underline">Help Center</a>
                <a href="#" class="hover:underline">Account</a>
                <a href="#" class="hover:underline">Media Center</a>
                <a href="#" class="hover:underline">Investor Relations</a>
                <a href="#" class="hover:underline">Jobs</a>
                <a href="#" class="hover:underline">Ways to Watch</a>
                <a href="#" class="hover:underline">Terms of Use</a>
                <a href="#" class="hover:underline">Privacy</a>
                <a href="#" class="hover:underline">Cookie Preferences</a>
                <a href="#" class="hover:underline">Corporate Information</a>
                <a href="#" class="hover:underline">Contact Us</a>
                <a href="#" class="hover:underline">Speed Test</a>
                <a href="#" class="hover:underline">Legal Notices</a>
                <a href="#" class="hover:underline">Only on Netflix</a>
            </div>
            <p class="mt-8 text-sm">Netflix Nigeria</p>
        </div>
    </footer>


    <script>
        // JavaScript for FAQ accordion
        document.addEventListener('DOMContentLoaded', () => {
            const faqContainer = document.querySelector('.faq-container');

            faqContainer.addEventListener('click', (e) => {
                const questionButton = e.target.closest('.faq-question');
                if (!questionButton) return;

                const faqItem = questionButton.parentElement;
                
                // Close all other items
                const allFaqItems = faqContainer.querySelectorAll('.faq-item');
                allFaqItems.forEach(item => {
                    if (item !== faqItem && item.classList.contains('open')) {
                        item.classList.remove('open');
                    }
                });

                // Toggle the clicked item
                faqItem.classList.toggle('open');
            });
        });
    </script>

</body>
</html>
