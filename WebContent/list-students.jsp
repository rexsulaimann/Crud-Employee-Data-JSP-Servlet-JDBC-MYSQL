<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Management System</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="flex flex-col min-h-screen bg-gray-50">
    <!-- Header -->
    <header class="bg-blue-900 text-white p-4 text-center">
        <h1 class="text-2xl font-bold">PT. Bumi Sejahtera</h1>
    </header>

    <!-- Main Content -->
    <main class="flex-grow p-6">
        <div class="max-w-7xl mx-auto">
            <h2 class="text-xl font-semibold mb-4">Management Dashboard</h2>
            
            <!-- Buttons -->
            <div class="mb-6 space-x-2">
                <input type="button" value="Add Employee"
                    onclick="window.location.href='add-student-form.jsp'; return false;"
                    class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700 cursor-pointer"
                />
                

            <!-- Table -->
            <div class="overflow-x-auto bg-white rounded-lg shadow">
                <table class="min-w-full divide-y divide-gray-200">
                    <thead class="bg-gray-50">
                        <tr>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">First Name</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Last Name</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Email</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Job Title</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Contact</th>
                            <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Action</th>
                        </tr>
                    </thead>
                    <tbody class="bg-white divide-y divide-gray-200">
                        <c:forEach var="tempStudent" items="${STUDENT_LIST}">
                            <!-- set up links -->
                            <c:url var="tempLink" value="StudentControllerServlet">
                                <c:param name="command" value="LOAD" />
                                <c:param name="studentId" value="${tempStudent.id}" />
                            </c:url>

                            <c:url var="deleteLink" value="StudentControllerServlet">
                                <c:param name="command" value="DELETE" />
                                <c:param name="studentId" value="${tempStudent.id}" />
                            </c:url>

                            <tr class="hover:bg-gray-50">
                                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">${tempStudent.firstName}</td>
                                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">${tempStudent.lastName}</td>
                                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">${tempStudent.email}</td>
                                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">${tempStudent.designation}</td>
                                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">${tempStudent.contact}</td>
                                <td class="px-6 py-4 whitespace-nowrap text-sm space-x-2">
                                    <a href="${tempLink}" class="text-blue-600 hover:text-blue-900">Edit</a>
                                    <span class="text-gray-300">|</span>
                                    <a href="${deleteLink}" 
                                       onclick="if (!(confirm('Are you sure you want to delete this employee?'))) return false"
                                       class="text-red-600 hover:text-red-900">
                                        Delete
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-white border-t mt-auto py-4 px-6 text-center text-gray-600 text-sm">
        Developed By Group 8 at Universitas Islam Negeri Jakarta
    </footer>

</body>
</html>