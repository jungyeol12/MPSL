<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/side-menu.jsp" %>

<main class="table">
        <section class="table__header">
            <h1>Server Lists</h1>
            <a href="/MPSL/createServer.jsp"><button class="add"> + </button></a>
            <div class="input-group">
                <input type="search" placeholder="Search Data...">
                <img src="images/search.svg" alt="search">
            </div>
        </section>
        <section class="table__body">
            <table>
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Name</th>
                        <th>Version</th>
                        <th>Address</th>
                        <th>OS</th>
                        <th>Member</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td> 1 </td>
                        <td> <img src="images/popcat.jpg" alt="profile">Zinzu Chan Lee</td>
                        <td> 1.12.2 </td>   
                        <td> 17 Dec, 2022</td>
                        <td>
                            <p class="status" id="PC">PC</p>
                        </td>
                        <td>1/20</td>
                    </tr>
                    <tr>
                        <td> 2 </td>
                        <td> <img src="images/popcat.jpg" alt="profile">Zinzu Chan Lee</td>
                        <td> 최신 버전 </td>   
                        <td> 27 Aug, 2023</td>
                        <td>
                            <p class="status" id="Mobile">Mobile</p>
                        </td>
                        <td>1/20</td>
                    </tr>
                    <tr>
                        <td> 3 </td>
                        <td> <img src="images/popcat.jpg" alt="profile">Zinzu Chan Lee</td>
                        <td> 1.12.2 </td>   
                        <td> 25 May, 2023</td>
                        <td>
                            <p class="status" id="PC">PC</p>
                        </td>
                        <td>1/20</td>
                    </tr>
                    <tr>
                        <td> 4 </td>
                        <td> <img src="images/popcat.jpg" alt="profile">Zinzu Chan Lee</td>
                        <td> 최신 버전 </td>   
                        <td> 25 May, 2023</td>
                        <td>
                            <p class="status" id="Mobile">Mobile</p>
                        </td>
                        <td>1/20</td>
                    </tr>
                    <tr>
                        <td> 5 </td>
                        <td> <img src="images/popcat.jpg" alt="profile">Zinzu Chan Lee</td>
                        <td> 1.12.2 </td>   
                        <td> 25 May, 2023</td>
                        <td>
                            <p class="status" id="PC">PC</p>
                        </td>
                        <td>1/20</td>
                    </tr>
                    <tr>
                        <td> 6 </td>
                        <td> <img src="images/popcat.jpg" alt="profile">Zinzu Chan Lee</td>
                        <td> 1.12.2 </td>   
                        <td> 25 May, 2023</td>
                        <td>
                            <p class="status" id="PC">PC</p>
                        </td>
                        <td>1/20</td>
                    </tr>
                    <tr>
                        <td> 7 </td>
                        <td> <img src="images/popcat.jpg" alt="profile">Zinzu Chan Lee</td>
                        <td> 최신 버전 </td>   
                        <td> 25 May, 2023</td>
                        <td>
                            <p class="status" id="Mobile">Mobile</p>
                        </td>
                        <td>1/20</td>
                    </tr>
                </tbody>
            </table>
        </section>
    </main>
</body>
</html>