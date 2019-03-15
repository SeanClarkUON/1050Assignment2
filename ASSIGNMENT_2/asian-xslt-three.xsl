<!-- Asian_XSLT | XSL Transform Page | Sean_Clark | c3269995 | SENG_1050 | Assignment_Two | XSLT | Created_10/08/2017 -->

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>

	<xsl:template match="/">

		<html>
		
			<head>
			
				<title>Restaurant Online Delivery</title>
				<meta charset="UTF-8"/>
				<meta name="viewport" content="widtd=device-widtd, initial-scale=1.0"/>
				<!-- <img src="img_girl.jpg" style="widtd:100%;"> -->
				<link rel="stylesheet" type="text/css" href="style.css" />
			
			</head>
			
			<body>
			
				<h1>Asian Restaurants |  <a href="index.html" style="font-size: 70%">HOME</a></h1>
				
				<!-- Currently links to XSLT for Asian restaurants. However, all would behave in the same way for each cusine type. -->
				<ul class="ultop">
					<li><a href="asian_rests.xml">ASIAN</a></li>
					<li><a href="asian_rests.xml">BURGER</a></li>
					<li><a href="asian_rests.xml">ITALIAN</a></li>
					<li><a href="asian_rests.xml">INDIAN</a></li>
					<li><a href="asian_rests.xml">BBQ AND GRILL</a></li>
					<li><a href="asian_rests.xml">THAI</a></li>
				</ul>
				
				
				<xsl:for-each select="online_food_delivery/rest_name">
				
					<!-- H1 Heading -->
					<h1>
					<!-- Restaurant Logo/Img -->
					<img width="100" height="100">
						<xsl:attribute name="src">
							<xsl:value-of select="logo"/>
						</xsl:attribute>
					</img>
					<xsl:apply-templates select="name"/>
					</h1>
					
					<!-- discription -->
					<blockquote>
						<xsl:apply-templates select="discription"/>
					</blockquote>
					
					<!-- H3 Heading -->
					<h3>Details</h3>
					
					<!-- Restaurant Details | Website | Address | Open/Close Times | Days | Delivery Details and Cost -->
					<table>
						<tr>
							<td>Website:</td>
							<td><xsl:apply-templates select="url"/></td>
						</tr>
						<tr>
							<td>Phonenumber:</td>
							<td><xsl:apply-templates select="address/phone_number"/></td>
						</tr>
						<tr>
							<td>Address:</td>
							<td><xsl:apply-templates select="address/location"/></td>
						</tr>
					</table>
					
					<h3>Open Times</h3>
					
					<table>
						<tr>
							<td>Open Time:</td>
							<td><xsl:apply-templates select="hours/open"/></td>
						</tr>
						<tr>
							<td>Close Time:</td>
							<td><xsl:apply-templates select="hours/close"/></td>
						</tr>
					</table>
					
					<h3>Open Days</h3>
					
					<table>
						<tr>
							<td>Monday:</td>
							<td><xsl:apply-templates select="hours/days_open/monday"/></td>
						</tr>
						<tr>
							<td>Tuesday:</td>
							<td><xsl:apply-templates select="hours/days_open/tuesday"/></td>
						</tr>
						<tr>
							<td>Wednesday:</td>
							<td><xsl:apply-templates select="hours/days_open/wednesday"/></td>
						</tr>
						<tr>
							<td>Thursday:</td>
							<td><xsl:apply-templates select="hours/days_open/thursday"/></td>
						</tr>
						<tr>
							<td>Friday:</td>
							<td><xsl:apply-templates select="hours/days_open/friday"/></td>
						</tr>
						<tr>
							<td>Saturday:</td>
							<td><xsl:apply-templates select="hours/days_open/saturday"/></td>
						</tr>
						<tr>
							<td>Sunday:</td>
							<td><xsl:apply-templates select="hours/days_open/sunday"/></td>
						</tr>
					</table>
					
					<h3>Pricing</h3>
					
					<table>
						<tr>
							<td>Minimum Price:</td>
							<td>$: <xsl:apply-templates select="price/minimum"/>.00</td>
						</tr>
						<tr>
							<td>Delivery Fee:</td>
							<td>$: <xsl:apply-templates select="price/delivery_fee"/>.00</td>
						</tr>
						<tr>
							<td>Average Price:</td>
							<td>$: <xsl:apply-templates select="price/average"/>.00</td>
						</tr>
					</table>
					
					<h3>Delivery Details:</h3>
					
					<table>
						<tr>
							<td>Max Delivery Distance:</td>
							<td><xsl:apply-templates select="delivery/distance"/> km</td>
						</tr>
						<tr>
							<td>Average Delivery Times:</td>
							<td><xsl:apply-templates select="delivery/average_time"/> m</td>
						</tr>
					</table>
				</xsl:for-each>
				
				
				
			</body>
		
		</html>
	   
    </xsl:template>
	
	<!-- <xsl:template match="online_food_delivery"> -->
	
		<!-- <xsl:value-of select="online_food_delivery/rest_name/name"/> -->
		
	<!-- </xsl:template> -->
	
</xsl:stylesheet> 