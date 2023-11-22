<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="side-menu.jsp" %>

<main class="table">
        <section class="table__header">
            <h1>Add Server</h1>
        </section>
        <section class="table__body">
            <table>
                <form action="/MPSL/login" method="post">
                	<div class="select-box">
                		<label for="ver">Versions</label>
			        	<select name="version" id="ver">
				        	<option value="NewVersion">최신 버전</option>
				        	<option value="1.21">1.21</option>
				        	<option value="1.20">1.20</option>
			        		<option value="1.19">1.19.x</option>
			        		<option value="1.18">1.18.x</option>
			        		<option value="1.19">1.19.x</option>
			        		<option value="1.14">1.14.x</option>
			        		<option value="1.12.2">1.12.2</option>
			        	</select>
			        </div>
			        <div class="address-box">
			        	<label for="add">Address</label>
			        	<input type="text" id="add" name="address">
			        </div>
			        <div class="os-box">
			        	<label for="pc">PC</label> 
			        	<input type="radio" id="os" name="OS">
			        	<label for="mobile">Mobile</label> 
			        	<input type="radio" id="os" name="OS">
			        </div>
			        <input class="sub-button" type="submit" value="Submit">
			    </form>
            </table>
        </section>
    </main>

</body>
</html>