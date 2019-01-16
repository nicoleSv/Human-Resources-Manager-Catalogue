<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output method="xml" version="1.0" indent="yes"/>
<xsl:template match="/">
	<fo:root>
		<fo:layout-master-set>
			<fo:simple-page-master page-height="297mm" page-width="210mm"
				margin="5mm 25mm 5mm 25mm" master-name="page">
				<fo:region-body margin="20mm 0mm 20mm 0mm"/>
				 <fo:region-after region-name="xsl-region-after" extent=".6in"/>
			</fo:simple-page-master>
		</fo:layout-master-set>

<!--===========================HeaderPage===============================-->
		
		<fo:page-sequence master-reference="page">
			<fo:static-content flow-name="xsl-region-after">
					<fo:block background-color="#F16625" color="#FFFFFF" padding="1mm" font-weight="bold" font-size="13pt" text-align = "left" >Gaming Fox</fo:block>
			</fo:static-content>
			<fo:flow flow-name="xsl-region-body">
			
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm" >
					
						<fo:block position="absolute" text-align ="center" font-weight="bold" margin-left="2cm" font-family="Times New Roman" font-size="48pt" padding-before="50mm" color="black">
							<xsl:value-of select="/company/@name"/>
						</fo:block>
						
						<fo:block position="absolute" text-align = "center" padding-before = "5mm" margin-left="2cm" content-height="250" content-width="350">
							<xsl:apply-templates select="/company/about/logo"/>
						</fo:block>
						
						<fo:block position="absolute" text-align = "left" font-size="15pt" font-weight="bold" padding-before = "5mm" margin-left="2cm">
							About Us
						</fo:block>
						
						<fo:block position="relative" font-family="Times New Roman"  font-size="10pt" text-align = "justify"  padding-before = "5mm" margin-left="2cm">
							<xsl:value-of select="/company/about/information"/> 
						</fo:block>

						<fo:block position="absolute" text-align = "left" font-weight="bold" font-size="15pt" padding-before = "5mm" margin-left="2cm">
							"You want to be involved in making something fun and to have fun while making it."
						</fo:block>
						
						<fo:block position="relative" font-family="Times New Roman"  font-size="10pt" text-align = "justify" padding-before = "5mm" margin-left="2cm">
							<xsl:value-of select="/company/about/products"/> 
						</fo:block> 
						
				</fo:block-container>
			</fo:flow>
			
		</fo:page-sequence>
		
<!--===============================Organization=================================-->

<!--===============================Board of directors=================================-->
		<fo:page-sequence master-reference="page">
			<fo:static-content flow-name="xsl-region-after">
				<fo:block background-color="#F5B041" color="#FDFEFE" padding="1mm" font-weight="bold" font-size="13pt" >Gaming Fox</fo:block>
			</fo:static-content>
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute">
					<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="4mm" keep-with-next="always">
						<fo:leader leader-pattern="rule" leader-length="100%" rule-style="solid" rule-thickness="2pt"/>
					</fo:block>
				
					<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="2mm" keep-with-next="always">
						Organization
					</fo:block>
					
					<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="5mm" keep-with-next="always">
						<fo:leader leader-pattern="rule" leader-length="100%" rule-style="solid" rule-thickness="2pt"/>
					</fo:block>
						
					<fo:block text-align = "center" font-weight="bold" font-size="20pt" padding-after="1mm" padding-before="5mm" keep-with-next="always">
							Board of Directors
					</fo:block>
				
					<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="5mm" keep-with-next="always">
						<fo:leader leader-pattern="rule" leader-length="50%" rule-style="solid" rule-thickness="2pt"/>
					</fo:block>
						
						<xsl:for-each select="/company/levels/topLevel/boardOfDirectors/employeeList">
							<fo:block position="absolute" text-align = "center" font-weight="bold">
								<xsl:apply-templates select="./employee"/>
							</fo:block>
						</xsl:for-each>
							
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--===============================Chief Officer & Presidents =================================-->
		<fo:page-sequence master-reference="page">
			<fo:static-content flow-name="xsl-region-after">
					<fo:block background-color="#F5B041" color="#FDFEFE" padding="1mm" font-weight="bold" font-size="13pt" >Gaming Fox</fo:block>
			</fo:static-content>
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute">
					
						<fo:block text-align = "center" font-weight="bold" font-size="20pt" padding-after="1mm" padding-before="5mm" keep-with-next="always">
							Chief Officer
						</fo:block>
						
						<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="5mm" keep-with-next="always">
							<fo:leader leader-pattern="rule" leader-length="50%" rule-style="solid" rule-thickness="2pt"/>
						</fo:block>
						
						<fo:block position="absolute" text-align = "center" font-weight="bold">
							<xsl:apply-templates select="/company/levels/topLevel/chiefOfficer/employee"/>
						</fo:block>
						
						<fo:block text-align = "center" font-weight="bold" font-size="20pt" padding-after="1mm" padding-before="5mm" keep-with-next="always">
							President
						</fo:block>
						
						<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="5mm" keep-with-next="always">
							<fo:leader leader-pattern="rule" leader-length="50%" rule-style="solid" rule-thickness="2pt"/>
						</fo:block>
						
						<fo:block position="absolute" text-align = "center" font-weight="bold">
							<xsl:apply-templates select="/company/levels/topLevel/president/employee"/>
						</fo:block>
						
						<fo:block text-align = "center" font-weight="bold" font-size="20pt" padding-after="1mm" padding-before="5mm" keep-with-next="always">
							Vice President
						</fo:block>
						
						<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="5mm" keep-with-next="always">
							<fo:leader leader-pattern="rule" leader-length="50%" rule-style="solid" rule-thickness="2pt"/>
						</fo:block>
						
						<fo:block position="absolute" text-align = "center" font-weight="bold">
							<xsl:apply-templates select="/company/levels/topLevel/vicePresident/employee"/>
						</fo:block>
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--===============================Departments=================================-->	

<fo:page-sequence master-reference="page">
	<fo:static-content flow-name="xsl-region-after">
		<fo:block background-color="#F5B041" color="#FDFEFE" padding="1mm" font-weight="bold" font-size="13pt" >Gaming Fox</fo:block>
	</fo:static-content>
			
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute">
					
					<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="4mm" keep-with-next="always">
						<fo:leader leader-pattern="rule" leader-length="100%" rule-style="solid" rule-thickness="2pt"/>
					</fo:block>
				
					<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="2mm" keep-with-next="always">
						Departments
					</fo:block>
				
					<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="5mm" keep-with-next="always">
						<fo:leader leader-pattern="rule" leader-length="100%" rule-style="solid" rule-thickness="2pt"/>
					</fo:block>
						
						<fo:block>
							<fo:table>	
								<fo:table-column column-width="230"/>
								<fo:table-column column-width="230"/>
   		 						<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block>
												<fo:external-graphic src="{unparsed-entity-uri(/company/levels/midLevel/departmentsList/department[@name='Marketing']/@image_src)}" content-height="110" content-width="230" scaling="non-uniform"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block>
												<fo:external-graphic src="{unparsed-entity-uri(/company/levels/midLevel/departmentsList/department[@name='Engineering and Technology']/@image_src)}" content-height="110" content-width="230" scaling="non-uniform"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block>
												<fo:external-graphic src="{unparsed-entity-uri(/company/levels/midLevel/departmentsList/department[@name='Sales']/@image_src)}" content-height="110" content-width="230" scaling="non-uniform"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
												<fo:block>
												<fo:external-graphic src="{unparsed-entity-uri(/company/levels/midLevel/departmentsList/department[@name='Finances']/@image_src)}" content-height="110" content-width="230" scaling="non-uniform"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block>
												<fo:external-graphic src="{unparsed-entity-uri(/company/levels/midLevel/departmentsList/department[@name='Legal']/@image_src)}" content-height="110" content-width="230" scaling="non-uniform"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block>
												<fo:external-graphic src="{unparsed-entity-uri(/company/levels/midLevel/departmentsList/department[@name='Client Support']/@image_src)}" content-height="110" content-width="230" scaling="non-uniform"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block>
												<fo:external-graphic src="{unparsed-entity-uri(/company/levels/midLevel/departmentsList/department[@name='Human Resources']/@image_src)}" content-height="110" content-width="230" scaling="non-uniform"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block>
												<fo:external-graphic src="{unparsed-entity-uri(/company/levels/midLevel/departmentsList/department[@name='Administration']/@image_src)}" content-height="110" content-width="230" scaling="non-uniform"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
    							</fo:table-body>
							</fo:table>
						</fo:block>
		
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>	
			
<!--===============================Departments=================================-->	

<fo:page-sequence master-reference="page">
	<fo:static-content flow-name="xsl-region-after">
		<fo:block background-color="#F5B041" color="#FDFEFE" padding="1mm" font-weight="bold" font-size="13pt" >Gaming Fox</fo:block>
	</fo:static-content>
			<fo:flow flow-name="xsl-region-body">
				<fo:block position ="absolute">
						<xsl:for-each select="/company/levels/midLevel/departmentsList">
							<xsl:apply-templates select="./department"/>
						</xsl:for-each>		
								
				</fo:block>
			</fo:flow>
		</fo:page-sequence>
		
<!--===============================The End of Departments===========================-->


<fo:page-sequence master-reference="page">

			<fo:static-content flow-name="xsl-region-after">
					<fo:block background-color="#F5B041" color="#FDFEFE" padding="1mm" font-weight="bold" font-size="13pt" >Gaming Fox</fo:block>
			</fo:static-content>
			
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute">
					
					<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="4mm" keep-with-next="always">
						<fo:leader leader-pattern="rule" leader-length="100%" rule-style="solid" rule-thickness="2pt"/>
					</fo:block>
				
					<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="2mm" keep-with-next="always">
						Others
					</fo:block>
				
					<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="5mm" keep-with-next="always">
						<fo:leader leader-pattern="rule" leader-length="100%" rule-style="solid" rule-thickness="2pt"/>
					</fo:block>
						
						<fo:block text-align = "center" font-weight="bold" font-size="20pt" padding-after="1mm" padding-before="5mm" keep-with-next="always">
							Cleaning Staff
						</fo:block>
						
						<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="5mm" keep-with-next="always">
							<fo:leader leader-pattern="rule" leader-length="50%" rule-style="solid" rule-thickness="2pt"/>
						</fo:block>
						
						<fo:block position="absolute" text-align = "center">
							<xsl:apply-templates select="/company/levels/lowLevel/cleaningStaff/employeeList"/>
						</fo:block>		
						
						<fo:block text-align = "center" font-weight="bold" font-size="20pt" padding-after="1mm" padding-before="5mm" keep-with-next="always">
							Stationary Staff
						</fo:block>
						
						<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="5mm" keep-with-next="always">
							<fo:leader leader-pattern="rule" leader-length="50%" rule-style="solid" rule-thickness="2pt"/>
						</fo:block>
						
						<fo:block position="absolute" text-align = "center">
							<xsl:apply-templates select="/company/levels/lowLevel/stationaryStaff/employeeList"/>
						</fo:block>		
		
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>	
		
<!--===============================Final Page===========================-->

<fo:page-sequence master-reference="page">

			<fo:static-content flow-name="xsl-region-after">
					<fo:block background-color="#F5B041" color="#FDFEFE" padding="1mm" font-weight="bold" font-size="13pt" >Gaming Fox</fo:block>
			</fo:static-content>
			
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm" >
					
						<fo:block position="absolute" text-align ="center" font-weight="bold" margin-left="2cm" font-family="Times New Roman" font-size="48pt" padding-before="50mm" color="black">
							<xsl:value-of select="/company/@name"/>
						</fo:block>
						
						<fo:block position="absolute" text-align = "center" padding-before = "5mm" margin-left="2cm" content-height="250" content-width="350">
							<fo:external-graphic src="url('images/perspective.jpg')" content-height="scale-to-fit" content-width="300" scaling="non-uniform"/>
						</fo:block>
						
						<fo:block position="absolute" text-align = "left" font-weight="bold" font-size="15pt" padding-before = "15mm" margin-left="2cm">	
							"We believe great games start with great people!"
						</fo:block>
						
						<fo:block position="relative" font-family="Times New Roman"  font-size="10pt" text-align = "justify"  padding-before = "5mm" margin-left="2cm">
							<xsl:value-of select="/company/about/perspectives"/>
						</fo:block>
						
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
		
	</fo:root>
</xsl:template>


<!--===============================ImageTemplates===========================-->

<xsl:template match="logo">
	<fo:external-graphic src="{unparsed-entity-uri(image/@src)}" content-height="250" content-width="350"/>
</xsl:template>

<xsl:template match="image">
	<fo:external-graphic src="{unparsed-entity-uri(@src)}" content-height="120" content-width="100" scaling="non-uniform"/>
</xsl:template>

<xsl:template match="department">
	<fo:external-graphic src="{unparsed-entity-uri(@image_src)}" content-height="150" content-width="100"/>
</xsl:template>

<!--================================Employees===========================-->

<xsl:template match="department">
		<fo:block text-align = "center" font-weight="bold">
				<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="4mm" keep-with-next="always">
					<fo:leader leader-pattern="rule" leader-length="100%" rule-style="solid" rule-thickness="2pt"/>
				</fo:block>
				
				<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="2mm" keep-with-next="always">
					Department: <xsl:value-of select="./@name"/>
				</fo:block>
				
				<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="5mm" keep-with-next="always">
					<fo:leader leader-pattern="rule" leader-length="100%" rule-style="solid" rule-thickness="2pt"/>
				</fo:block>
				
				
				<fo:block>
					<fo:external-graphic src="{unparsed-entity-uri(./@diagram_src)}" content-height="scale-to-fit" content-width="300" scaling="non-uniform"/>
				</fo:block>			
				
				<xsl:if test="./subdepartment">
					<xsl:for-each select="./subdepartment">
						<fo:block text-align = "center" font-weight="bold" font-size="20pt" padding-after="1mm" padding-before="5mm" keep-with-next="always">
							<xsl:value-of select="./@name"/>
						</fo:block>
				
						<fo:block position="absolute" text-align = "center" font-weight="bold" font-size="29pt" padding-after="5mm" keep-with-next="always">
							<fo:leader leader-pattern="rule" leader-length="50%" rule-style="solid" rule-thickness="2pt"/>
						</fo:block>
				
						<xsl:apply-templates select="./employeeList"/>
					</xsl:for-each>
				</xsl:if>
				
				<xsl:if test="./employeeList">
					<xsl:apply-templates select="./employeeList"/>
				</xsl:if>
				
		</fo:block>

</xsl:template>

<xsl:template match="employeeList">
	<xsl:apply-templates select="./employee"/>
</xsl:template>

<xsl:template match="employee">
	<fo:block font-weight="bold" padding-after="3mm">
				<fo:table margin-left="20" >	
					<fo:table-column column-width="120"/>
					<fo:table-column column-width="300"/>
   		 			<fo:table-body>	
						<fo:table-row background-color="#EAEDED">
							<fo:table-cell border="none" >
								<fo:block >
									<xsl:apply-templates  select="./image"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="none" text-align="left">
								<fo:block font-weight="bold" font-size="16pt"  margin-top="5mm">
										<xsl:apply-templates select="./name"/>
								</fo:block>
								
								<fo:block  margin-left="3mm" padding-before="5mm">
									Telephone: <xsl:value-of select="./telephone"/>
								</fo:block>
								<fo:block  margin-left="3mm" padding-before="2mm">
									Age: <xsl:value-of select="./age"/>
								</fo:block>
								<fo:block  margin-left="3mm" padding-before="2mm">
									Salary: <xsl:value-of select="./salary"/>
								</fo:block>
								<fo:block  margin-left="3mm" padding-before="2mm">
									Hired: <xsl:value-of select="./hireDate"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
 					</fo:table-body>
				</fo:table>
		</fo:block>	
</xsl:template>

<xsl:template match="name">	
	<fo:block text-align = "center" font-style="italic">
		<fo:inline>
			<xsl:value-of select="./firstName"/>
		</fo:inline>
		<xsl:text> </xsl:text>
		<fo:inline>
			<xsl:value-of select="./midName"/>
		</fo:inline>
		<xsl:text> </xsl:text>
		<fo:inline>
			<xsl:value-of select="./lastName"/>
		</fo:inline>
	</fo:block>				
</xsl:template>

</xsl:stylesheet>