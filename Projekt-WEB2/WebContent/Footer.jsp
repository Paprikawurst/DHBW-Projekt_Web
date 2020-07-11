<!-- Container Footer  -->
<div id="footer">
	<!-- Container Inneres des Footer  -->
	<div id="innerFooter">
		<!-- Container Erstes Footer Element  -->
		<div id="firstInnerFooterChild">
			<img
				src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/1200px-Instagram_logo_2016.svg.png"
				alt="">
		</div>
		<!-- Container Restliche Footer Element  -->
		<div class="otherInnerFooterChild">
			<h2>Terms of use?</h2>
			<a href="Terms.jsp">Terms of use</a>
		</div>
		<!-- Container Restliche Footer Element  -->
		<div class="otherInnerFooterChild">
			<h2>Data Protection</h2>
			<a href="DataProtection.jsp">What happens to your data?</a>
		</div>
		<!-- Container Restliche Footer Element  -->
		<div class="otherInnerFooterChild">
			<h2>Any Questions?</h2>
			<a href="Contact.jsp">Contact US</a>
		</div>
		<!-- Container Restliche Footer Element  -->
		<div class="otherInnerFooterChild">
			<h2>Who are we?</h2>
			<a href="Imprint.jsp">Imprint</a>
		</div>
	</div>
</div>
<!-- JQuery  -->
<script src="https://code.jquery.com/jquery-3.3.1.js"
	type="text/javascript"></script>
<!-- Script anklicken Symbole von JQuery  -->
<script type="text/javascript">
	$(document).ready(function() {
		$('.menu-toggle').click(function() {
			$('nav').toggleClass('active')
		})
		$('ul li').click(function() {
			$(this).siblings().removeClass('active');
			$(this).toggleClass('active');
		})
		$('.message a').click(function() {
			$('form').animate({
				height : "toggle",
				opacity : "toggle"
			}, "slow");
		});
	})
</script>