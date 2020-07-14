<!-- Container Footer -->
<div id="footer">
	<!-- Container Inneres des Footer  -->
	<div id="innerFooter">
		<!-- Container Erstes Footer Element  -->
		<div id="firstInnerFooterChild">
			<img style="width: 20%" src="images/JSP_Elemente/Logo_100.png"
				alt="Logo">
		</div>
		<!-- Container Restliche Footer Element  -->
		<div class="otherInnerFooterChild">
			<a href="Terms.jsp" hreflang="de" target="_self">Terms of use</a>
		</div>
		<!-- Container Restliche Footer Element  -->
		<div class="otherInnerFooterChild">
			<a href="DataProtection.jsp" hreflang="de" target="_self">Data
				protection</a>
		</div>
		<!-- Container Restliche Footer Element  -->
		<div class="otherInnerFooterChild">
			<a href="Contact.jsp" hreflang="de" target="_self">Contact us</a>
		</div>
		<!-- Container Restliche Footer Element  -->
		<div class="otherInnerFooterChild">
			<a href="Imprint.jsp" hreflang="de" target="_self">Imprint</a>
		</div>
	</div>
</div>
<!-- JQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.js"
	type="text/javascript"></script>
<!-- Script anklicken Symbole von JQuery -->
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