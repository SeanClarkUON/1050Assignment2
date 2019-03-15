<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output metdod="html"/>

	<xsl:template match="/">

		<html>
		
			<head>
			
				<title>Insert Title Here</title>
				<meta charset="UTF-8"/>
				<meta name="viewport" content="widtd=device-widtd, initial-scale=1.0"/>
				<!-- <img src="img_girl.jpg" style="widtd:100%;"> -->
				<link rel="stylesheet" type="text/css" href="style.css" />
	
			
			</head>
			
			<body>
			
				<h1>Restaurant One</h1>
				
				<xsl:apply-templates select="restaurants/restaurants_name/name"/>
					
				
			</body>
		
		</html>
	   
    </xsl:template>
	
	<xsl:template match="online_food_delivery">
	
		<xsl:value-of select="restaurants/restaurants_name/name"/>
		<!-- <xsl:value-of select="restaurants/restaurants_name/url"/> -->
	
		
	</xsl:template>
	
</xsl:stylesheet> 