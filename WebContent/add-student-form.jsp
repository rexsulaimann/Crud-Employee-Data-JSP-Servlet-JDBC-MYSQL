<!DOCTYPE html>
<html>
<head>
    <title>Add Employee</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="flex flex-col min-h-screen bg-gray-50">
    <!-- Header -->
    <header class="bg-blue-900 text-white p-4 text-center">
        <h1 class="text-2xl font-bold">PT. Bumi Sejahtera</h1>
    </header>

    <!-- Main Content -->
    <main class="flex-grow p-6">
        <div class="max-w-2xl mx-auto">
            <div class="bg-white shadow-md rounded-lg p-6">
                <h2 class="text-xl font-semibold mb-6">Add Employee</h2>

                <form action="StudentControllerServlet" method="GET">
                    <input type="hidden" name="command" value="ADD" />

                    <div class="space-y-6">
                        <!-- First Name -->
                        <div class="grid grid-cols-1 md:grid-cols-4 gap-4 items-center">
                            <label class="text-sm font-medium text-gray-700">First Name:</label>
                            <div class="md:col-span-3">
                                <input type="text" 
                                       name="firstName"
                                       class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm"
                                       style="border: 1px solid #D1D5DB; padding: 8px 12px;"
                                />
                            </div>
                        </div>

                        <!-- Last Name -->
                        <div class="grid grid-cols-1 md:grid-cols-4 gap-4 items-center">
                            <label class="text-sm font-medium text-gray-700">Last Name:</label>
                            <div class="md:col-span-3">
                                <input type="text" 
                                       name="lastName"
                                       class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm"
                                       style="border: 1px solid #D1D5DB; padding: 8px 12px;"
                                />
                            </div>
                        </div>

                        <!-- Email -->
                        <div class="grid grid-cols-1 md:grid-cols-4 gap-4 items-center">
                            <label class="text-sm font-medium text-gray-700">Email:</label>
                            <div class="md:col-span-3">
                                <input type="email" 
                                       name="email"
                                       class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm"
                                       style="border: 1px solid #D1D5DB; padding: 8px 12px;"
                                />
                            </div>
                        </div>

                        <!-- Job Title -->
                        <div class="grid grid-cols-1 md:grid-cols-4 gap-4 items-center">
                            <label class="text-sm font-medium text-gray-700">Job Title:</label>
                            <div class="md:col-span-3">
                                <input type="text" 
                                       name="designation"
                                       class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm"
                                       style="border: 1px solid #D1D5DB; padding: 8px 12px;"
                                />
                            </div>
                        </div>

                        <!-- Phone Number -->
                        <div class="grid grid-cols-1 md:grid-cols-4 gap-4 items-center">
                            <label class="text-sm font-medium text-gray-700">Phone Number:</label>
                            <div class="md:col-span-3">
                                <input type="number" 
                                       name="contact"
                                       class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm"
                                       style="border: 1px solid #D1D5DB; padding: 8px 12px;"
                                />
                            </div>
                        </div>

                        <!-- Buttons -->
                        <div class="flex justify-end space-x-4 pt-4">
                            <a href="StudentControllerServlet" 
                               class="px-4 py-2 text-sm font-medium text-gray-700 bg-white border border-gray-300 rounded-md shadow-sm hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500">
                                Back to List
                            </a>
                            <button type="submit" 
                                    class="px-4 py-2 text-sm font-medium text-white bg-blue-600 border border-transparent rounded-md shadow-sm hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500">
                                Save
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-white border-t mt-auto py-4 px-6 text-center text-gray-600 text-sm">
        Developed By Group 8 at Universitas Islam Negeri Jakarta
    </footer>
</body>
</html>