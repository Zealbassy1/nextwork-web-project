<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Zeal Motors - Car Dealership</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>

<body class="bg-gray-100 text-gray-800">

    <!-- Navbar -->
    <header class="bg-white shadow-md">
        <div class="container mx-auto px-6 py-4 flex justify-between items-center">
            <h1 class="text-2xl font-bold text-blue-600">Elite Motors</h1>
            <nav class="space-x-6">
                <a href="#" class="text-gray-700 hover:text-blue-600">Home</a>
                <a href="#" class="text-gray-700 hover:text-blue-600">Inventory</a>
                <a href="#" class="text-gray-700 hover:text-blue-600">About</a>
                <a href="#" class="text-gray-700 hover:text-blue-600">Contact</a>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="bg-cover bg-center h-96 text-white"
        style="background-image: url('https://images.unsplash.com/photo-1618945461783-47c6c7cbcd94');">
        <div class="bg-black bg-opacity-60 h-full flex items-center justify-center">
            <div class="text-center">
                <h2 class="text-4xl font-bold mb-4">Find Your Dream Car Today</h2>
                <p class="mb-6 text-lg">New & Used Cars at Unbeatable Prices</p>
                <a href="#" class="bg-blue-600 px-6 py-3 rounded-lg font-semibold hover:bg-blue-700">Browse
                    Inventory</a>
            </div>
        </div>
    </section>

    <!-- Featured Cars -->
    <section class="py-12">
        <div class="container mx-auto px-6">
            <h3 class="text-3xl font-bold mb-8 text-center">Featured Cars</h3>
            <div class="grid gap-8 md:grid-cols-2 lg:grid-cols-3">
                <!-- Car Card -->
                <div class="bg-white shadow-lg rounded-lg overflow-hidden">
                    <img src="https://images.unsplash.com/photo-1600240644455-3d60f3df5bfa" alt="Car 1"
                        class="w-full h-48 object-cover">
                    <div class="p-6">
                        <h4 class="text-xl font-semibold mb-2">2023 Toyota Camry</h4>
                        <p class="text-gray-700 mb-4">$28,000</p>
                        <a href="#" class="text-blue-600 hover:underline">View Details</a>
                    </div>
                </div>
                <!-- Repeat for other cars -->
                <div class="bg-white shadow-lg rounded-lg overflow-hidden">
                    <img src="https://images.unsplash.com/photo-1549924231-f129b911e442" alt="Car 2"
                        class="w-full h-48 object-cover">
                    <div class="p-6">
                        <h4 class="text-xl font-semibold mb-2">2022 Honda Accord</h4>
                        <p class="text-gray-700 mb-4">$26,500</p>
                        <a href="#" class="text-blue-600 hover:underline">View Details</a>
                    </div>
                </div>
                <div class="bg-white shadow-lg rounded-lg overflow-hidden">
                    <img src="https://images.unsplash.com/photo-1607619056572-6c7b4a692e50" alt="Car 3"
                        class="w-full h-48 object-cover">
                    <div class="p-6">
                        <h4 class="text-xl font-semibold mb-2">2021 BMW 3 Series</h4>
                        <p class="text-gray-700 mb-4">$35,900</p>
                        <a href="#" class="text-blue-600 hover:underline">View Details</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section class="bg-blue-600 text-white py-12">
        <div class="container mx-auto px-6 text-center">
            <h3 class="text-3xl font-bold mb-4">Get in Touch</h3>
            <p class="mb-6">Call us or visit our showroom to schedule a test drive today.</p>
            <p><strong>Phone:</strong> (555) 123-4567</p>
            <p><strong>Location:</strong> 123 Elite Drive, Lagos, Nigeria</p>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-800 text-gray-300 py-6">
        <div class="container mx-auto px-6 text-center">
            <p>&copy; 2025 Elite Motors. All rights reserved.</p>
        </div>
    </footer>

</body>

</html>