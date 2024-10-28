<!DOCTYPE html>
<html>
<head>
    <title>Update Employee</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="flex flex-col min-h-screen bg-gray-50">
    <!-- Header -->
    <header class="bg-blue-900 text-white p-4 text-center">
        <h1 class="text-2xl font-bold">PT. Bumi Sejahtera</h1>
    </header>

    <!-- Main Content -->
    <main class="flex-grow p-6">
        <div class="max-w-3xl mx-auto">
            <h2 class="text-xl font-semibold mb-4">Update Employee Details</h2>

            <form action="StudentControllerServlet" method="GET" class="bg-white rounded-lg shadow p-6">
                <input type="hidden" name="command" value="UPDATE" />
                <input type="hidden" name="studentId" value="${THE_STUDENT.id}" />

                <div class="space-y-4">
                    <!-- First Name -->
                    <div class="grid grid-cols-3 items-center">
                        <label class="text-sm font-medium text-gray-700">First Name:</label>
                        <div class="col-span-2">
                            <input type="text" 
                                   name="firstName" 
                                   value="${THE_STUDENT.firstName}"
                                   class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm"
                            />
                        </div>
                    </div>

                    <!-- Last Name -->
                    <div class="grid grid-cols-3 items-center">
                        <label class="text-sm font-medium text-gray-700">Last Name:</label>
                        <div class="col-span-2">
                            <input type="text" 
                                   name="lastName" 
                                   value="${THE_STUDENT.lastName}"
                                   class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm"
                            />
                        </div>
                    </div>

                    <!-- Email -->
                    <div class="grid grid-cols-3 items-center">
                        <label class="text-sm font-medium text-gray-700">Email:</label>
                        <div class="col-span-2">
                            <input type="text" 
                                   name="email" 
                                   value="${THE_STUDENT.email}"
                                   class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm"
                            />
                        </div>
                    </div>

                    <!-- Designation -->
                    <div class="grid grid-cols-3 items-center">
                        <label class="text-sm font-medium text-gray-700">Designation:</label>
                        <div class="col-span-2">
                            <input type="text" 
                                   name="designation" 
                                   value="${THE_STUDENT.designation}"
                                   class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm"
                            />
                        </div>
                    </div>

                    <!-- Phone Number -->
                    <div class="grid grid-cols-3 items-center">
                        <label class="text-sm font-medium text-gray-700">Phone Number:</label>
                        <div class="col-span-2">
                            <input type="number" 
                                   name="contact" 
                                   value="${THE_STUDENT.contact}"
                                   class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500 sm:text-sm"
                            />
                        </div>
                    </div>

                    <!-- Buttons -->
                    <div class="flex justify-end space-x-3 mt-6">
                        <a href="StudentControllerServlet" 
                           class="px-4 py-2 text-sm font-medium text-gray-700 bg-white border border-gray-300 rounded-md hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500">
                            Back to List
                        </a>
                        <button type="submit" 
                                class="px-4 py-2 text-sm font-medium text-white bg-blue-600 border border-transparent rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500">
                            Save
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-white border-t mt-auto py-4 px-6 text-center text-gray-600 text-sm">
        Developed By Group 8 at Universitas Islam Negeri Jakarta
    </footer>
</body>
</html>