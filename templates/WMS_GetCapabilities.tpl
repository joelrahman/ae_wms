<?xml version="1.0" encoding="UTF-8"?><WMS_Capabilities version="1.3.0" updateSequence="312" xmlns="http://www.opengis.net/wms" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/wms http://schemas.opengis.net/wms/1.3.0/capabilities_1_3_0.xsd">
	<Service>
		<Name>WMS</Name>
		<Title>WALD Web Map Service</Title>
		<Abstract>WALD - Cloud Distributed Geospatial Data Service.</Abstract>
		<KeywordList>
			<Keyword>WMS</Keyword>
			<Keyword>WALD</Keyword>
		</KeywordList>
		<OnlineResource xlink:type="simple" xlink:href="http://wald-1526877012527.appspot.com/wms/" />
		<ContactInformation>
		    <ContactPersonPrimary>
		        <ContactOrganization>Centre for Water and Landscape Dynamics</ContactOrganization>
		    </ContactPersonPrimary>
			<ContactAddress>
				<Address>Frank Fenner building (141, R 3.10)</Address>
				<City>Australian National University</City>
				<StateOrProvince>ACT</StateOrProvince>
				<PostCode>2601</PostCode>
				<Country>Australia</Country>
			</ContactAddress>
		</ContactInformation>
		<Fees>NONE</Fees>
		<LayerLimit>1</LayerLimit>
		<MaxWidth>512</MaxWidth>
		<MaxHeight>512</MaxHeight>
	</Service>
	<Capability>
		<Request>
			<GetCapabilities>
				<Format>text/xml</Format>
				<DCPType>
				  <HTTP>
				    <Get>
				      <OnlineResource xlink:type="simple" xlink:href="http://wald-1526877012527.appspot.com/wms/?SERVICE=WMS&amp;"/>
				    </Get>
				  </HTTP>
				</DCPType>
			</GetCapabilities>
			<GetMap>
				<Format>image/png</Format>
				<DCPType>
				  <HTTP>
				    <Get>
				      <OnlineResource xlink:type="simple" xlink:href="http://wald-1526877012527.appspot.com/wms/?SERVICE=WMS&amp;"/>
				    </Get>
				  </HTTP>
				</DCPType>
			</GetMap>
			<GetFeatureInfo>
				<Format>text/plain</Format>
				<Format>application/vnd.ogc.gml</Format>
				<Format>text/xml</Format>
				<Format>application/vnd.ogc.gml/3.1.1</Format>
				<Format>text/xml; subtype=gml/3.1.1</Format>
				<Format>text/html</Format>
				<Format>application/json</Format>
				<DCPType>
				  <HTTP>
				    <Get>
				      <OnlineResource xlink:type="simple" xlink:href="http://wald-1526877012527.appspot.com/wms/?SERVICE=WMS&amp;"/>
				    </Get>
				  </HTTP>
				</DCPType>
			</GetFeatureInfo>
		</Request>
		<Exception>
			<Format>XML</Format>
			<Format>INIMAGE</Format>
			<Format>BLANK</Format>
			<Format>JSON</Format>
		</Exception>
		<Layer>
			<Title>WALD Web Map Service</Title>
			<Abstract>A compliant implementation of WMS</Abstract>
			<!--All supported EPSG projections:-->
			<CRS>EPSG:3857</CRS>
			<EX_GeographicBoundingBox>
				<westBoundLongitude>-180.0</westBoundLongitude>
				<eastBoundLongitude>180.0</eastBoundLongitude>
				<southBoundLatitude>-90.0</southBoundLatitude>
				<northBoundLatitude>90.0</northBoundLatitude>
			</EX_GeographicBoundingBox>
			<BoundingBox CRS="CRS:84" minx="-180.0" miny="-90.0" maxx="180.0" maxy="90.0"/>
			{{ range $index, $value := . }}
			<Layer queryable="1" opaque="0">
				<Name>{{ .Name }}</Name>
				<Title>{{ .Title }}</Title>
				<Abstract>{{ .Abstract }}</Abstract>
				<CRS>EPSG:4326</CRS>
				<CRS>CRS:84</CRS>
				<EX_GeographicBoundingBox>
					<westBoundLongitude>-180.0</westBoundLongitude>
					<eastBoundLongitude>180.0</eastBoundLongitude>
					<southBoundLatitude>-90.0</southBoundLatitude>
					<northBoundLatitude>90.0</northBoundLatitude>
				</EX_GeographicBoundingBox>
				<BoundingBox CRS="CRS:84" minx="-180.0" miny="-90.0" maxx="180.0" maxy="90.0"/>
				<BoundingBox CRS="EPSG:4326" minx="-90.0" miny="-180.0" maxx="90.0" maxy="180.0"/>
				<Dimension name="time" default="current" current="True" units="ISO8601">{{ range $index, $value := .Dates }}{{if $index}},{{end}}{{ $value }}{{ end }}</Dimension>
				<MetadataURL type="ISO19115:2003">
					<Format>text/plain</Format>
					<OnlineResource xlink:type="simple" xlink:href="http://wald.anu.edu.au/"/>
				</MetadataURL>
				<DataURL>
					<Format>text/plain</Format>
					<OnlineResource xlink:type="simple" xlink:href="http://wald.anu.edu.au/"/>
				</DataURL>
			</Layer>
			{{end}}
		</Layer>
	</Capability>
</WMS_Capabilities>
