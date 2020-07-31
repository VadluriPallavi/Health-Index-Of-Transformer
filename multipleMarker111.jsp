<%@ page language="java" import= "java.net.*,java.util.*, java.io.*, org.json.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="refresh" content="60">
<title>Insert title here</title>
</head>
<body>

 <%
HttpURLConnection c = null;
HttpURLConnection c1 = null;



try {
    URL u = new URL("https://api.thingspeak.com/channels/717708/feeds.json?api_key=1BJHM6KYX25UUIC0&results=2");
    c = (HttpURLConnection) u.openConnection();
    c.setRequestMethod("GET");
    c.setRequestProperty("Content-length", "0");
    c.setUseCaches(false);
    c.setAllowUserInteraction(false);
    
    c.connect();
              BufferedReader br = new BufferedReader(new InputStreamReader(c.getInputStream()));
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) {
                sb.append(line+"\n");
            }
            br.close();
            String tt = sb.substring(sb.indexOf(":")+1);
        	JSONObject js=new JSONObject(tt.toString());
        	
        	
        	
        	
        	
            System.out.println("tt==="+tt);
            System.out.println(js.getString("latitude"));
        	System.out.println(js.getString("longitude"));
        	System.out.println(js.getString("name"));
        	
                	
                	
        	String latitude = js.getString("latitude");
        	String longitude = js.getString("longitude");
        	
    //       System.out.println("sb==="+sb.toString());
        //    try{
            	JSONObject jschannel=new JSONObject(sb.toString());
            	JSONArray ja=jschannel.getJSONArray("feeds");
              	System.out.println("jaaaa==="+ja);
            	JSONObject jo=ja.getJSONObject(0);
            	String field1=jo.getString("field1");
            	String field2=jo.getString("field2");
            	String field3=jo.getString("field3");
            	/*String field4=jo.getString("field4");
            	String field5=jo.getString("field5");
            	String field6=jo.getString("field6");
            	String field7=jo.getString("field7");
            	String field8=jo.getString("field8");*/
            	
            	System.out.println("feedssss  field1====="+field1);
            	System.out.println("feedssss  field2====="+field2);
            	System.out.println("feedssss  field3====="+field3);
            	/*System.out.println("feedssss  field4====="+field4);
            	System.out.println("feedssss  field5====="+field5);
            	System.out.println("feedssss  field6====="+field6);
            	System.out.println("feedssss  field7====="+field7);
            	System.out.println("feedssss  field8====="+field8);*/
            	
            	Double f1 = Double.parseDouble(field1);
            	Double f2 = Double.parseDouble(field2);
            	Double f3 = Double.parseDouble(field3);
            	/*Double f4 = Double.parseDouble(field4);
            	Double f5 = Double.parseDouble(field5);
            	Double f6 = Double.parseDouble(field6);
            	Double f7 = Double.parseDouble(field7);
            	Double f8 = Double.parseDouble(field8);*/
            	
            	System.out.println("f1======"+f1);
            	System.out.println("f2======"+f2);
            	System.out.println("f3======"+f3);
            	/*System.out.println("f4======"+f4);
            	System.out.println("f5======"+f5);
            	System.out.println("f6======"+f6);
            	System.out.println("f7======"+f7);
            	System.out.println("f8======"+f8);*/
            	
            	
          //  	System.out.println(js.feeds[0]);
            	
            	    
            	String color=null;		
            	if((f3 > 415.0 || f3 < 200.0) || (f1 < 30.0 || f1 > 52.0) || (f2 < 5.0 || f2 > 10.0 )){
            		color="#ff2600";  //red
            	}else{
            		color="#00FF00";  //green
            	} 
            	
              	request.setAttribute("latitude", latitude);
            	request.setAttribute("longitude", longitude);
            	request.setAttribute("color", color);
            	
            	
            	
     /*       }catch(Exception e){
            	e.printStackTrace();
            } */
    

} catch (Exception ex) {
    ex.printStackTrace();
}
try{
	//Hyderabad
	URL u1 = new URL("https://api.thingspeak.com/channels/711273/feeds.json?results=2");
    c1 = (HttpURLConnection) u1.openConnection();
    c1.setRequestMethod("GET");
    c1.setRequestProperty("Content-length", "0");
    c1.setUseCaches(false);
    c1.setAllowUserInteraction(false);
    c1.connect();
              BufferedReader br1 = new BufferedReader(new InputStreamReader(c1.getInputStream()));
            StringBuilder sb1 = new StringBuilder();
            String line1;
            while ((line1 = br1.readLine()) != null) {
                sb1.append(line1+"\n");
            }
            br1.close();
            String tt1 = sb1.substring(sb1.indexOf(":")+1);
        	JSONObject js1=new JSONObject(tt1.toString());
            System.out.println("tt1==="+tt1);
            System.out.println(js1.getString("latitude"));
        	System.out.println(js1.getString("longitude"));
        	System.out.println(js1.getString("name"));
        	
        	String latitude1 = js1.getString("latitude");
        	String longitude1 = js1.getString("longitude");
        	
        	
        	
        	JSONObject jschannel1=new JSONObject(sb1.toString());
        	JSONArray ja1 = jschannel1.getJSONArray("feeds");
          	System.out.println("jaaaa1==="+ja1);
        	JSONObject jo1=ja1.getJSONObject(0);
        	String vfield1=jo1.getString("field1");
        	String vfield2=jo1.getString("field2");
        	String vfield3=jo1.getString("field3");
        	System.out.println("feedssss  field1====="+vfield1);
        	System.out.println("feedssss  field2====="+vfield2);
        	System.out.println("feedssss  field3====="+vfield3);
        	Double vf1 = Double.parseDouble(vfield1);
        	Double vf2 = Double.parseDouble(vfield2);
        	Double vf3 = Double.parseDouble(vfield3);
        	System.out.println("vf1======"+vf1);
        	System.out.println("vf2======"+vf2);
        	System.out.println("vf3======"+vf3);
        	
        	String color1=null;		
        	if(vf1 > 240.0 && vf2 > 15.0 && vf3 <= 10.0){
        		color1="#ff2600";  //red
        	}else{
        		color1="#00FF00";  //green
        	}
        	
        	request.setAttribute("latitude1", latitude1);
        	request.setAttribute("longitude1", longitude1);
        	request.setAttribute("color1", color1);

	
}
catch(Exception ex1){
	ex1.printStackTrace();	
}

%>




<style type="text/css">
div#map_container{
	width:100%;
	height:350px;
}
div#map_container1{
	width:100%;
	height:350px;
}
</style>
<script type="text/javascript" 
   src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>

<script type="text/javascript">
  function loadMap() {

    var latlng = new google.maps.LatLng('${latitude}','${longitude}');
    var latlng1 = new google.maps.LatLng('${latitude1}','${longitude1}');
    
   
    var myOptions = {
      zoom: 4,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var myOptions1 = {
    	      zoom: 4,
    	      center: latlng1,
    	      mapTypeId: google.maps.MapTypeId.ROADMAP
    	    };
    
    
    
    var map = new google.maps.Map(document.getElementById("map_container"),myOptions);
    
	
    var marker = new google.maps.Marker({
      position: latlng, 
      
      icon:{
          path: 'm 12,2.4000002 c -2.7802903,0 -5.9650002,1.5099999 -5.9650002,5.8299998 0,1.74375 1.1549213,3.264465 2.3551945,4.025812 1.2002732,0.761348 2.4458987,0.763328 2.6273057,2.474813 L 12,24 12.9825,14.68 c 0.179732,-1.704939 1.425357,-1.665423 2.626049,-2.424188 C 16.809241,11.497047 17.965,9.94 17.965,8.23 17.965,3.9100001 14.78029,2.4000002 12,2.4000002 Z',
          fillColor: '${color}',
          fillOpacity: 1.0,
          strokeColor: '#000000',
          strokeWeight: 1,
          scale: 2,
          anchor: new google.maps.Point(12, 24),
      },
      map: map, 
      title:"Transformer1"
    });
    var marker1 = new google.maps.Marker({
        position: latlng1, 
        
        icon:{
            path: 'm 12,2.4000002 c -2.7802903,0 -5.9650002,1.5099999 -5.9650002,5.8299998 0,1.74375 1.1549213,3.264465 2.3551945,4.025812 1.2002732,0.761348 2.4458987,0.763328 2.6273057,2.474813 L 12,24 12.9825,14.68 c 0.179732,-1.704939 1.425357,-1.665423 2.626049,-2.424188 C 16.809241,11.497047 17.965,9.94 17.965,8.23 17.965,3.9100001 14.78029,2.4000002 12,2.4000002 Z',
            fillColor: '${color1}',
            fillOpacity: 1.0,
            strokeColor: '#000000',
            strokeWeight: 1,
            scale: 2,
            anchor: new google.maps.Point(12, 24),
        },
        map: map, 
        title:"Transformer2"
      });
    
  }
  
  
</script>
</head>

<body onload="loadMap()">

<div id="map_container"></div>
<div id="map_container1"></div>


 
</body>
</html>