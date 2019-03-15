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
			
				<!-- <h1> Asian Restaurant One |  <a href="index.html" style="font-size: 70%">HOME</a></h1> -->
				
				<h1><xsl:apply-templates select="online_food_delivery/restaurants/restaurants_name/name"/> |  <a href="index.html" style="font-size: 70%">HOME</a></h1>
				<a href="XML_DTD_RESTAURANT_ONE.xml">
					<h3><xsl:apply-templates select="online_food_delivery/restaurants/restaurants_name/url"/></h3>
				</a>
				
				<blockquote class="bq_des">
				
				<xsl:apply-templates select="online_food_delivery/restaurants/restaurants_name/discription"/>
				
				</blockquote>
				
				<h2>Contact Details</h2>
				
				<ul>
				
					<li>Phone Number: <xsl:apply-templates select="online_food_delivery/restaurants/address/phone_number"/></li>
					<li>Address: <xsl:apply-templates select="online_food_delivery/restaurants/address/location/street_number"/>,
					<xsl:apply-templates select="online_food_delivery/restaurants/address/location/street_name"/>,
					<xsl:apply-templates select="online_food_delivery/restaurants/address/location/suburb"/>,
					<xsl:apply-templates select="online_food_delivery/restaurants/address/location/post_code"/></li>
				</ul>
				
				<h2>Open Days, Hours and Price</h2>
				
				<div class="pricing">
				<h4>Minimum Price:</h4> 
				<p class="dollor">$ <xsl:apply-templates select="online_food_delivery/restaurants/price/mininum_price/dollor"/> :
				<xsl:apply-templates select="online_food_delivery/restaurants/price/mininum_price/cent"/></p>
				
				<h4>Delivery_fee:</h4>
				<p class="dollor">$ <xsl:apply-templates select="online_food_delivery/restaurants/price/delivery_fee/dollor_df"/> :
				<xsl:apply-templates select="online_food_delivery/restaurants/price/delivery_fee/cent_df"/></p>
				
				<h4>Average Cost:</h4>
				<p class="dollor">$ <xsl:apply-templates select ="online_food_delivery/restaurants/price/average_cost/dollor_ac"/> :
				<xsl:apply-templates select="online_food_delivery/restaurants/price/average_cost/dollor_ac"/></p>
				</div>
				
				
				
				
				
				<table>
				
				
				<tr>				
					<td>Monday</td>	
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/days_open/monday"/></td>
					<td>Open Time:</td>
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/open_time/hour_open"/>
					<xsl:apply-templates select="online_food_delivery/restaurants/hours/open_time/am_open"/></td>
					<td>Close Time:</td>
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/close_time/hour_close"/>
					<xsl:apply-templates select="online_food_delivery/restaurants/hours/close_time/pm_close"/></td>
				</tr>
				<tr>
					<td>Tuesday</td>
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/days_open/tuesday"/></td>
					<td>Open Time:</td>
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/open_time/hour_open"/>
					<xsl:apply-templates select="online_food_delivery/restaurants/hours/open_time/am_open"/></td>
					<td>Close Time:</td>
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/close_time/hour_close"/>
					<xsl:apply-templates select="online_food_delivery/restaurants/hours/close_time/pm_close"/></td>
				</tr>
				<tr>
					<td>Wednesday</td>
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/days_open/wednesday"/></td>
					<td>Open Time:</td>
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/open_time/hour_open"/>
					<xsl:apply-templates select="online_food_delivery/restaurants/hours/open_time/am_open"/></td>
					<td>Close Time:</td>
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/close_time/hour_close"/>
					<xsl:apply-templates select="online_food_delivery/restaurants/hours/close_time/pm_close"/></td>
				</tr>
				<tr>
					<td>Thursday</td>
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/days_open/thursday"/></td>
					<td>Open Time:</td>
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/open_time/hour_open"/>
					<xsl:apply-templates select="online_food_delivery/restaurants/hours/open_time/am_open"/></td>
					<td>Close Time:</td>
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/close_time/hour_close"/>
					<xsl:apply-templates select="online_food_delivery/restaurants/hours/close_time/pm_close"/></td>
				</tr>
				<tr>
					<td>Friday</td>
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/days_open/friday"/></td>
					<td>Open Time:</td>
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/open_time/hour_open"/>
					<xsl:apply-templates select="online_food_delivery/restaurants/hours/open_time/am_open"/></td>
					<td>Close Time:</td>
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/close_time/hour_close"/>
					<xsl:apply-templates select="online_food_delivery/restaurants/hours/close_time/pm_close"/></td>
				</tr>
				<tr>
					<td>Saturday</td>
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/days_open/saturday"/></td>
					<td>Open Time:</td>
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/open_time/hour_open"/>
					<xsl:apply-templates select="online_food_delivery/restaurants/hours/open_time/am_open"/></td>
					<td>Close Time:</td>
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/close_time/hour_close"/>
					<xsl:apply-templates select="online_food_delivery/restaurants/hours/close_time/pm_close"/></td>
				</tr>
				<tr>
					<td>Sunday</td>
					<td><xsl:apply-templates select="online_food_delivery/restaurants/hours/days_open/sunday"/></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				</table>
			</body>
		
		</html>
	   
    </xsl:template>
	
	<xsl:template match="online_food_delivery">
	
		<xsl:value-of select="online_food_delivery/restaurants/restaurants_name/name"/>
		<xsl:value-of select="online_food_delivery/restaurants/restaurants_name/url"/>
		<xsl:value-of select="online_food_delivery/restaurants/hours/days_open/monday"/>
		<xsl:value-of select="online_food_delivery/restaurants/hours/days_open/tuesday"/>
		<xsl:value-of select="online_food_delivery/restaurants/hours/days_open/wednesday"/>
		<xsl:value-of select="online_food_delivery/restaurants/hours/days_open/thursday"/>
		<xsl:value-of select="online_food_delivery/restaurants/hours/days_open/friday"/>
		<xsl:value-of select="online_food_delivery/restaurants/hours/days_open/saturday"/>
		<xsl:value-of select="online_food_delivery/restaurants/hours/days_open/sunday"/>
		
	</xsl:template>
	
</xsl:stylesheet> 