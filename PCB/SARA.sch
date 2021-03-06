<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.3.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="yes" active="no"/>
<layer number="2" name="Route2" color="16" fill="1" visible="yes" active="no"/>
<layer number="3" name="Route3" color="17" fill="1" visible="yes" active="no"/>
<layer number="4" name="Route4" color="18" fill="1" visible="yes" active="no"/>
<layer number="5" name="Route5" color="19" fill="1" visible="yes" active="no"/>
<layer number="6" name="Route6" color="25" fill="1" visible="yes" active="no"/>
<layer number="7" name="Route7" color="26" fill="1" visible="yes" active="no"/>
<layer number="8" name="Route8" color="27" fill="1" visible="yes" active="no"/>
<layer number="9" name="Route9" color="28" fill="1" visible="yes" active="no"/>
<layer number="10" name="Route10" color="29" fill="1" visible="yes" active="no"/>
<layer number="11" name="Route11" color="30" fill="1" visible="yes" active="no"/>
<layer number="12" name="Route12" color="20" fill="1" visible="yes" active="no"/>
<layer number="13" name="Route13" color="21" fill="1" visible="yes" active="no"/>
<layer number="14" name="Route14" color="22" fill="1" visible="yes" active="no"/>
<layer number="15" name="Route15" color="23" fill="1" visible="yes" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="yes" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="yes" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="yes" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="yes" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="yes" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="yes" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="yes" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="yes" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="yes" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="yes" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="yes" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="yes" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="yes" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="yes" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="yes" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="yes" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="yes" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="yes" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="yes" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="yes" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="yes" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="TDC7200">
<packages>
<package name="SOP65P640X120-14N">
<wire x1="-2.2606" y1="1.8034" x2="-2.2606" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="-2.2606" y1="2.1082" x2="-3.302" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="2.1082" x2="-3.302" y2="1.8034" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="1.8034" x2="-2.2606" y2="1.8034" width="0.1524" layer="51"/>
<wire x1="-2.2606" y1="1.143" x2="-2.2606" y2="1.4478" width="0.1524" layer="51"/>
<wire x1="-2.2606" y1="1.4478" x2="-3.302" y2="1.4478" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="1.4478" x2="-3.302" y2="1.143" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="1.143" x2="-2.2606" y2="1.143" width="0.1524" layer="51"/>
<wire x1="-2.2606" y1="0.508" x2="-2.2606" y2="0.7874" width="0.1524" layer="51"/>
<wire x1="-2.2606" y1="0.7874" x2="-3.302" y2="0.7874" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="0.7874" x2="-3.302" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="0.508" x2="-2.2606" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.2606" y1="-0.1524" x2="-2.2606" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="-2.2606" y1="0.1524" x2="-3.302" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="0.1524" x2="-3.302" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-0.1524" x2="-2.2606" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-2.2606" y1="-0.7874" x2="-2.2606" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-2.2606" y1="-0.508" x2="-3.302" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-0.508" x2="-3.302" y2="-0.7874" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-0.7874" x2="-2.2606" y2="-0.7874" width="0.1524" layer="51"/>
<wire x1="-2.2606" y1="-1.4478" x2="-2.2606" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="-2.2606" y1="-1.143" x2="-3.302" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-1.143" x2="-3.302" y2="-1.4478" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-1.4478" x2="-2.2606" y2="-1.4478" width="0.1524" layer="51"/>
<wire x1="-2.2606" y1="-2.1082" x2="-2.2606" y2="-1.8034" width="0.1524" layer="51"/>
<wire x1="-2.2606" y1="-1.8034" x2="-3.302" y2="-1.8034" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-1.8034" x2="-3.302" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-2.1082" x2="-2.2606" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="2.2606" y1="-1.8034" x2="2.2606" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="2.2606" y1="-2.1082" x2="3.302" y2="-2.1082" width="0.1524" layer="51"/>
<wire x1="3.302" y1="-2.1082" x2="3.302" y2="-1.8034" width="0.1524" layer="51"/>
<wire x1="3.302" y1="-1.8034" x2="2.2606" y2="-1.8034" width="0.1524" layer="51"/>
<wire x1="2.2606" y1="-1.143" x2="2.2606" y2="-1.4478" width="0.1524" layer="51"/>
<wire x1="2.2606" y1="-1.4478" x2="3.302" y2="-1.4478" width="0.1524" layer="51"/>
<wire x1="3.302" y1="-1.4478" x2="3.302" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="3.302" y1="-1.143" x2="2.2606" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="2.2606" y1="-0.508" x2="2.2606" y2="-0.7874" width="0.1524" layer="51"/>
<wire x1="2.2606" y1="-0.7874" x2="3.302" y2="-0.7874" width="0.1524" layer="51"/>
<wire x1="3.302" y1="-0.7874" x2="3.302" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="3.302" y1="-0.508" x2="2.2606" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="2.2606" y1="0.1524" x2="2.2606" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="2.2606" y1="-0.1524" x2="3.302" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="3.302" y1="-0.1524" x2="3.302" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="3.302" y1="0.1524" x2="2.2606" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="2.2606" y1="0.7874" x2="2.2606" y2="0.508" width="0.1524" layer="51"/>
<wire x1="2.2606" y1="0.508" x2="3.302" y2="0.508" width="0.1524" layer="51"/>
<wire x1="3.302" y1="0.508" x2="3.302" y2="0.7874" width="0.1524" layer="51"/>
<wire x1="3.302" y1="0.7874" x2="2.2606" y2="0.7874" width="0.1524" layer="51"/>
<wire x1="2.2606" y1="1.4478" x2="2.2606" y2="1.143" width="0.1524" layer="51"/>
<wire x1="2.2606" y1="1.143" x2="3.302" y2="1.143" width="0.1524" layer="51"/>
<wire x1="3.302" y1="1.143" x2="3.302" y2="1.4478" width="0.1524" layer="51"/>
<wire x1="3.302" y1="1.4478" x2="2.2606" y2="1.4478" width="0.1524" layer="51"/>
<wire x1="2.2606" y1="2.1082" x2="2.2606" y2="1.8034" width="0.1524" layer="51"/>
<wire x1="2.2606" y1="1.8034" x2="3.302" y2="1.8034" width="0.1524" layer="51"/>
<wire x1="3.302" y1="1.8034" x2="3.302" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="3.302" y1="2.1082" x2="2.2606" y2="2.1082" width="0.1524" layer="51"/>
<wire x1="-2.2606" y1="-2.54" x2="2.2606" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="2.2606" y1="-2.54" x2="2.2606" y2="2.54" width="0.1524" layer="51"/>
<wire x1="2.2606" y1="2.54" x2="0.3048" y2="2.54" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="2.54" x2="-0.3048" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="2.54" x2="-2.2606" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-2.2606" y1="2.54" x2="-2.2606" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="2.54" x2="-0.3048" y2="2.54" width="0" layer="51" curve="-180"/>
<wire x1="-2.2606" y1="-2.54" x2="2.2606" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.2606" y1="2.54" x2="0.3048" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="2.54" x2="-0.3048" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="2.54" x2="-2.2606" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="2.54" x2="-0.3048" y2="2.54" width="0" layer="21" curve="-180"/>
<text x="0" y="0" size="0" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="0" y="0" size="0" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
<smd name="1" x="-2.921" y="1.9558" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="2" x="-2.921" y="1.2954" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="3" x="-2.921" y="0.6604" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="4" x="-2.921" y="0" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="5" x="-2.921" y="-0.6604" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="6" x="-2.921" y="-1.2954" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="7" x="-2.921" y="-1.9558" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="8" x="2.921" y="-1.9558" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="9" x="2.921" y="-1.2954" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="10" x="2.921" y="-0.6604" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="11" x="2.921" y="0" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="12" x="2.921" y="0.6604" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="13" x="2.921" y="1.2954" dx="1.4732" dy="0.3556" layer="1"/>
<smd name="14" x="2.921" y="1.9558" dx="1.4732" dy="0.3556" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="TDC7200">
<pin name="ENABLE" x="-33.02" y="17.78" length="middle"/>
<pin name="TRIGG" x="-33.02" y="12.7" length="middle"/>
<pin name="START" x="-33.02" y="7.62" length="middle"/>
<pin name="STOP" x="-33.02" y="5.08" length="middle"/>
<pin name="CLOCK" x="-33.02" y="0" length="middle"/>
<pin name="NC" x="-33.02" y="-5.08" length="middle"/>
<pin name="GND" x="-33.02" y="-7.62" length="middle"/>
<pin name="VDD" x="0" y="17.78" length="middle" rot="R180"/>
<pin name="VREG" x="0" y="15.24" length="middle" rot="R180"/>
<pin name="SCLK" x="0" y="7.62" length="middle" rot="R180"/>
<pin name="CSB" x="0" y="5.08" length="middle" rot="R180"/>
<pin name="DIN" x="0" y="0" length="middle" rot="R180"/>
<pin name="DOUT" x="0" y="-2.54" length="middle" rot="R180"/>
<pin name="INTB" x="0" y="-7.62" length="middle" rot="R180"/>
<text x="-22.86" y="20.32" size="1.778" layer="94">TDC7200</text>
<wire x1="-27.94" y1="22.86" x2="-5.08" y2="22.86" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="22.86" x2="-5.08" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-10.16" x2="-27.94" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="-27.94" y1="-10.16" x2="-27.94" y2="22.86" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TDC7200">
<description>TDC7200 chip made by Joe</description>
<gates>
<gate name="G$1" symbol="TDC7200" x="15.24" y="-7.62"/>
</gates>
<devices>
<device name="7201PW" package="SOP65P640X120-14N">
<connects>
<connect gate="G$1" pin="CLOCK" pad="5"/>
<connect gate="G$1" pin="CSB" pad="11"/>
<connect gate="G$1" pin="DIN" pad="10"/>
<connect gate="G$1" pin="DOUT" pad="9"/>
<connect gate="G$1" pin="ENABLE" pad="1"/>
<connect gate="G$1" pin="GND" pad="7"/>
<connect gate="G$1" pin="INTB" pad="8"/>
<connect gate="G$1" pin="NC" pad="6"/>
<connect gate="G$1" pin="SCLK" pad="12"/>
<connect gate="G$1" pin="START" pad="3"/>
<connect gate="G$1" pin="STOP" pad="4"/>
<connect gate="G$1" pin="TRIGG" pad="2"/>
<connect gate="G$1" pin="VDD" pad="14"/>
<connect gate="G$1" pin="VREG" pad="13"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="capsmd">
<packages>
<package name="0603">
<wire x1="-0.2286" y1="0.254" x2="0.2286" y2="0.254" width="0.127" layer="21"/>
<wire x1="0.2286" y1="-0.254" x2="-0.2286" y2="-0.254" width="0.127" layer="21"/>
<wire x1="0.2286" y1="0.254" x2="0.2286" y2="-0.254" width="0.127" layer="21"/>
<wire x1="-0.2286" y1="0.254" x2="-0.2286" y2="-0.254" width="0.127" layer="21"/>
<smd name="2" x="0.7874" y="0" dx="0.762" dy="0.9652" layer="1"/>
<smd name="1" x="-0.7874" y="0" dx="0.762" dy="0.9652" layer="1"/>
<text x="-1.143" y="0.635" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
<text x="-1.143" y="1.905" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<rectangle x1="-0.635" y1="-0.4064" x2="-0.2794" y2="0.4064" layer="51"/>
<rectangle x1="0.2794" y1="-0.4064" x2="0.635" y2="0.4064" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="C">
<wire x1="-2.54" y1="0" x2="-0.508" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.508" y1="1.524" x2="-0.508" y2="-1.524" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="0.508" y2="0" width="0.1524" layer="94"/>
<wire x1="0.508" y1="1.524" x2="0.508" y2="0" width="0.254" layer="94"/>
<wire x1="-0.508" y1="1.524" x2="-0.762" y2="1.524" width="0.254" layer="94"/>
<wire x1="-1.016" y1="1.524" x2="-1.016" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.524" x2="-0.762" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-0.762" y1="-1.524" x2="-0.762" y2="1.524" width="0.254" layer="94"/>
<wire x1="-0.762" y1="1.524" x2="-1.016" y2="1.524" width="0.254" layer="94"/>
<wire x1="-0.762" y1="-1.524" x2="-0.508" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0.508" y1="-1.524" x2="0.762" y2="-1.524" width="0.254" layer="94"/>
<wire x1="1.016" y1="-1.524" x2="1.016" y2="1.524" width="0.254" layer="94"/>
<wire x1="1.016" y1="1.524" x2="0.762" y2="1.524" width="0.254" layer="94"/>
<wire x1="0.762" y1="1.524" x2="0.762" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0.762" y1="1.524" x2="0.508" y2="1.524" width="0.254" layer="94"/>
<wire x1="0.762" y1="-1.524" x2="1.016" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-1.524" width="0.254" layer="94"/>
<text x="2.54" y="0.635" size="1.524" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.159" size="1.524" layer="96">&gt;VALUE</text>
<text x="-2.794" y="-1.27" size="0.8636" layer="93">1</text>
<text x="2.286" y="-1.27" size="0.8636" layer="93">2</text>
<pin name="1" x="-2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1"/>
<pin name="2" x="2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="C0603" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="C" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+3V3" urn="urn:adsk.eagle:symbol:26950/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+3V3" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="+5V" urn="urn:adsk.eagle:symbol:26929/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+3V3" urn="urn:adsk.eagle:component:26981/1" prefix="+3V3" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+3V3" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" urn="urn:adsk.eagle:component:26963/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="RES_0603">
<packages>
<package name="RESC1608X55">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.573" y1="0.683" x2="1.573" y2="0.683" width="0.0508" layer="39"/>
<wire x1="1.573" y1="0.683" x2="1.573" y2="-0.683" width="0.0508" layer="39"/>
<wire x1="1.573" y1="-0.683" x2="-1.573" y2="-0.683" width="0.0508" layer="39"/>
<wire x1="-1.573" y1="-0.683" x2="-1.573" y2="0.683" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<text x="-1.635" y="0.735" size="0.5" layer="25">&gt;NAME</text>
<text x="-1.635" y="-1.255" size="0.5" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<wire x1="-0.15" y1="0.45" x2="0.15" y2="0.45" width="0.127" layer="21"/>
<wire x1="-0.15" y1="-0.45" x2="0.15" y2="-0.45" width="0.127" layer="21"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="RES_SMT">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.2032" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.2032" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.2032" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="7.62" y="0" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="1" x="-7.62" y="0" visible="pad" length="middle" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RES_0603" prefix="R">
<gates>
<gate name="G$1" symbol="RES_SMT" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESC1608X55">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" Res Smd 0.047 Ohm 1% 0.4w 0603 "/>
<attribute name="MF" value="Vishay Dale"/>
<attribute name="MP" value="WSLP0603R0470FEB"/>
<attribute name="PACKAGE" value="0603 Vishay Dale"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2" urn="urn:adsk.eagle:library:372">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26990/1" library_version="2">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:27037/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Ref_Clk">
<packages>
<package name="TWETMCJANF-10.000000">
<wire x1="0.8" y1="1.6" x2="-0.8" y2="1.6" width="0.127" layer="21"/>
<wire x1="2.5" y1="-1.6" x2="2.5" y2="1.6" width="0.127" layer="51"/>
<wire x1="-0.8" y1="-1.6" x2="0.8" y2="-1.6" width="0.127" layer="21"/>
<wire x1="-2.5" y1="1.6" x2="-2.5" y2="-1.6" width="0.127" layer="51"/>
<wire x1="2.9" y1="1.975" x2="-2.9" y2="1.975" width="0.05" layer="39"/>
<wire x1="-2.9" y1="1.975" x2="-2.9" y2="-1.975" width="0.05" layer="39"/>
<wire x1="-2.9" y1="-1.975" x2="2.9" y2="-1.975" width="0.05" layer="39"/>
<wire x1="2.9" y1="-1.975" x2="2.9" y2="1.975" width="0.05" layer="39"/>
<text x="-2.806590625" y="2.10495" size="0.8147125" layer="25">&gt;NAME</text>
<text x="-2.80613125" y="-2.96716875" size="0.81458125" layer="27">&gt;VALUE</text>
<wire x1="-2.5" y1="-1.6" x2="2.5" y2="-1.6" width="0.127" layer="51"/>
<wire x1="2.5" y1="1.6" x2="-2.5" y2="1.6" width="0.127" layer="51"/>
<wire x1="-2.5" y1="-0.2" x2="-2.5" y2="0.2" width="0.127" layer="21"/>
<wire x1="2.5" y1="-0.2" x2="2.5" y2="0.2" width="0.127" layer="21"/>
<circle x="-3.21" y="-1.12" radius="0.1" width="0.2" layer="21"/>
<circle x="-3.21" y="-1.12" radius="0.1" width="0.2" layer="51"/>
<smd name="1" x="-1.85" y="-1.1" dx="1.6" dy="1.25" layer="1"/>
<smd name="2" x="1.85" y="-1.1" dx="1.6" dy="1.25" layer="1"/>
<smd name="3" x="1.85" y="1.1" dx="1.6" dy="1.25" layer="1"/>
<smd name="4" x="-1.85" y="1.1" dx="1.6" dy="1.25" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="REF">
<pin name="VCON" x="-15.24" y="10.16" length="middle"/>
<pin name="GND" x="15.24" y="10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="OUTPUT" x="15.24" y="15.24" length="middle" rot="R180"/>
<pin name="VDD" x="-15.24" y="15.24" length="middle" direction="pwr"/>
<wire x1="-10.16" y1="17.78" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="7.62" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="17.78" width="0.254" layer="94"/>
<wire x1="10.16" y1="17.78" x2="-10.16" y2="17.78" width="0.254" layer="94"/>
<text x="-5.08" y="5.08" size="1.778" layer="96">&gt;Value</text>
<text x="-5.08" y="20.32" size="1.778" layer="95">&gt;Name</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="REF_CLK_10MHZ">
<gates>
<gate name="G$1" symbol="REF" x="-20.32" y="2.54"/>
</gates>
<devices>
<device name="" package="TWETMCJANF-10.000000">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="OUTPUT" pad="3"/>
<connect gate="G$1" pin="VCON" pad="1"/>
<connect gate="G$1" pin="VDD" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X06" urn="urn:adsk.eagle:footprint:22361/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-7.6962" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-7.62" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
</package>
<package name="1X06/90" urn="urn:adsk.eagle:footprint:22362/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-7.62" y1="-1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="6.985" x2="6.35" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-8.255" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="9.525" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-6.731" y1="0.635" x2="-5.969" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="21"/>
<rectangle x1="-6.731" y1="-2.921" x2="-5.969" y2="-1.905" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="21"/>
</package>
<package name="2X10" urn="urn:adsk.eagle:footprint:22268/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-12.7" y1="-1.905" x2="-12.065" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-2.54" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.54" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.54" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-1.905" x2="-12.7" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.905" x2="-12.065" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="2.54" x2="-10.795" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="2.54" x2="-10.16" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.905" x2="-9.525" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="2.54" x2="-8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="2.54" x2="-7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="2.54" x2="-5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.905" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.985" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.985" y1="2.54" x2="7.62" y2="1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.905" x2="8.255" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.255" y1="2.54" x2="9.525" y2="2.54" width="0.1524" layer="21"/>
<wire x1="9.525" y1="2.54" x2="10.16" y2="1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.905" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="1.905" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.54" x2="9.525" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="6.985" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-2.54" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-2.54" x2="-8.255" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-2.54" x2="-10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.16" y1="1.905" x2="10.795" y2="2.54" width="0.1524" layer="21"/>
<wire x1="10.795" y1="2.54" x2="12.065" y2="2.54" width="0.1524" layer="21"/>
<wire x1="12.065" y1="2.54" x2="12.7" y2="1.905" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="12.065" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="10.795" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="12.7" y1="1.905" x2="12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-2.54" x2="12.065" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-11.43" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-11.43" y="1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-8.89" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-8.89" y="1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="-6.35" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="-6.35" y="1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="-3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="-3.81" y="1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="-1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="-1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="11" x="1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="12" x="1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="13" x="3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="14" x="3.81" y="1.27" drill="1.016" shape="octagon"/>
<pad name="15" x="6.35" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="16" x="6.35" y="1.27" drill="1.016" shape="octagon"/>
<pad name="17" x="8.89" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="18" x="8.89" y="1.27" drill="1.016" shape="octagon"/>
<pad name="19" x="11.43" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="20" x="11.43" y="1.27" drill="1.016" shape="octagon"/>
<text x="-12.7" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-12.7" y="-4.445" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-11.684" y1="-1.524" x2="-11.176" y2="-1.016" layer="51"/>
<rectangle x1="-11.684" y1="1.016" x2="-11.176" y2="1.524" layer="51"/>
<rectangle x1="-9.144" y1="1.016" x2="-8.636" y2="1.524" layer="51"/>
<rectangle x1="-9.144" y1="-1.524" x2="-8.636" y2="-1.016" layer="51"/>
<rectangle x1="-6.604" y1="1.016" x2="-6.096" y2="1.524" layer="51"/>
<rectangle x1="-6.604" y1="-1.524" x2="-6.096" y2="-1.016" layer="51"/>
<rectangle x1="-4.064" y1="1.016" x2="-3.556" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.016" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="1.016" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="-4.064" y1="-1.524" x2="-3.556" y2="-1.016" layer="51"/>
<rectangle x1="-1.524" y1="-1.524" x2="-1.016" y2="-1.016" layer="51"/>
<rectangle x1="1.016" y1="-1.524" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="3.556" y1="1.016" x2="4.064" y2="1.524" layer="51"/>
<rectangle x1="3.556" y1="-1.524" x2="4.064" y2="-1.016" layer="51"/>
<rectangle x1="6.096" y1="1.016" x2="6.604" y2="1.524" layer="51"/>
<rectangle x1="6.096" y1="-1.524" x2="6.604" y2="-1.016" layer="51"/>
<rectangle x1="8.636" y1="1.016" x2="9.144" y2="1.524" layer="51"/>
<rectangle x1="8.636" y1="-1.524" x2="9.144" y2="-1.016" layer="51"/>
<rectangle x1="11.176" y1="1.016" x2="11.684" y2="1.524" layer="51"/>
<rectangle x1="11.176" y1="-1.524" x2="11.684" y2="-1.016" layer="51"/>
</package>
<package name="2X10/90" urn="urn:adsk.eagle:footprint:22269/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-12.7" y1="-1.905" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="6.985" x2="-11.43" y2="1.27" width="0.762" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="6.985" x2="-8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="6.985" x2="6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="6.985" x2="8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="11.43" y1="6.985" x2="11.43" y2="1.27" width="0.762" layer="21"/>
<pad name="2" x="-11.43" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="4" x="-8.89" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="6" x="-6.35" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="8" x="-3.81" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="10" x="-1.27" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="12" x="1.27" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="14" x="3.81" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="16" x="6.35" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="18" x="8.89" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="20" x="11.43" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="1" x="-11.43" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="3" x="-8.89" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="5" x="-6.35" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="7" x="-3.81" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="9" x="-1.27" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="11" x="1.27" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="13" x="3.81" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="15" x="6.35" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="17" x="8.89" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="19" x="11.43" y="-6.35" drill="1.016" shape="octagon"/>
<text x="-13.335" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="14.605" y="-4.445" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-11.811" y1="0.635" x2="-11.049" y2="1.143" layer="21"/>
<rectangle x1="-9.271" y1="0.635" x2="-8.509" y2="1.143" layer="21"/>
<rectangle x1="-6.731" y1="0.635" x2="-5.969" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="21"/>
<rectangle x1="8.509" y1="0.635" x2="9.271" y2="1.143" layer="21"/>
<rectangle x1="11.049" y1="0.635" x2="11.811" y2="1.143" layer="21"/>
<rectangle x1="-11.811" y1="-2.921" x2="-11.049" y2="-1.905" layer="21"/>
<rectangle x1="-9.271" y1="-2.921" x2="-8.509" y2="-1.905" layer="21"/>
<rectangle x1="-11.811" y1="-5.461" x2="-11.049" y2="-4.699" layer="21"/>
<rectangle x1="-11.811" y1="-4.699" x2="-11.049" y2="-2.921" layer="51"/>
<rectangle x1="-9.271" y1="-4.699" x2="-8.509" y2="-2.921" layer="51"/>
<rectangle x1="-9.271" y1="-5.461" x2="-8.509" y2="-4.699" layer="21"/>
<rectangle x1="-6.731" y1="-2.921" x2="-5.969" y2="-1.905" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-6.731" y1="-5.461" x2="-5.969" y2="-4.699" layer="21"/>
<rectangle x1="-6.731" y1="-4.699" x2="-5.969" y2="-2.921" layer="51"/>
<rectangle x1="-4.191" y1="-4.699" x2="-3.429" y2="-2.921" layer="51"/>
<rectangle x1="-4.191" y1="-5.461" x2="-3.429" y2="-4.699" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-5.461" x2="-0.889" y2="-4.699" layer="21"/>
<rectangle x1="-1.651" y1="-4.699" x2="-0.889" y2="-2.921" layer="51"/>
<rectangle x1="0.889" y1="-4.699" x2="1.651" y2="-2.921" layer="51"/>
<rectangle x1="0.889" y1="-5.461" x2="1.651" y2="-4.699" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-5.461" x2="4.191" y2="-4.699" layer="21"/>
<rectangle x1="3.429" y1="-4.699" x2="4.191" y2="-2.921" layer="51"/>
<rectangle x1="5.969" y1="-4.699" x2="6.731" y2="-2.921" layer="51"/>
<rectangle x1="5.969" y1="-5.461" x2="6.731" y2="-4.699" layer="21"/>
<rectangle x1="8.509" y1="-2.921" x2="9.271" y2="-1.905" layer="21"/>
<rectangle x1="11.049" y1="-2.921" x2="11.811" y2="-1.905" layer="21"/>
<rectangle x1="8.509" y1="-5.461" x2="9.271" y2="-4.699" layer="21"/>
<rectangle x1="8.509" y1="-4.699" x2="9.271" y2="-2.921" layer="51"/>
<rectangle x1="11.049" y1="-4.699" x2="11.811" y2="-2.921" layer="51"/>
<rectangle x1="11.049" y1="-5.461" x2="11.811" y2="-4.699" layer="21"/>
</package>
<package name="1X01" urn="urn:adsk.eagle:footprint:22382/1" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" shape="octagon"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="1X06" urn="urn:adsk.eagle:package:22472/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X06"/>
</packageinstances>
</package3d>
<package3d name="1X06/90" urn="urn:adsk.eagle:package:22475/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X06/90"/>
</packageinstances>
</package3d>
<package3d name="2X10" urn="urn:adsk.eagle:package:22405/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="2X10"/>
</packageinstances>
</package3d>
<package3d name="2X10/90" urn="urn:adsk.eagle:package:22411/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="2X10/90"/>
</packageinstances>
</package3d>
<package3d name="1X01" urn="urn:adsk.eagle:package:22485/2" type="model" library_version="3">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X01"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINHD6" urn="urn:adsk.eagle:symbol:22360/1" library_version="3">
<wire x1="-6.35" y1="-7.62" x2="1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="1.27" y2="10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="10.16" x2="-6.35" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="10.16" x2="-6.35" y2="-7.62" width="0.4064" layer="94"/>
<text x="-6.35" y="10.795" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="PINH2X10" urn="urn:adsk.eagle:symbol:22266/1" library_version="3">
<wire x1="-6.35" y1="-15.24" x2="8.89" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="8.89" y1="-15.24" x2="8.89" y2="12.7" width="0.4064" layer="94"/>
<wire x1="8.89" y1="12.7" x2="-6.35" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="12.7" x2="-6.35" y2="-15.24" width="0.4064" layer="94"/>
<text x="-6.35" y="13.335" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="5.08" y="10.16" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="3" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="5.08" y="7.62" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="5" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="5.08" y="5.08" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="7" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="5.08" y="2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="9" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="5.08" y="0" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="11" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="12" x="5.08" y="-2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="13" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="14" x="5.08" y="-5.08" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="15" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="16" x="5.08" y="-7.62" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="17" x="-2.54" y="-10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="18" x="5.08" y="-10.16" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="19" x="-2.54" y="-12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="20" x="5.08" y="-12.7" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
</symbol>
<symbol name="PINHD1" urn="urn:adsk.eagle:symbol:22381/1" library_version="3">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="-6.35" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="2.54" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X6" urn="urn:adsk.eagle:component:22533/3" prefix="JP" uservalue="yes" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD6" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="1X06">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22472/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X06/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22475/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD-2X10" urn="urn:adsk.eagle:component:22511/3" prefix="JP" uservalue="yes" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINH2X10" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2X10">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="17" pad="17"/>
<connect gate="A" pin="18" pad="18"/>
<connect gate="A" pin="19" pad="19"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="20" pad="20"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22405/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="2X10/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="17" pad="17"/>
<connect gate="A" pin="18" pad="18"/>
<connect gate="A" pin="19" pad="19"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="20" pad="20"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22411/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD-1X1" urn="urn:adsk.eagle:component:22540/2" prefix="JP" uservalue="yes" library_version="3">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X01">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22485/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="R-78B3.3-2.0">
<packages>
<package name="CONV_R-78B15-2.0">
<wire x1="-3.21" y1="-6.5" x2="8.29" y2="-6.5" width="0.127" layer="21"/>
<wire x1="8.29" y1="-6.5" x2="8.29" y2="2" width="0.127" layer="21"/>
<wire x1="8.29" y1="2" x2="-3.21" y2="2" width="0.127" layer="21"/>
<wire x1="-3.21" y1="2" x2="-3.21" y2="-6.5" width="0.127" layer="21"/>
<wire x1="-3.46" y1="2.25" x2="8.54" y2="2.25" width="0.05" layer="39"/>
<wire x1="8.54" y1="2.25" x2="8.54" y2="-6.75" width="0.05" layer="39"/>
<wire x1="8.54" y1="-6.75" x2="-3.46" y2="-6.75" width="0.05" layer="39"/>
<wire x1="-3.46" y1="-6.75" x2="-3.46" y2="2.25" width="0.05" layer="39"/>
<text x="-3.70623125" y="2.365309375" size="1.273490625" layer="25">&gt;NAME</text>
<text x="-3.72683125" y="-8.505640625" size="1.27298125" layer="27">&gt;VALUE</text>
<wire x1="-3.21" y1="2" x2="-3.21" y2="-6.5" width="0.127" layer="51"/>
<wire x1="-3.21" y1="2" x2="8.29" y2="2" width="0.127" layer="51"/>
<wire x1="8.29" y1="2" x2="8.29" y2="-6.5" width="0.127" layer="51"/>
<wire x1="-3.21" y1="-6.5" x2="8.29" y2="-6.5" width="0.127" layer="51"/>
<circle x="-1.27" y="0" radius="0.1" width="0.2" layer="51"/>
<circle x="-3.81" y="0" radius="0.1" width="0.2" layer="21"/>
<pad name="3" x="5.08" y="0" drill="1.06"/>
<pad name="1" x="0" y="0" drill="1.06" shape="square"/>
<pad name="2" x="2.54" y="0" drill="1.06"/>
</package>
</packages>
<symbols>
<symbol name="R-78B3.3-2.0">
<wire x1="-17.78" y1="5.08" x2="17.78" y2="5.08" width="0.41" layer="94"/>
<wire x1="17.78" y1="5.08" x2="17.78" y2="-5.08" width="0.41" layer="94"/>
<wire x1="17.78" y1="-5.08" x2="-17.78" y2="-5.08" width="0.41" layer="94"/>
<wire x1="-17.78" y1="-5.08" x2="-17.78" y2="5.08" width="0.41" layer="94"/>
<text x="-17.78" y="6.08" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-17.78" y="-9.08" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<pin name="VIN" x="-22.86" y="2.54" length="middle" direction="in"/>
<pin name="EMPTY" x="-22.86" y="-2.54" length="middle"/>
<pin name="VOUT" x="22.86" y="2.54" length="middle" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R-78B3.3-2.0" prefix="U">
<description>None</description>
<gates>
<gate name="G$1" symbol="R-78B3.3-2.0" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CONV_R-78B15-2.0">
<connects>
<connect gate="G$1" pin="EMPTY" pad="2"/>
<connect gate="G$1" pin="VIN" pad="1"/>
<connect gate="G$1" pin="VOUT" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" Switching Regulator 4.75-32Vin 3.3Vo 2A "/>
<attribute name="MF" value="Recom Power"/>
<attribute name="MP" value="R-78B3.3-2.0"/>
<attribute name="PACKAGE" value="SIP-3 Recom Power"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MAX9110EKA_T">
<packages>
<package name="SOT65P280X145-8N">
<wire x1="-0.88" y1="-1.5" x2="-0.88" y2="1.5" width="0.127" layer="51"/>
<wire x1="-0.88" y1="1.5" x2="0.88" y2="1.5" width="0.127" layer="51"/>
<wire x1="0.88" y1="1.5" x2="0.88" y2="-1.5" width="0.127" layer="51"/>
<wire x1="0.88" y1="-1.5" x2="-0.88" y2="-1.5" width="0.127" layer="51"/>
<wire x1="-0.88" y1="1.5" x2="0.88" y2="1.5" width="0.127" layer="21"/>
<wire x1="-0.88" y1="-1.5" x2="0.88" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-2.11" y1="1.47" x2="-1.13" y2="1.47" width="0.05" layer="39"/>
<wire x1="-1.13" y1="1.47" x2="-1.13" y2="1.75" width="0.05" layer="39"/>
<wire x1="-1.13" y1="1.75" x2="1.13" y2="1.75" width="0.05" layer="39"/>
<wire x1="1.13" y1="1.75" x2="1.13" y2="1.47" width="0.05" layer="39"/>
<wire x1="1.13" y1="1.47" x2="2.11" y2="1.47" width="0.05" layer="39"/>
<wire x1="2.11" y1="-1.47" x2="1.13" y2="-1.47" width="0.05" layer="39"/>
<wire x1="1.13" y1="-1.47" x2="1.13" y2="-1.75" width="0.05" layer="39"/>
<wire x1="1.13" y1="-1.75" x2="-1.13" y2="-1.75" width="0.05" layer="39"/>
<wire x1="-1.13" y1="-1.75" x2="-1.13" y2="-1.47" width="0.05" layer="39"/>
<wire x1="-1.13" y1="-1.47" x2="-2.11" y2="-1.47" width="0.05" layer="39"/>
<wire x1="-2.11" y1="-1.47" x2="-2.11" y2="1.47" width="0.05" layer="39"/>
<wire x1="2.11" y1="1.47" x2="2.11" y2="-1.47" width="0.05" layer="39"/>
<circle x="-2.4" y="1" radius="0.1" width="0.2" layer="21"/>
<circle x="-2.4" y="1" radius="0.1" width="0.2" layer="51"/>
<text x="-2.01" y="2.03" size="0.8128" layer="25">&gt;NAME</text>
<text x="-2.26" y="-2.7" size="0.8128" layer="27">&gt;VALUE</text>
<smd name="1" x="-1.255" y="0.975" dx="1.21" dy="0.48" layer="1" roundness="50"/>
<smd name="2" x="-1.255" y="0.325" dx="1.21" dy="0.48" layer="1" roundness="50"/>
<smd name="3" x="-1.255" y="-0.325" dx="1.21" dy="0.48" layer="1" roundness="50"/>
<smd name="4" x="-1.255" y="-0.975" dx="1.21" dy="0.48" layer="1" roundness="50"/>
<smd name="5" x="1.255" y="-0.975" dx="1.21" dy="0.48" layer="1" roundness="50" rot="R180"/>
<smd name="6" x="1.255" y="-0.325" dx="1.21" dy="0.48" layer="1" roundness="50" rot="R180"/>
<smd name="7" x="1.255" y="0.325" dx="1.21" dy="0.48" layer="1" roundness="50" rot="R180"/>
<smd name="8" x="1.255" y="0.975" dx="1.21" dy="0.48" layer="1" roundness="50" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="MAX9110EKA+T">
<wire x1="7.62" y1="-7.62" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<text x="-7.62" y="10.16" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="DIN" x="-12.7" y="2.54" length="middle" direction="in"/>
<pin name="VCC" x="12.7" y="7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="GND" x="12.7" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="DO+" x="12.7" y="2.54" length="middle" direction="out" rot="R180"/>
<pin name="DO-" x="12.7" y="0" length="middle" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MAX9110EKA+T" prefix="U">
<description>The MAX9110 is a single LVDS transmitter</description>
<gates>
<gate name="G$1" symbol="MAX9110EKA+T" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT65P280X145-8N">
<connects>
<connect gate="G$1" pin="DIN" pad="1"/>
<connect gate="G$1" pin="DO+" pad="7"/>
<connect gate="G$1" pin="DO-" pad="8"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="VCC" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" Single/Dual Lvds Line Driver With u "/>
<attribute name="MF" value="Maxim Integrated"/>
<attribute name="MP" value="MAX9110EKA+T"/>
<attribute name="PACKAGE" value="SOT-23 Maxim Integrated"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MAX9111EKA_T">
<packages>
<package name="SOT65P280X145-8N">
<wire x1="-0.88" y1="-1.5" x2="-0.88" y2="1.5" width="0.127" layer="51"/>
<wire x1="-0.88" y1="1.5" x2="0.88" y2="1.5" width="0.127" layer="51"/>
<wire x1="0.88" y1="1.5" x2="0.88" y2="-1.5" width="0.127" layer="51"/>
<wire x1="0.88" y1="-1.5" x2="-0.88" y2="-1.5" width="0.127" layer="51"/>
<wire x1="-0.88" y1="1.5" x2="0.88" y2="1.5" width="0.127" layer="21"/>
<wire x1="-0.88" y1="-1.5" x2="0.88" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-2.11" y1="1.47" x2="-1.13" y2="1.47" width="0.05" layer="39"/>
<wire x1="-1.13" y1="1.47" x2="-1.13" y2="1.75" width="0.05" layer="39"/>
<wire x1="-1.13" y1="1.75" x2="1.13" y2="1.75" width="0.05" layer="39"/>
<wire x1="1.13" y1="1.75" x2="1.13" y2="1.47" width="0.05" layer="39"/>
<wire x1="1.13" y1="1.47" x2="2.11" y2="1.47" width="0.05" layer="39"/>
<wire x1="2.11" y1="-1.47" x2="1.13" y2="-1.47" width="0.05" layer="39"/>
<wire x1="1.13" y1="-1.47" x2="1.13" y2="-1.75" width="0.05" layer="39"/>
<wire x1="1.13" y1="-1.75" x2="-1.13" y2="-1.75" width="0.05" layer="39"/>
<wire x1="-1.13" y1="-1.75" x2="-1.13" y2="-1.47" width="0.05" layer="39"/>
<wire x1="-1.13" y1="-1.47" x2="-2.11" y2="-1.47" width="0.05" layer="39"/>
<wire x1="-2.11" y1="-1.47" x2="-2.11" y2="1.47" width="0.05" layer="39"/>
<wire x1="2.11" y1="1.47" x2="2.11" y2="-1.47" width="0.05" layer="39"/>
<circle x="-2.4" y="1" radius="0.1" width="0.2" layer="21"/>
<circle x="-2.4" y="1" radius="0.1" width="0.2" layer="51"/>
<text x="-2.01" y="2.03" size="0.8128" layer="25">&gt;NAME</text>
<text x="-2.26" y="-2.7" size="0.8128" layer="27">&gt;VALUE</text>
<smd name="1" x="-1.255" y="0.975" dx="1.21" dy="0.48" layer="1" roundness="50"/>
<smd name="2" x="-1.255" y="0.325" dx="1.21" dy="0.48" layer="1" roundness="50"/>
<smd name="3" x="-1.255" y="-0.325" dx="1.21" dy="0.48" layer="1" roundness="50"/>
<smd name="4" x="-1.255" y="-0.975" dx="1.21" dy="0.48" layer="1" roundness="50"/>
<smd name="5" x="1.255" y="-0.975" dx="1.21" dy="0.48" layer="1" roundness="50" rot="R180"/>
<smd name="6" x="1.255" y="-0.325" dx="1.21" dy="0.48" layer="1" roundness="50" rot="R180"/>
<smd name="7" x="1.255" y="0.325" dx="1.21" dy="0.48" layer="1" roundness="50" rot="R180"/>
<smd name="8" x="1.255" y="0.975" dx="1.21" dy="0.48" layer="1" roundness="50" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="MAX9111EKA+T">
<wire x1="7.62" y1="-7.62" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<text x="-7.62" y="10.16" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="DOUT" x="-12.7" y="2.54" length="middle" direction="out"/>
<pin name="VCC" x="12.7" y="7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="GND" x="12.7" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="DI+" x="12.7" y="2.54" length="middle" direction="in" rot="R180"/>
<pin name="DI-" x="12.7" y="0" length="middle" direction="in" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MAX9111EKA+T">
<gates>
<gate name="G$1" symbol="MAX9111EKA+T" x="-17.78" y="-2.54"/>
</gates>
<devices>
<device name="" package="SOT65P280X145-8N">
<connects>
<connect gate="G$1" pin="DI+" pad="7"/>
<connect gate="G$1" pin="DI-" pad="8"/>
<connect gate="G$1" pin="DOUT" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="VCC" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="inductor-neosid" urn="urn:adsk.eagle:library:241">
<description>&lt;b&gt;Neosid Chokes and Transformers&lt;/b&gt;&lt;p&gt;

Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Electronic Component Book, Part 2 : Chokes, Fixed Value Inductors
&lt;li&gt;Part 3 : Filters, Coil Assemblies, Thermoplastic Parts
&lt;li&gt;Part 4 : SMD Filters, Coils, Fixed Value Inductors
&lt;li&gt;www.neosid.de
&lt;/ul&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MS50" urn="urn:adsk.eagle:footprint:14563/1" library_version="1">
<description>SMD &lt;B&gt;POWER INDUCTOR&lt;/B&gt;&lt;p&gt;
high current</description>
<wire x1="-0.9" y1="-2.3" x2="0.9" y2="-2.3" width="0.2032" layer="51"/>
<wire x1="-1.5" y1="1.3" x2="-1.5" y2="-1.3" width="0.2032" layer="51"/>
<wire x1="-1.5" y1="-1.3" x2="-0.7" y2="-1.3" width="0.2032" layer="51"/>
<wire x1="-0.7" y1="-1.3" x2="0.7" y2="-1.3" width="0.2032" layer="51"/>
<wire x1="0.7" y1="-1.3" x2="1.5" y2="-1.3" width="0.2032" layer="51"/>
<wire x1="1.5" y1="-1.3" x2="1.5" y2="1.3" width="0.2032" layer="51"/>
<wire x1="1.5" y1="1.3" x2="0.7" y2="1.3" width="0.2032" layer="51"/>
<wire x1="0.7" y1="1.3" x2="-0.7" y2="1.3" width="0.2032" layer="51"/>
<wire x1="-0.7" y1="1.3" x2="-1.5" y2="1.3" width="0.2032" layer="51"/>
<wire x1="-0.9" y1="-2.3" x2="-0.7" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="0.9" y1="-2.3" x2="0.7" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="0.9" y1="2.3" x2="-0.9" y2="2.3" width="0.2032" layer="51"/>
<wire x1="0.9" y1="2.3" x2="0.7" y2="1.4" width="0.2032" layer="51"/>
<wire x1="-0.9" y1="2.3" x2="-0.7" y2="1.4" width="0.2032" layer="51"/>
<wire x1="-0.7" y1="1.3" x2="-0.7" y2="-1.3" width="0.2032" layer="51" curve="120.036721"/>
<wire x1="0.7" y1="-1.3" x2="0.7" y2="1.3" width="0.2032" layer="51" curve="120.036721"/>
<wire x1="-1.5" y1="0.8" x2="-1.5" y2="-0.8" width="0.2032" layer="21"/>
<wire x1="1.5" y1="0.8" x2="1.5" y2="-0.8" width="0.2032" layer="21"/>
<smd name="1" x="0" y="-1.7" dx="2.8" dy="1.4" layer="1"/>
<smd name="2" x="0" y="1.7" dx="2.8" dy="1.4" layer="1"/>
<text x="-1.8" y="-1.7" size="0.8128" layer="25" rot="R90">&gt;NAME</text>
<text x="2.6" y="-1.7" size="0.8128" layer="27" rot="R90">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="MS50" urn="urn:adsk.eagle:package:14699/1" type="box" library_version="1">
<description>SMD POWER INDUCTOR
high current</description>
<packageinstances>
<packageinstance name="MS50"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="L" urn="urn:adsk.eagle:symbol:14504/1" library_version="1">
<text x="-3.81" y="1.778" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.556" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-3.81" y1="-1.27" x2="3.81" y2="1.27" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MS50" urn="urn:adsk.eagle:component:14757/1" prefix="L" uservalue="yes" library_version="1">
<description>&lt;b&gt;INDUCTOR&lt;/b&gt;&lt;p&gt;
SMD power inductor</description>
<gates>
<gate name="G$1" symbol="L" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MS50">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:14699/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Screw Block">
<packages>
<package name="PHOENIX_1935161">
<wire x1="-5" y1="4" x2="5" y2="4" width="0.127" layer="21"/>
<wire x1="5" y1="4" x2="5" y2="-4.3" width="0.127" layer="21"/>
<wire x1="5" y1="-4.3" x2="-5" y2="-4.3" width="0.127" layer="21"/>
<wire x1="-5" y1="-4.3" x2="-5" y2="4" width="0.127" layer="21"/>
<wire x1="-5" y1="-4.3" x2="-5" y2="4" width="0.127" layer="51"/>
<wire x1="-5" y1="4" x2="5" y2="4" width="0.127" layer="51"/>
<wire x1="5" y1="4" x2="5" y2="-4.3" width="0.127" layer="51"/>
<wire x1="5" y1="-4.3" x2="-5" y2="-4.3" width="0.127" layer="51"/>
<circle x="-3.8" y="1.5" radius="0.14" width="0.28" layer="21"/>
<circle x="-3.8" y="1.5" radius="0.14" width="0.28" layer="51"/>
<wire x1="-5.25" y1="4.25" x2="5.25" y2="4.25" width="0.05" layer="39"/>
<wire x1="5.25" y1="4.25" x2="5.25" y2="-4.55" width="0.05" layer="39"/>
<wire x1="5.25" y1="-4.55" x2="-5.25" y2="-4.55" width="0.05" layer="39"/>
<wire x1="-5.25" y1="-4.55" x2="-5.25" y2="4.25" width="0.05" layer="39"/>
<text x="-5.08705" y="5.08705" size="1.27176875" layer="25">NAME</text>
<text x="-5.09283125" y="-6.366040625" size="1.273209375" layer="27">VALUE</text>
<pad name="1" x="-2.5" y="0" drill="1.3" shape="square"/>
<pad name="2" x="2.5" y="0" drill="1.3"/>
</package>
</packages>
<symbols>
<symbol name="1935161">
<wire x1="-2.54" y1="5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<text x="-2.54548125" y="5.727340625" size="1.272740625" layer="95">&gt;NAME</text>
<text x="-2.54808125" y="-7.64423125" size="1.274040625" layer="96">&gt;VALUE</text>
<pin name="1" x="-7.62" y="2.54" length="middle" direction="pas"/>
<pin name="2" x="-7.62" y="-2.54" length="middle" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="1935161" prefix="J">
<description>Conn Terminal Blocks 2 POS 5mm Solder ST Thru-Hole 16A</description>
<gates>
<gate name="G$1" symbol="1935161" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PHOENIX_1935161">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" Conn Terminal Blocks 2 POS 5mm Solder ST Thru-Hole 16A "/>
<attribute name="MF" value="Phoenix Contact"/>
<attribute name="MP" value="1935161"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="PJ-002AH">
<packages>
<package name="CUI_PJ-002AH">
<text x="-0.69003125" y="6.130290625" size="1.270059375" layer="25">&gt;NAME</text>
<text x="-0.690915625" y="-6.4185" size="1.27168125" layer="27">&gt;VALUE</text>
<wire x1="0.5" y1="-1.75" x2="-0.5" y2="-1.75" width="0.0001" layer="46"/>
<wire x1="-0.5" y1="-1.75" x2="-0.5" y2="1.75" width="0.0001" layer="46"/>
<wire x1="-0.5" y1="1.75" x2="0.5" y2="1.75" width="0.0001" layer="46"/>
<wire x1="0.5" y1="1.75" x2="0.5" y2="-1.75" width="0.0001" layer="46"/>
<wire x1="6.5" y1="-1.5" x2="5.5" y2="-1.5" width="0.0001" layer="46"/>
<wire x1="5.5" y1="-1.5" x2="5.5" y2="1.5" width="0.0001" layer="46"/>
<wire x1="5.5" y1="1.5" x2="6.5" y2="1.5" width="0.0001" layer="46"/>
<wire x1="6.5" y1="1.5" x2="6.5" y2="-1.5" width="0.0001" layer="46"/>
<wire x1="1.5" y1="4.2" x2="1.5" y2="5.2" width="0.0001" layer="46"/>
<wire x1="1.5" y1="5.2" x2="4.5" y2="5.2" width="0.0001" layer="46"/>
<wire x1="4.5" y1="5.2" x2="4.5" y2="4.2" width="0.0001" layer="46"/>
<wire x1="4.5" y1="4.2" x2="1.5" y2="4.2" width="0.0001" layer="46"/>
<wire x1="-0.7" y1="4.5" x2="13.7" y2="4.5" width="0.127" layer="51"/>
<wire x1="13.7" y1="4.5" x2="13.7" y2="-4.5" width="0.127" layer="51"/>
<wire x1="13.7" y1="-4.5" x2="-0.7" y2="-4.5" width="0.127" layer="51"/>
<wire x1="-0.7" y1="-4.5" x2="-0.7" y2="4.5" width="0.127" layer="51"/>
<wire x1="13.7" y1="4.5" x2="13.7" y2="-4.5" width="0.127" layer="21"/>
<wire x1="13.7" y1="-4.5" x2="-0.7" y2="-4.5" width="0.127" layer="21"/>
<wire x1="-0.7" y1="4.5" x2="0.45" y2="4.5" width="0.127" layer="21"/>
<wire x1="-0.7" y1="-4.5" x2="-0.7" y2="-2.65" width="0.127" layer="21"/>
<wire x1="5.55" y1="4.5" x2="13.7" y2="4.5" width="0.127" layer="21"/>
<wire x1="-0.7" y1="2.55" x2="-0.7" y2="4.5" width="0.127" layer="21"/>
<wire x1="-1" y1="4.75" x2="0.45" y2="4.75" width="0.05" layer="39"/>
<wire x1="0.45" y1="4.75" x2="0.45" y2="6.1" width="0.05" layer="39"/>
<wire x1="0.45" y1="6.1" x2="5.55" y2="6.1" width="0.05" layer="39"/>
<wire x1="5.55" y1="6.1" x2="5.55" y2="4.75" width="0.05" layer="39"/>
<wire x1="5.55" y1="4.75" x2="14" y2="4.75" width="0.05" layer="39"/>
<wire x1="14" y1="4.75" x2="14" y2="-4.75" width="0.05" layer="39"/>
<wire x1="14" y1="-4.75" x2="-1" y2="-4.75" width="0.05" layer="39"/>
<wire x1="-1" y1="-4.75" x2="-1" y2="-2.35" width="0.05" layer="39"/>
<circle x="-2" y="0" radius="0.2" width="0.4" layer="21"/>
<wire x1="-1" y1="2.25" x2="-1" y2="4.75" width="0.05" layer="39"/>
<wire x1="-1" y1="2.25" x2="-1.55" y2="2.25" width="0.05" layer="39"/>
<wire x1="-1.55" y1="2.25" x2="-1.55" y2="-2.35" width="0.05" layer="39"/>
<wire x1="-1.55" y1="-2.35" x2="-1" y2="-2.35" width="0.05" layer="39"/>
<pad name="1" x="0" y="0" drill="1" diameter="2.5" shape="long" rot="R90"/>
<pad name="2" x="6" y="0" drill="1" diameter="2.25" shape="long" rot="R90"/>
<pad name="3" x="3" y="4.7" drill="1" diameter="2.25" shape="long" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="PJ-002AH">
<wire x1="-5.715" y1="1.27" x2="-5.715" y2="3.81" width="0.1524" layer="94" curve="-180"/>
<wire x1="-5.715" y1="3.81" x2="-1.27" y2="3.81" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="3.81" x2="-1.27" y2="1.27" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="94"/>
<wire x1="0" y1="0.635" x2="0" y2="4.445" width="0.1524" layer="94"/>
<wire x1="0" y1="4.445" x2="-1.27" y2="4.445" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="4.445" x2="-1.27" y2="3.81" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-3.175" y1="-2.54" x2="-3.81" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-1.27" x2="-4.445" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<text x="-7.62723125" y="5.08481875" size="1.779690625" layer="95">&gt;NAME</text>
<text x="-7.631259375" y="-5.0875" size="1.78063125" layer="96">&gt;VALUE</text>
<polygon width="0.1524" layer="94">
<vertex x="0" y="-2.54"/>
<vertex x="-0.508" y="-1.27"/>
<vertex x="0.508" y="-1.27"/>
</polygon>
<pin name="1" x="5.08" y="2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="3" x="5.08" y="0" visible="pad" length="middle" direction="pas" rot="R180"/>
<pin name="2" x="5.08" y="-2.54" visible="pad" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PJ-002AH" prefix="J">
<description>2.0 mm Center Pin, 5.0 A, Right Angle, Through Hole, Dc Power Jack Connector</description>
<gates>
<gate name="G$1" symbol="PJ-002AH" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CUI_PJ-002AH">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="CUI_PURCHASE_URL" value="https://www.cui.com/product/interconnect/dc-power-connectors/jacks/2.0-mm-center-pin/pj-002ah?utm_source=snapeda.com&amp;utm_medium=referral&amp;utm_campaign=snapedaBOM"/>
<attribute name="DESCRIPTION" value=" 2.0 mm Center Pin, 5.0 A, Right Angle, Through Hole, Dc Power Jack Connector "/>
<attribute name="MF" value="CUI Inc."/>
<attribute name="MP" value="PJ-002AH"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="74441-0010">
<packages>
<package name="MOLEX_74441-0010">
<text x="-4.50201875" y="5.50246875" size="1.27056875" layer="25">&gt;NAME</text>
<text x="-4.50535" y="-7.00833125" size="1.271509375" layer="27">&gt;VALUE</text>
<smd name="1" x="-3.2" y="-4.1" dx="0.5" dy="2" layer="1"/>
<smd name="2" x="-2.4" y="-4.1" dx="0.5" dy="2" layer="1"/>
<smd name="3" x="-1.6" y="-4.1" dx="0.5" dy="2" layer="1"/>
<smd name="4" x="-0.8" y="-4.1" dx="0.5" dy="2" layer="1"/>
<smd name="5" x="0" y="-4.1" dx="0.5" dy="2" layer="1"/>
<smd name="6" x="0.8" y="-4.1" dx="0.5" dy="2" layer="1"/>
<smd name="7" x="1.6" y="-4.1" dx="0.5" dy="2" layer="1"/>
<smd name="8" x="2.4" y="-4.1" dx="0.5" dy="2" layer="1"/>
<smd name="9" x="3.2" y="-4.1" dx="0.5" dy="2" layer="1"/>
<smd name="10" x="4" y="-4.1" dx="0.5" dy="2" layer="1"/>
<smd name="11" x="3.6" y="4.1" dx="0.5" dy="2" layer="1" rot="R180"/>
<smd name="12" x="2.8" y="4.1" dx="0.5" dy="2" layer="1" rot="R180"/>
<smd name="13" x="2" y="4.1" dx="0.5" dy="2" layer="1" rot="R180"/>
<smd name="14" x="1.2" y="4.1" dx="0.5" dy="2" layer="1" rot="R180"/>
<smd name="15" x="0.4" y="4.1" dx="0.5" dy="2" layer="1" rot="R180"/>
<smd name="16" x="-0.4" y="4.1" dx="0.5" dy="2" layer="1" rot="R180"/>
<smd name="17" x="-1.2" y="4.1" dx="0.5" dy="2" layer="1" rot="R180"/>
<smd name="18" x="-2" y="4.1" dx="0.5" dy="2" layer="1" rot="R180"/>
<smd name="19" x="-2.8" y="4.1" dx="0.5" dy="2" layer="1" rot="R180"/>
<smd name="20" x="-3.6" y="4.1" dx="0.5" dy="2" layer="1" rot="R180"/>
<hole x="-6.93" y="-0.9" drill="0.85"/>
<hole x="-4.6" y="0" drill="1.55"/>
<hole x="5" y="0" drill="1.55"/>
</package>
</packages>
<symbols>
<symbol name="74441-0010">
<wire x1="-3.81" y1="-25.4" x2="3.81" y2="-25.4" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-25.4" x2="3.81" y2="27.94" width="0.4064" layer="94"/>
<wire x1="3.81" y1="27.94" x2="-3.81" y2="27.94" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="27.94" x2="-3.81" y2="-25.4" width="0.4064" layer="94"/>
<text x="-3.815659375" y="28.6175" size="1.780640625" layer="95">&gt;NAME</text>
<text x="-3.812940625" y="-27.9615" size="1.77936875" layer="96">&gt;VALUE</text>
<pin name="1" x="0" y="25.4" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="0" y="22.86" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="0" y="20.32" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="0" y="17.78" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="0" y="15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="0" y="12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="0" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="0" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="9" x="0" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="0" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="11" x="0" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="12" x="0" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="13" x="0" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="14" x="0" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="15" x="0" y="-10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="16" x="0" y="-12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="17" x="0" y="-15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="18" x="0" y="-17.78" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="19" x="0" y="-20.32" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="20" x="0" y="-22.86" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74441-0010" prefix="P">
<description>0.80mm Pitch SFP, SFP Plus (SFP+) Host Connector, Z-Axis Pluggable, Right Angle, SMT, 20 Circuits, 0.76µm Gold (Au)</description>
<gates>
<gate name="G$1" symbol="74441-0010" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MOLEX_74441-0010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value="  0.80mm Pitch SFP, SFP Plus _SFP+_ Host Connector, Z-Axis Pluggable, Right Angle, SMT, 20 Circuits, 0.76µm Gold _Au_ "/>
<attribute name="MF" value="Molex"/>
<attribute name="MP" value="74441-0010"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
<class number="1" name="Diff" width="0.254" drill="0">
<clearance class="1" value="0.0508"/>
</class>
</classes>
<parts>
<part name="U$1" library="TDC7200" deviceset="TDC7200" device="7201PW"/>
<part name="C1" library="capsmd" deviceset="C0603" device="" value="100nF"/>
<part name="+3V1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="R1" library="RES_0603" deviceset="RES_0603" device="" value="1k"/>
<part name="C2" library="capsmd" deviceset="C0603" device="" value="1uF"/>
<part name="SUPPLY2" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="U$2" library="Ref_Clk" deviceset="REF_CLK_10MHZ" device=""/>
<part name="JP3" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X6" device="" package3d_urn="urn:adsk.eagle:package:22472/2"/>
<part name="JP4" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X6" device="" package3d_urn="urn:adsk.eagle:package:22472/2"/>
<part name="+3V3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="SUPPLY3" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY4" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="U5" library="R-78B3.3-2.0" deviceset="R-78B3.3-2.0" device=""/>
<part name="U6" library="R-78B3.3-2.0" deviceset="R-78B3.3-2.0" device=""/>
<part name="+3V7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="SUPPLY7" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY8" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="P+2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="+3V8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="SUPPLY9" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="JP5" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-2X10" device="" package3d_urn="urn:adsk.eagle:package:22405/2"/>
<part name="SUPPLY10" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY11" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="U1" library="MAX9110EKA_T" deviceset="MAX9110EKA+T" device=""/>
<part name="U2" library="MAX9110EKA_T" deviceset="MAX9110EKA+T" device=""/>
<part name="U3" library="MAX9111EKA_T" deviceset="MAX9111EKA+T" device=""/>
<part name="U4" library="MAX9111EKA_T" deviceset="MAX9111EKA+T" device=""/>
<part name="SUPPLY12" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY13" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY6" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="R2" library="RES_0603" deviceset="RES_0603" device="" value="1k"/>
<part name="R3" library="RES_0603" deviceset="RES_0603" device="" value="1k"/>
<part name="+3V5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="+3V6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="SUPPLY1" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY5" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY14" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY15" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY16" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY17" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY18" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY19" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY20" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY21" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY22" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY23" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY24" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY25" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY26" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="JP6" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X1" device="" package3d_urn="urn:adsk.eagle:package:22485/2"/>
<part name="JP7" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X1" device="" package3d_urn="urn:adsk.eagle:package:22485/2"/>
<part name="JP8" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X1" device="" package3d_urn="urn:adsk.eagle:package:22485/2"/>
<part name="R4" library="RES_0603" deviceset="RES_0603" device="" value="10k"/>
<part name="R5" library="RES_0603" deviceset="RES_0603" device="" value="10k"/>
<part name="R6" library="RES_0603" deviceset="RES_0603" device="" value="10k"/>
<part name="R7" library="RES_0603" deviceset="RES_0603" device="" value="10k"/>
<part name="JP10" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X1" device="" package3d_urn="urn:adsk.eagle:package:22485/2"/>
<part name="JP11" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X1" device="" package3d_urn="urn:adsk.eagle:package:22485/2"/>
<part name="JP13" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X1" device="" package3d_urn="urn:adsk.eagle:package:22485/2"/>
<part name="C3" library="capsmd" deviceset="C0603" device="" value="100nF"/>
<part name="C4" library="capsmd" deviceset="C0603" device="" value="10uF"/>
<part name="C5" library="capsmd" deviceset="C0603" device="" value="4.7uF"/>
<part name="SUPPLY27" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="C6" library="capsmd" deviceset="C0603" device="" value="100nF"/>
<part name="SUPPLY28" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="+3V2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="C7" library="capsmd" deviceset="C0603" device="" value="100nF"/>
<part name="SUPPLY29" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="+3V4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="C8" library="capsmd" deviceset="C0603" device="" value="100nF"/>
<part name="SUPPLY30" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="+3V10" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="C9" library="capsmd" deviceset="C0603" device="" value="100nF"/>
<part name="SUPPLY31" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="+3V18" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="C10" library="capsmd" deviceset="C0603" device="" value="100nF"/>
<part name="SUPPLY32" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="+3V16" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="C11" library="capsmd" deviceset="C0603" device="" value="100nF"/>
<part name="SUPPLY33" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="+3V14" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="C12" library="capsmd" deviceset="C0603" device="" value="100nF"/>
<part name="SUPPLY34" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="+3V19" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="C13" library="capsmd" deviceset="C0603" device="" value="100nF"/>
<part name="SUPPLY35" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="+3V20" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="C14" library="capsmd" deviceset="C0603" device="" value="100nF"/>
<part name="SUPPLY36" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="+3V21" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="C15" library="capsmd" deviceset="C0603" device="" value="100nF"/>
<part name="SUPPLY37" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="+3V22" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="C16" library="capsmd" deviceset="C0603" device="" value="100nF"/>
<part name="SUPPLY38" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="+3V23" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="C17" library="capsmd" deviceset="C0603" device="" value="100nF"/>
<part name="SUPPLY39" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="L1" library="inductor-neosid" library_urn="urn:adsk.eagle:library:241" deviceset="MS50" device="" package3d_urn="urn:adsk.eagle:package:14699/1" value="10uH"/>
<part name="J1" library="Screw Block" deviceset="1935161" device=""/>
<part name="J2" library="PJ-002AH" deviceset="PJ-002AH" device=""/>
<part name="SUPPLY40" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="P1" library="74441-0010" deviceset="74441-0010" device=""/>
<part name="P2" library="74441-0010" deviceset="74441-0010" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="116.84" y="86.36" size="1.778" layer="91">JP3 is middle of board</text>
<text x="182.88" y="2.54" size="1.778" layer="91">EXT1 MCU</text>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="43.18" y="27.94" smashed="yes"/>
<instance part="C1" gate="G$1" x="63.5" y="53.34" smashed="yes" rot="R90">
<attribute name="NAME" x="62.865" y="55.88" size="1.524" layer="95" rot="R90"/>
<attribute name="VALUE" x="65.659" y="55.88" size="1.524" layer="96" rot="R90"/>
</instance>
<instance part="+3V1" gate="G$1" x="63.5" y="63.5" smashed="yes">
<attribute name="VALUE" x="60.96" y="58.42" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R1" gate="G$1" x="-5.08" y="45.72" smashed="yes">
<attribute name="NAME" x="-8.89" y="47.2186" size="1.778" layer="95"/>
<attribute name="VALUE" x="-8.89" y="42.418" size="1.778" layer="96"/>
</instance>
<instance part="C2" gate="G$1" x="45.72" y="43.18" smashed="yes">
<attribute name="NAME" x="48.26" y="43.815" size="1.524" layer="95"/>
<attribute name="VALUE" x="48.26" y="41.021" size="1.524" layer="96"/>
</instance>
<instance part="SUPPLY2" gate="GND" x="5.08" y="20.32" smashed="yes" rot="R270">
<attribute name="VALUE" x="1.905" y="22.225" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="U$2" gate="G$1" x="-68.58" y="12.7" smashed="yes">
<attribute name="VALUE" x="-73.66" y="17.78" size="1.778" layer="96"/>
<attribute name="NAME" x="-73.66" y="33.02" size="1.778" layer="95"/>
</instance>
<instance part="JP3" gate="A" x="132.08" y="96.52" smashed="yes">
<attribute name="NAME" x="125.73" y="107.315" size="1.778" layer="95"/>
<attribute name="VALUE" x="125.73" y="86.36" size="1.778" layer="96"/>
</instance>
<instance part="JP4" gate="A" x="132.08" y="63.5" smashed="yes">
<attribute name="NAME" x="125.73" y="74.295" size="1.778" layer="95"/>
<attribute name="VALUE" x="125.73" y="53.34" size="1.778" layer="96"/>
</instance>
<instance part="+3V3" gate="G$1" x="40.64" y="210.82" smashed="yes">
<attribute name="VALUE" x="38.1" y="205.74" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY3" gate="GND" x="40.64" y="144.78" smashed="yes">
<attribute name="VALUE" x="38.735" y="141.605" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY4" gate="GND" x="40.64" y="187.96" smashed="yes">
<attribute name="VALUE" x="38.735" y="184.785" size="1.778" layer="96"/>
</instance>
<instance part="U5" gate="G$1" x="-53.34" y="190.5" smashed="yes">
<attribute name="NAME" x="-71.12" y="196.58" size="2.0828" layer="95" ratio="10" rot="SR0"/>
<attribute name="VALUE" x="-71.12" y="181.42" size="2.0828" layer="96" ratio="10" rot="SR0"/>
</instance>
<instance part="U6" gate="G$1" x="-53.34" y="167.64" smashed="yes">
<attribute name="NAME" x="-71.12" y="173.72" size="2.0828" layer="95" ratio="10" rot="SR0"/>
<attribute name="VALUE" x="-71.12" y="158.56" size="2.0828" layer="96" ratio="10" rot="SR0"/>
</instance>
<instance part="+3V7" gate="G$1" x="-17.78" y="195.58" smashed="yes">
<attribute name="VALUE" x="-20.32" y="190.5" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY7" gate="GND" x="-76.2" y="185.42" smashed="yes">
<attribute name="VALUE" x="-78.105" y="182.245" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY8" gate="GND" x="-76.2" y="162.56" smashed="yes">
<attribute name="VALUE" x="-78.105" y="159.385" size="1.778" layer="96"/>
</instance>
<instance part="P+1" gate="1" x="-17.78" y="172.72" smashed="yes">
<attribute name="VALUE" x="-20.32" y="167.64" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="P+2" gate="1" x="111.76" y="101.6" smashed="yes">
<attribute name="VALUE" x="109.22" y="96.52" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="+3V8" gate="G$1" x="-88.9" y="35.56" smashed="yes">
<attribute name="VALUE" x="-91.44" y="30.48" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY9" gate="GND" x="-48.26" y="20.32" smashed="yes">
<attribute name="VALUE" x="-50.165" y="14.605" size="1.778" layer="96"/>
</instance>
<instance part="JP5" gate="A" x="187.96" y="27.94" smashed="yes">
<attribute name="NAME" x="181.61" y="41.275" size="1.778" layer="95"/>
<attribute name="VALUE" x="181.61" y="10.16" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY10" gate="GND" x="177.8" y="12.7" smashed="yes">
<attribute name="VALUE" x="175.895" y="9.525" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY11" gate="GND" x="205.74" y="40.64" smashed="yes" rot="R90">
<attribute name="VALUE" x="208.915" y="40.005" size="1.778" layer="96"/>
</instance>
<instance part="U1" gate="G$1" x="132.08" y="152.4" smashed="yes">
<attribute name="NAME" x="124.46" y="162.56" size="1.778" layer="95"/>
<attribute name="VALUE" x="124.46" y="142.24" size="1.778" layer="96"/>
</instance>
<instance part="U2" gate="G$1" x="63.5" y="195.58" smashed="yes" rot="MR0">
<attribute name="NAME" x="71.12" y="205.74" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="71.12" y="185.42" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="U3" gate="G$1" x="132.08" y="195.58" smashed="yes">
<attribute name="NAME" x="124.46" y="205.74" size="1.778" layer="95"/>
<attribute name="VALUE" x="124.46" y="185.42" size="1.778" layer="96"/>
</instance>
<instance part="U4" gate="G$1" x="63.5" y="152.4" smashed="yes" rot="MR0">
<attribute name="NAME" x="71.12" y="162.56" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="71.12" y="142.24" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="SUPPLY12" gate="GND" x="154.94" y="144.78" smashed="yes" rot="MR0">
<attribute name="VALUE" x="156.845" y="141.605" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="SUPPLY13" gate="GND" x="154.94" y="187.96" smashed="yes" rot="MR0">
<attribute name="VALUE" x="156.845" y="184.785" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="SUPPLY6" gate="GND" x="111.76" y="91.44" smashed="yes">
<attribute name="VALUE" x="109.855" y="88.265" size="1.778" layer="96"/>
</instance>
<instance part="R2" gate="G$1" x="106.68" y="58.42" smashed="yes" rot="R90">
<attribute name="NAME" x="105.1814" y="54.61" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="109.982" y="54.61" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R3" gate="G$1" x="157.48" y="55.88" smashed="yes" rot="R90">
<attribute name="NAME" x="155.9814" y="52.07" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="160.782" y="52.07" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="+3V5" gate="G$1" x="106.68" y="71.12" smashed="yes">
<attribute name="VALUE" x="104.14" y="66.04" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="+3V6" gate="G$1" x="157.48" y="68.58" smashed="yes">
<attribute name="VALUE" x="154.94" y="63.5" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY1" gate="GND" x="33.02" y="281.94" smashed="yes" rot="R90">
<attribute name="VALUE" x="36.195" y="280.035" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY5" gate="GND" x="53.34" y="266.7" smashed="yes" rot="R90">
<attribute name="VALUE" x="56.515" y="264.795" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY14" gate="GND" x="40.64" y="312.42" smashed="yes" rot="R90">
<attribute name="VALUE" x="43.815" y="310.515" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY15" gate="GND" x="-15.24" y="312.42" smashed="yes" rot="R270">
<attribute name="VALUE" x="-17.145" y="314.325" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY16" gate="GND" x="-17.78" y="266.7" smashed="yes" rot="R270">
<attribute name="VALUE" x="-19.685" y="268.605" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY17" gate="GND" x="205.74" y="281.94" smashed="yes" rot="R90">
<attribute name="VALUE" x="208.915" y="280.035" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY18" gate="GND" x="205.74" y="266.7" smashed="yes" rot="R90">
<attribute name="VALUE" x="208.915" y="264.795" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY19" gate="GND" x="205.74" y="312.42" smashed="yes" rot="R90">
<attribute name="VALUE" x="208.915" y="310.515" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY20" gate="GND" x="129.54" y="309.88" smashed="yes">
<attribute name="VALUE" x="127.635" y="306.705" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY21" gate="GND" x="129.54" y="264.16" smashed="yes">
<attribute name="VALUE" x="127.635" y="260.985" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY22" gate="GND" x="-147.32" y="208.28" smashed="yes">
<attribute name="VALUE" x="-149.225" y="205.105" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY23" gate="GND" x="33.02" y="297.18" smashed="yes" rot="R90">
<attribute name="VALUE" x="36.195" y="295.275" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY24" gate="GND" x="205.74" y="297.18" smashed="yes" rot="R90">
<attribute name="VALUE" x="208.915" y="295.275" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY25" gate="GND" x="63.5" y="45.72" smashed="yes">
<attribute name="VALUE" x="61.595" y="42.545" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY26" gate="GND" x="53.34" y="43.18" smashed="yes" rot="R90">
<attribute name="VALUE" x="56.515" y="41.275" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="JP6" gate="G$1" x="132.08" y="38.1" smashed="yes" rot="R180">
<attribute name="NAME" x="138.43" y="34.925" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="138.43" y="43.18" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="JP7" gate="G$1" x="238.76" y="38.1" smashed="yes">
<attribute name="NAME" x="232.41" y="41.275" size="1.778" layer="95"/>
<attribute name="VALUE" x="232.41" y="33.02" size="1.778" layer="96"/>
</instance>
<instance part="JP8" gate="G$1" x="238.76" y="30.48" smashed="yes">
<attribute name="NAME" x="232.41" y="33.655" size="1.778" layer="95"/>
<attribute name="VALUE" x="232.41" y="25.4" size="1.778" layer="96"/>
</instance>
<instance part="R4" gate="G$1" x="144.78" y="276.86" smashed="yes">
<attribute name="NAME" x="140.97" y="278.3586" size="1.778" layer="95"/>
<attribute name="VALUE" x="140.97" y="273.558" size="1.778" layer="96"/>
</instance>
<instance part="R5" gate="G$1" x="-25.4" y="276.86" smashed="yes">
<attribute name="NAME" x="-29.21" y="278.3586" size="1.778" layer="95"/>
<attribute name="VALUE" x="-29.21" y="273.558" size="1.778" layer="96"/>
</instance>
<instance part="R6" gate="G$1" x="-25.4" y="307.34" smashed="yes">
<attribute name="NAME" x="-29.21" y="308.8386" size="1.778" layer="95"/>
<attribute name="VALUE" x="-29.21" y="304.038" size="1.778" layer="96"/>
</instance>
<instance part="R7" gate="G$1" x="144.78" y="307.34" smashed="yes">
<attribute name="NAME" x="140.97" y="308.8386" size="1.778" layer="95"/>
<attribute name="VALUE" x="140.97" y="304.038" size="1.778" layer="96"/>
</instance>
<instance part="JP10" gate="G$1" x="104.14" y="302.26" smashed="yes" rot="R180">
<attribute name="NAME" x="110.49" y="299.085" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="110.49" y="307.34" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="JP11" gate="G$1" x="-66.04" y="302.26" smashed="yes" rot="R180">
<attribute name="NAME" x="-59.69" y="299.085" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-59.69" y="307.34" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="JP13" gate="G$1" x="154.94" y="35.56" smashed="yes" rot="R180">
<attribute name="NAME" x="161.29" y="32.385" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="161.29" y="40.64" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="C3" gate="G$1" x="-86.36" y="12.7" smashed="yes">
<attribute name="NAME" x="-83.82" y="13.335" size="1.524" layer="95"/>
<attribute name="VALUE" x="-83.82" y="10.541" size="1.524" layer="96"/>
</instance>
<instance part="C4" gate="G$1" x="-121.92" y="187.96" smashed="yes" rot="R90">
<attribute name="NAME" x="-122.555" y="190.5" size="1.524" layer="95" rot="R90"/>
<attribute name="VALUE" x="-119.761" y="190.5" size="1.524" layer="96" rot="R90"/>
</instance>
<instance part="C5" gate="G$1" x="-101.6" y="187.96" smashed="yes" rot="R90">
<attribute name="NAME" x="-102.235" y="190.5" size="1.524" layer="95" rot="R90"/>
<attribute name="VALUE" x="-99.441" y="190.5" size="1.524" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY27" gate="GND" x="-111.76" y="182.88" smashed="yes">
<attribute name="VALUE" x="-113.665" y="179.705" size="1.778" layer="96"/>
</instance>
<instance part="C6" gate="G$1" x="40.64" y="200.66" smashed="yes" rot="R90">
<attribute name="NAME" x="40.005" y="203.2" size="1.524" layer="95" rot="R90"/>
<attribute name="VALUE" x="42.799" y="203.2" size="1.524" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY28" gate="GND" x="40.64" y="195.58" smashed="yes">
<attribute name="VALUE" x="38.735" y="192.405" size="1.778" layer="96"/>
</instance>
<instance part="+3V2" gate="G$1" x="20.32" y="167.64" smashed="yes">
<attribute name="VALUE" x="17.78" y="162.56" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C7" gate="G$1" x="20.32" y="157.48" smashed="yes" rot="R90">
<attribute name="NAME" x="19.685" y="160.02" size="1.524" layer="95" rot="R90"/>
<attribute name="VALUE" x="22.479" y="160.02" size="1.524" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY29" gate="GND" x="20.32" y="152.4" smashed="yes">
<attribute name="VALUE" x="18.415" y="149.225" size="1.778" layer="96"/>
</instance>
<instance part="+3V4" gate="G$1" x="160.02" y="215.9" smashed="yes">
<attribute name="VALUE" x="157.48" y="210.82" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C8" gate="G$1" x="160.02" y="205.74" smashed="yes" rot="R90">
<attribute name="NAME" x="159.385" y="208.28" size="1.524" layer="95" rot="R90"/>
<attribute name="VALUE" x="162.179" y="208.28" size="1.524" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY30" gate="GND" x="160.02" y="200.66" smashed="yes">
<attribute name="VALUE" x="158.115" y="197.485" size="1.778" layer="96"/>
</instance>
<instance part="+3V10" gate="G$1" x="160.02" y="172.72" smashed="yes">
<attribute name="VALUE" x="157.48" y="167.64" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C9" gate="G$1" x="160.02" y="162.56" smashed="yes" rot="R90">
<attribute name="NAME" x="159.385" y="165.1" size="1.524" layer="95" rot="R90"/>
<attribute name="VALUE" x="162.179" y="165.1" size="1.524" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY31" gate="GND" x="160.02" y="157.48" smashed="yes">
<attribute name="VALUE" x="158.115" y="154.305" size="1.778" layer="96"/>
</instance>
<instance part="+3V18" gate="G$1" x="-81.28" y="317.5" smashed="yes">
<attribute name="VALUE" x="-83.82" y="312.42" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C10" gate="G$1" x="-81.28" y="304.8" smashed="yes" rot="R90">
<attribute name="NAME" x="-81.915" y="307.34" size="1.524" layer="95" rot="R90"/>
<attribute name="VALUE" x="-79.121" y="307.34" size="1.524" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY32" gate="GND" x="-81.28" y="299.72" smashed="yes">
<attribute name="VALUE" x="-83.185" y="296.545" size="1.778" layer="96"/>
</instance>
<instance part="+3V16" gate="G$1" x="-66.04" y="289.56" smashed="yes">
<attribute name="VALUE" x="-68.58" y="284.48" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C11" gate="G$1" x="-66.04" y="274.32" smashed="yes" rot="R90">
<attribute name="NAME" x="-66.675" y="276.86" size="1.524" layer="95" rot="R90"/>
<attribute name="VALUE" x="-63.881" y="276.86" size="1.524" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY33" gate="GND" x="-66.04" y="269.24" smashed="yes">
<attribute name="VALUE" x="-67.945" y="266.065" size="1.778" layer="96"/>
</instance>
<instance part="+3V14" gate="G$1" x="58.42" y="312.42" smashed="yes">
<attribute name="VALUE" x="55.88" y="307.34" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C12" gate="G$1" x="58.42" y="302.26" smashed="yes" rot="R90">
<attribute name="NAME" x="57.785" y="304.8" size="1.524" layer="95" rot="R90"/>
<attribute name="VALUE" x="60.579" y="304.8" size="1.524" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY34" gate="GND" x="58.42" y="297.18" smashed="yes">
<attribute name="VALUE" x="56.515" y="294.005" size="1.778" layer="96"/>
</instance>
<instance part="+3V19" gate="G$1" x="66.04" y="297.18" smashed="yes">
<attribute name="VALUE" x="63.5" y="292.1" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C13" gate="G$1" x="66.04" y="284.48" smashed="yes" rot="R90">
<attribute name="NAME" x="65.405" y="287.02" size="1.524" layer="95" rot="R90"/>
<attribute name="VALUE" x="68.199" y="287.02" size="1.524" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY35" gate="GND" x="66.04" y="279.4" smashed="yes">
<attribute name="VALUE" x="64.135" y="276.225" size="1.778" layer="96"/>
</instance>
<instance part="+3V20" gate="G$1" x="106.68" y="325.12" smashed="yes">
<attribute name="VALUE" x="104.14" y="320.04" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C14" gate="G$1" x="106.68" y="314.96" smashed="yes" rot="R90">
<attribute name="NAME" x="106.045" y="317.5" size="1.524" layer="95" rot="R90"/>
<attribute name="VALUE" x="108.839" y="317.5" size="1.524" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY36" gate="GND" x="106.68" y="309.88" smashed="yes">
<attribute name="VALUE" x="104.775" y="306.705" size="1.778" layer="96"/>
</instance>
<instance part="+3V21" gate="G$1" x="109.22" y="284.48" smashed="yes">
<attribute name="VALUE" x="106.68" y="279.4" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C15" gate="G$1" x="109.22" y="274.32" smashed="yes" rot="R90">
<attribute name="NAME" x="108.585" y="276.86" size="1.524" layer="95" rot="R90"/>
<attribute name="VALUE" x="111.379" y="276.86" size="1.524" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY37" gate="GND" x="109.22" y="269.24" smashed="yes">
<attribute name="VALUE" x="107.315" y="266.065" size="1.778" layer="96"/>
</instance>
<instance part="+3V22" gate="G$1" x="248.92" y="307.34" smashed="yes">
<attribute name="VALUE" x="246.38" y="302.26" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C16" gate="G$1" x="248.92" y="297.18" smashed="yes" rot="R90">
<attribute name="NAME" x="248.285" y="299.72" size="1.524" layer="95" rot="R90"/>
<attribute name="VALUE" x="251.079" y="299.72" size="1.524" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY38" gate="GND" x="248.92" y="292.1" smashed="yes">
<attribute name="VALUE" x="247.015" y="288.925" size="1.778" layer="96"/>
</instance>
<instance part="+3V23" gate="G$1" x="236.22" y="292.1" smashed="yes">
<attribute name="VALUE" x="233.68" y="287.02" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="C17" gate="G$1" x="236.22" y="281.94" smashed="yes" rot="R90">
<attribute name="NAME" x="235.585" y="284.48" size="1.524" layer="95" rot="R90"/>
<attribute name="VALUE" x="238.379" y="284.48" size="1.524" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY39" gate="GND" x="236.22" y="276.86" smashed="yes">
<attribute name="VALUE" x="234.315" y="273.685" size="1.778" layer="96"/>
</instance>
<instance part="L1" gate="G$1" x="-111.76" y="193.04" smashed="yes">
<attribute name="NAME" x="-115.57" y="194.818" size="1.778" layer="95"/>
<attribute name="VALUE" x="-115.57" y="189.484" size="1.778" layer="96"/>
</instance>
<instance part="J1" gate="G$1" x="-119.38" y="215.9" smashed="yes">
<attribute name="NAME" x="-121.92548125" y="221.627340625" size="1.272740625" layer="95"/>
<attribute name="VALUE" x="-121.92808125" y="208.25576875" size="1.274040625" layer="96"/>
</instance>
<instance part="J2" gate="G$1" x="-152.4" y="218.44" smashed="yes">
<attribute name="NAME" x="-160.02723125" y="223.52481875" size="1.779690625" layer="95"/>
<attribute name="VALUE" x="-160.031259375" y="213.3525" size="1.78063125" layer="96"/>
</instance>
<instance part="SUPPLY40" gate="GND" x="-134.62" y="210.82" smashed="yes">
<attribute name="VALUE" x="-136.525" y="207.645" size="1.778" layer="96"/>
</instance>
<instance part="P1" gate="G$1" x="12.7" y="332.74" smashed="yes" rot="R90">
<attribute name="NAME" x="-15.9175" y="328.924340625" size="1.780640625" layer="95" rot="R90"/>
<attribute name="VALUE" x="40.6615" y="328.927059375" size="1.77936875" layer="96" rot="R90"/>
</instance>
<instance part="P2" gate="G$1" x="180.34" y="332.74" smashed="yes" rot="R90">
<attribute name="NAME" x="151.7225" y="328.924340625" size="1.780640625" layer="95" rot="R90"/>
<attribute name="VALUE" x="208.3015" y="328.927059375" size="1.77936875" layer="96" rot="R90"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="+3V3" class="0">
<segment>
<pinref part="+3V7" gate="G$1" pin="+3V3"/>
<pinref part="U5" gate="G$1" pin="VOUT"/>
<wire x1="-17.78" y1="193.04" x2="-30.48" y2="193.04" width="0.1524" layer="91"/>
<label x="-33.02" y="195.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="+3V8" gate="G$1" pin="+3V3"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="-88.9" y1="33.02" x2="-88.9" y2="27.94" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="VDD"/>
<wire x1="-88.9" y1="27.94" x2="-88.9" y2="12.7" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="27.94" x2="-88.9" y2="27.94" width="0.1524" layer="91"/>
<junction x="-88.9" y="27.94"/>
</segment>
<segment>
<pinref part="+3V5" gate="G$1" pin="+3V3"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="106.68" y1="68.58" x2="106.68" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="+3V6" gate="G$1" pin="+3V3"/>
<wire x1="157.48" y1="66.04" x2="157.48" y2="63.5" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="+3V1" gate="G$1" pin="+3V3"/>
<wire x1="63.5" y1="60.96" x2="63.5" y2="55.88" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="U$1" gate="G$1" pin="VDD"/>
<wire x1="43.18" y1="45.72" x2="53.34" y2="45.72" width="0.1524" layer="91"/>
<wire x1="53.34" y1="45.72" x2="53.34" y2="55.88" width="0.1524" layer="91"/>
<wire x1="53.34" y1="55.88" x2="63.5" y2="55.88" width="0.1524" layer="91"/>
<junction x="63.5" y="55.88"/>
<label x="50.8" y="55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="VCC"/>
<pinref part="C6" gate="G$1" pin="2"/>
<wire x1="50.8" y1="203.2" x2="40.64" y2="203.2" width="0.1524" layer="91"/>
<pinref part="+3V3" gate="G$1" pin="+3V3"/>
<wire x1="40.64" y1="203.2" x2="40.64" y2="208.28" width="0.1524" layer="91"/>
<junction x="40.64" y="203.2"/>
</segment>
<segment>
<wire x1="20.32" y1="160.02" x2="20.32" y2="165.1" width="0.1524" layer="91"/>
<pinref part="+3V2" gate="G$1" pin="+3V3"/>
<pinref part="C7" gate="G$1" pin="2"/>
<junction x="20.32" y="160.02"/>
<pinref part="U4" gate="G$1" pin="VCC"/>
<wire x1="50.8" y1="160.02" x2="20.32" y2="160.02" width="0.1524" layer="91"/>
<label x="40.64" y="160.02" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="160.02" y1="208.28" x2="160.02" y2="213.36" width="0.1524" layer="91"/>
<pinref part="+3V4" gate="G$1" pin="+3V3"/>
<pinref part="C8" gate="G$1" pin="2"/>
<pinref part="U3" gate="G$1" pin="VCC"/>
<wire x1="144.78" y1="203.2" x2="144.78" y2="208.28" width="0.1524" layer="91"/>
<wire x1="144.78" y1="208.28" x2="160.02" y2="208.28" width="0.1524" layer="91"/>
<junction x="160.02" y="208.28"/>
<label x="147.32" y="208.28" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="248.92" y1="299.72" x2="248.92" y2="304.8" width="0.1524" layer="91"/>
<pinref part="+3V22" gate="G$1" pin="+3V3"/>
<pinref part="C16" gate="G$1" pin="2"/>
<wire x1="228.6" y1="292.1" x2="193.04" y2="292.1" width="0.1524" layer="91"/>
<wire x1="228.6" y1="292.1" x2="228.6" y2="299.72" width="0.1524" layer="91"/>
<wire x1="228.6" y1="299.72" x2="248.92" y2="299.72" width="0.1524" layer="91"/>
<junction x="248.92" y="299.72"/>
<label x="231.14" y="299.72" size="1.778" layer="95"/>
<pinref part="P2" gate="G$1" pin="16"/>
<wire x1="193.04" y1="292.1" x2="193.04" y2="332.74" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="236.22" y1="284.48" x2="236.22" y2="287.02" width="0.1524" layer="91"/>
<pinref part="+3V23" gate="G$1" pin="+3V3"/>
<pinref part="C17" gate="G$1" pin="2"/>
<wire x1="236.22" y1="287.02" x2="236.22" y2="289.56" width="0.1524" layer="91"/>
<wire x1="236.22" y1="287.02" x2="193.04" y2="287.02" width="0.1524" layer="91"/>
<junction x="236.22" y="287.02"/>
<label x="226.06" y="287.02" size="1.778" layer="95"/>
<pinref part="P2" gate="G$1" pin="15"/>
<wire x1="193.04" y1="287.02" x2="190.5" y2="332.74" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="106.68" y1="317.5" x2="106.68" y2="322.58" width="0.1524" layer="91"/>
<pinref part="+3V20" gate="G$1" pin="+3V3"/>
<pinref part="C14" gate="G$1" pin="2"/>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="137.16" y1="307.34" x2="119.38" y2="307.34" width="0.1524" layer="91"/>
<wire x1="119.38" y1="307.34" x2="119.38" y2="317.5" width="0.1524" layer="91"/>
<wire x1="119.38" y1="317.5" x2="106.68" y2="317.5" width="0.1524" layer="91"/>
<junction x="106.68" y="317.5"/>
<label x="114.3" y="317.5" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="109.22" y1="276.86" x2="109.22" y2="281.94" width="0.1524" layer="91"/>
<pinref part="+3V21" gate="G$1" pin="+3V3"/>
<pinref part="C15" gate="G$1" pin="2"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="137.16" y1="276.86" x2="109.22" y2="276.86" width="0.1524" layer="91"/>
<junction x="109.22" y="276.86"/>
<label x="129.54" y="276.86" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="58.42" y1="304.8" x2="58.42" y2="309.88" width="0.1524" layer="91"/>
<pinref part="+3V14" gate="G$1" pin="+3V3"/>
<pinref part="C12" gate="G$1" pin="2"/>
<wire x1="50.8" y1="292.1" x2="25.4" y2="292.1" width="0.1524" layer="91"/>
<wire x1="50.8" y1="292.1" x2="50.8" y2="304.8" width="0.1524" layer="91"/>
<wire x1="50.8" y1="304.8" x2="58.42" y2="304.8" width="0.1524" layer="91"/>
<junction x="58.42" y="304.8"/>
<label x="48.26" y="304.8" size="1.778" layer="95"/>
<pinref part="P1" gate="G$1" pin="16"/>
<wire x1="25.4" y1="332.74" x2="25.4" y2="292.1" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="66.04" y1="287.02" x2="66.04" y2="294.64" width="0.1524" layer="91"/>
<pinref part="+3V19" gate="G$1" pin="+3V3"/>
<pinref part="C13" gate="G$1" pin="2"/>
<wire x1="66.04" y1="287.02" x2="22.86" y2="287.02" width="0.1524" layer="91"/>
<junction x="66.04" y="287.02"/>
<label x="50.8" y="287.02" size="1.778" layer="95"/>
<pinref part="P1" gate="G$1" pin="15"/>
<wire x1="22.86" y1="332.74" x2="22.86" y2="287.02" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-81.28" y1="307.34" x2="-81.28" y2="314.96" width="0.1524" layer="91"/>
<pinref part="+3V18" gate="G$1" pin="+3V3"/>
<pinref part="C10" gate="G$1" pin="2"/>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="-33.02" y1="307.34" x2="-81.28" y2="307.34" width="0.1524" layer="91"/>
<junction x="-81.28" y="307.34"/>
<label x="-63.5" y="307.34" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-66.04" y1="276.86" x2="-66.04" y2="287.02" width="0.1524" layer="91"/>
<pinref part="+3V16" gate="G$1" pin="+3V3"/>
<pinref part="C11" gate="G$1" pin="2"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="-33.02" y1="276.86" x2="-66.04" y2="276.86" width="0.1524" layer="91"/>
<junction x="-66.04" y="276.86"/>
<label x="-55.88" y="276.86" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="160.02" y1="165.1" x2="160.02" y2="170.18" width="0.1524" layer="91"/>
<pinref part="+3V10" gate="G$1" pin="+3V3"/>
<pinref part="C9" gate="G$1" pin="2"/>
<pinref part="U1" gate="G$1" pin="VCC"/>
<wire x1="160.02" y1="165.1" x2="144.78" y2="165.1" width="0.1524" layer="91"/>
<wire x1="144.78" y1="165.1" x2="144.78" y2="160.02" width="0.1524" layer="91"/>
<junction x="160.02" y="165.1"/>
<label x="144.78" y="165.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="ENABLE"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="10.16" y1="45.72" x2="2.54" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VREG"/>
<pinref part="C2" gate="G$1" pin="1"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="SUPPLY2" gate="GND" pin="GND"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="7.62" y1="20.32" x2="10.16" y2="20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY4" gate="GND" pin="GND"/>
<wire x1="40.64" y1="190.5" x2="50.8" y2="190.5" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SUPPLY7" gate="GND" pin="GND"/>
<pinref part="U5" gate="G$1" pin="EMPTY"/>
</segment>
<segment>
<pinref part="SUPPLY8" gate="GND" pin="GND"/>
<pinref part="U6" gate="G$1" pin="EMPTY"/>
</segment>
<segment>
<pinref part="SUPPLY9" gate="GND" pin="GND"/>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="-48.26" y1="22.86" x2="-50.8" y2="22.86" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="2"/>
<wire x1="-50.8" y1="22.86" x2="-53.34" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="12.7" x2="-50.8" y2="12.7" width="0.1524" layer="91"/>
<wire x1="-50.8" y1="12.7" x2="-50.8" y2="22.86" width="0.1524" layer="91"/>
<junction x="-50.8" y="22.86"/>
</segment>
<segment>
<wire x1="200.66" y1="38.1" x2="193.04" y2="38.1" width="0.1524" layer="91"/>
<pinref part="JP5" gate="A" pin="2"/>
<label x="198.12" y="38.1" size="1.778" layer="95"/>
<pinref part="SUPPLY11" gate="GND" pin="GND"/>
<wire x1="200.66" y1="38.1" x2="200.66" y2="40.64" width="0.1524" layer="91"/>
<wire x1="200.66" y1="40.64" x2="203.2" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="185.42" y1="15.24" x2="177.8" y2="15.24" width="0.1524" layer="91"/>
<pinref part="JP5" gate="A" pin="19"/>
<label x="175.26" y="15.24" size="1.778" layer="95"/>
<pinref part="SUPPLY10" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="SUPPLY3" gate="GND" pin="GND"/>
<pinref part="U4" gate="G$1" pin="GND"/>
<wire x1="40.64" y1="147.32" x2="50.8" y2="147.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY12" gate="GND" pin="GND"/>
<wire x1="154.94" y1="147.32" x2="144.78" y2="147.32" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="SUPPLY13" gate="GND" pin="GND"/>
<wire x1="154.94" y1="190.5" x2="144.78" y2="190.5" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="5"/>
<wire x1="111.76" y1="93.98" x2="129.54" y2="93.98" width="0.1524" layer="91"/>
<label x="116.84" y="93.98" size="1.778" layer="95"/>
<pinref part="SUPPLY6" gate="GND" pin="GND"/>
<pinref part="JP3" gate="A" pin="4"/>
<label x="116.84" y="96.52" size="1.778" layer="95"/>
<wire x1="129.54" y1="96.52" x2="111.76" y2="96.52" width="0.1524" layer="91"/>
<wire x1="111.76" y1="96.52" x2="111.76" y2="93.98" width="0.1524" layer="91"/>
<junction x="111.76" y="93.98"/>
</segment>
<segment>
<pinref part="SUPPLY1" gate="GND" pin="GND"/>
<pinref part="P1" gate="G$1" pin="14"/>
<wire x1="20.32" y1="332.74" x2="20.32" y2="281.94" width="0.1524" layer="91"/>
<wire x1="20.32" y1="281.94" x2="30.48" y2="281.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY5" gate="GND" pin="GND"/>
<wire x1="50.8" y1="266.7" x2="12.7" y2="266.7" width="0.1524" layer="91"/>
<pinref part="P1" gate="G$1" pin="11"/>
<wire x1="12.7" y1="332.74" x2="12.7" y2="266.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY15" gate="GND" pin="GND"/>
<pinref part="P1" gate="G$1" pin="1"/>
<wire x1="-12.7" y1="332.74" x2="-12.7" y2="312.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY16" gate="GND" pin="GND"/>
<pinref part="P1" gate="G$1" pin="10"/>
<wire x1="10.16" y1="332.74" x2="10.16" y2="266.7" width="0.1524" layer="91"/>
<wire x1="10.16" y1="266.7" x2="-15.24" y2="266.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY17" gate="GND" pin="GND"/>
<wire x1="203.2" y1="281.94" x2="193.04" y2="281.94" width="0.1524" layer="91"/>
<pinref part="P2" gate="G$1" pin="14"/>
<wire x1="193.04" y1="281.94" x2="187.96" y2="332.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY18" gate="GND" pin="GND"/>
<wire x1="203.2" y1="266.7" x2="185.42" y2="266.7" width="0.1524" layer="91"/>
<pinref part="P2" gate="G$1" pin="11"/>
<wire x1="185.42" y1="266.7" x2="180.34" y2="332.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY19" gate="GND" pin="GND"/>
<wire x1="203.2" y1="312.42" x2="200.66" y2="312.42" width="0.1524" layer="91"/>
<pinref part="P2" gate="G$1" pin="20"/>
<wire x1="203.2" y1="332.74" x2="203.2" y2="312.42" width="0.1524" layer="91"/>
<junction x="203.2" y="312.42"/>
</segment>
<segment>
<pinref part="SUPPLY20" gate="GND" pin="GND"/>
<wire x1="129.54" y1="312.42" x2="157.48" y2="312.42" width="0.1524" layer="91"/>
<pinref part="P2" gate="G$1" pin="1"/>
<wire x1="157.48" y1="312.42" x2="154.94" y2="332.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY23" gate="GND" pin="GND"/>
<pinref part="P1" gate="G$1" pin="17"/>
<wire x1="27.94" y1="332.74" x2="27.94" y2="297.18" width="0.1524" layer="91"/>
<wire x1="27.94" y1="297.18" x2="30.48" y2="297.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY24" gate="GND" pin="GND"/>
<wire x1="203.2" y1="297.18" x2="200.66" y2="297.18" width="0.1524" layer="91"/>
<pinref part="P2" gate="G$1" pin="17"/>
<wire x1="195.58" y1="332.74" x2="200.66" y2="297.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY25" gate="GND" pin="GND"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="63.5" y1="48.26" x2="63.5" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY26" gate="GND" pin="GND"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="50.8" y1="43.18" x2="48.26" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="1"/>
<pinref part="SUPPLY27" gate="GND" pin="GND"/>
<wire x1="-101.6" y1="185.42" x2="-111.76" y2="185.42" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="-111.76" y1="185.42" x2="-121.92" y2="185.42" width="0.1524" layer="91"/>
<junction x="-111.76" y="185.42"/>
</segment>
<segment>
<pinref part="SUPPLY28" gate="GND" pin="GND"/>
<pinref part="C6" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="SUPPLY29" gate="GND" pin="GND"/>
<pinref part="C7" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="SUPPLY30" gate="GND" pin="GND"/>
<pinref part="C8" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="SUPPLY31" gate="GND" pin="GND"/>
<pinref part="C9" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="SUPPLY32" gate="GND" pin="GND"/>
<pinref part="C10" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="SUPPLY33" gate="GND" pin="GND"/>
<pinref part="C11" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="SUPPLY34" gate="GND" pin="GND"/>
<pinref part="C12" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="SUPPLY35" gate="GND" pin="GND"/>
<pinref part="C13" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="SUPPLY36" gate="GND" pin="GND"/>
<pinref part="C14" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="SUPPLY37" gate="GND" pin="GND"/>
<pinref part="C15" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="SUPPLY38" gate="GND" pin="GND"/>
<pinref part="C16" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="SUPPLY39" gate="GND" pin="GND"/>
<pinref part="C17" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="3"/>
<pinref part="J2" gate="G$1" pin="2"/>
<wire x1="-147.32" y1="218.44" x2="-147.32" y2="215.9" width="0.1524" layer="91"/>
<pinref part="SUPPLY22" gate="GND" pin="GND"/>
<wire x1="-147.32" y1="210.82" x2="-147.32" y2="215.9" width="0.1524" layer="91"/>
<junction x="-147.32" y="215.9"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="2"/>
<pinref part="SUPPLY40" gate="GND" pin="GND"/>
<wire x1="-127" y1="213.36" x2="-134.62" y2="213.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P1" gate="G$1" pin="20"/>
<wire x1="35.56" y1="332.74" x2="35.56" y2="312.42" width="0.1524" layer="91"/>
<pinref part="SUPPLY14" gate="GND" pin="GND"/>
<wire x1="35.56" y1="312.42" x2="38.1" y2="312.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RESET" class="0">
<segment>
<pinref part="JP3" gate="A" pin="1"/>
<wire x1="129.54" y1="104.14" x2="124.46" y2="104.14" width="0.1524" layer="91"/>
<label x="116.84" y="104.14" size="1.778" layer="95"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="U6" gate="G$1" pin="VOUT"/>
<pinref part="P+1" gate="1" pin="+5V"/>
<wire x1="-17.78" y1="170.18" x2="-30.48" y2="170.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="3"/>
<wire x1="129.54" y1="99.06" x2="111.76" y2="99.06" width="0.1524" layer="91"/>
<label x="116.84" y="99.06" size="1.778" layer="95"/>
<pinref part="P+2" gate="1" pin="+5V"/>
</segment>
</net>
<net name="NC" class="0">
<segment>
<pinref part="JP5" gate="A" pin="1"/>
<wire x1="185.42" y1="38.1" x2="175.26" y2="38.1" width="0.1524" layer="91"/>
<label x="177.8" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="GPIO_SP3" class="0">
<segment>
<pinref part="JP5" gate="A" pin="7"/>
<label x="167.64" y="30.48" size="1.778" layer="95"/>
<wire x1="185.42" y1="30.48" x2="142.24" y2="30.48" width="0.1524" layer="91"/>
<wire x1="142.24" y1="30.48" x2="142.24" y2="38.1" width="0.1524" layer="91"/>
<pinref part="JP6" gate="G$1" pin="1"/>
<wire x1="142.24" y1="38.1" x2="134.62" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TDC_INT" class="0">
<segment>
<wire x1="185.42" y1="27.94" x2="78.74" y2="27.94" width="0.1524" layer="91"/>
<pinref part="JP5" gate="A" pin="9"/>
<label x="167.64" y="27.94" size="1.778" layer="95"/>
<pinref part="U$1" gate="G$1" pin="INTB"/>
<wire x1="43.18" y1="20.32" x2="78.74" y2="20.32" width="0.1524" layer="91"/>
<wire x1="78.74" y1="20.32" x2="78.74" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="I2C_SDA" class="0">
<segment>
<pinref part="JP5" gate="A" pin="11"/>
<label x="167.64" y="25.4" size="1.778" layer="95"/>
<wire x1="185.42" y1="25.4" x2="114.3" y2="25.4" width="0.1524" layer="91"/>
<wire x1="114.3" y1="25.4" x2="114.3" y2="50.8" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="5"/>
<label x="119.38" y="60.96" size="1.778" layer="95"/>
<wire x1="114.3" y1="50.8" x2="114.3" y2="60.96" width="0.1524" layer="91"/>
<wire x1="114.3" y1="60.96" x2="129.54" y2="60.96" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="106.68" y1="50.8" x2="114.3" y2="50.8" width="0.1524" layer="91"/>
<junction x="114.3" y="50.8"/>
<wire x1="-5.08" y1="297.18" x2="-48.26" y2="297.18" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="297.18" x2="-48.26" y2="238.76" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="238.76" x2="-48.26" y2="213.36" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="213.36" x2="12.7" y2="213.36" width="0.1524" layer="91"/>
<wire x1="12.7" y1="213.36" x2="12.7" y2="78.74" width="0.1524" layer="91"/>
<wire x1="12.7" y1="78.74" x2="93.98" y2="78.74" width="0.1524" layer="91"/>
<wire x1="93.98" y1="78.74" x2="93.98" y2="50.8" width="0.1524" layer="91"/>
<wire x1="93.98" y1="50.8" x2="106.68" y2="50.8" width="0.1524" layer="91"/>
<junction x="106.68" y="50.8"/>
<wire x1="-48.26" y1="238.76" x2="116.84" y2="238.76" width="0.1524" layer="91"/>
<wire x1="116.84" y1="238.76" x2="116.84" y2="297.18" width="0.1524" layer="91"/>
<junction x="-48.26" y="238.76"/>
<wire x1="116.84" y1="297.18" x2="172.72" y2="297.18" width="0.1524" layer="91"/>
<pinref part="P1" gate="G$1" pin="4"/>
<wire x1="-5.08" y1="332.74" x2="-5.08" y2="297.18" width="0.1524" layer="91"/>
<pinref part="P2" gate="G$1" pin="4"/>
<wire x1="172.72" y1="297.18" x2="162.56" y2="332.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RX_PULSE" class="0">
<segment>
<pinref part="JP5" gate="A" pin="13"/>
<label x="167.64" y="22.86" size="1.778" layer="95"/>
<wire x1="185.42" y1="22.86" x2="99.06" y2="22.86" width="0.1524" layer="91"/>
<wire x1="99.06" y1="22.86" x2="99.06" y2="198.12" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="DOUT"/>
<wire x1="99.06" y1="198.12" x2="119.38" y2="198.12" width="0.1524" layer="91"/>
<wire x1="99.06" y1="22.86" x2="99.06" y2="10.16" width="0.1524" layer="91"/>
<junction x="99.06" y="22.86"/>
<wire x1="99.06" y1="10.16" x2="-7.62" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="33.02" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="STOP"/>
<wire x1="-7.62" y1="33.02" x2="10.16" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SPI_MISO" class="0">
<segment>
<pinref part="JP5" gate="A" pin="17"/>
<label x="167.64" y="17.78" size="1.778" layer="95"/>
<wire x1="185.42" y1="17.78" x2="58.42" y2="17.78" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="DOUT"/>
<wire x1="58.42" y1="17.78" x2="58.42" y2="25.4" width="0.1524" layer="91"/>
<wire x1="58.42" y1="25.4" x2="43.18" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SPI_SCK" class="0">
<segment>
<wire x1="205.74" y1="17.78" x2="193.04" y2="17.78" width="0.1524" layer="91"/>
<pinref part="JP5" gate="A" pin="18"/>
<label x="198.12" y="17.78" size="1.778" layer="95"/>
<wire x1="205.74" y1="17.78" x2="205.74" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="205.74" y1="-2.54" x2="53.34" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-2.54" x2="53.34" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="SCLK"/>
<wire x1="53.34" y1="35.56" x2="43.18" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SPI_MOSI" class="0">
<segment>
<pinref part="JP5" gate="A" pin="16"/>
<label x="198.12" y="20.32" size="1.778" layer="95"/>
<wire x1="193.04" y1="20.32" x2="208.28" y2="20.32" width="0.1524" layer="91"/>
<wire x1="208.28" y1="20.32" x2="208.28" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="208.28" y1="-5.08" x2="50.8" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-5.08" x2="50.8" y2="27.94" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="DIN"/>
<wire x1="50.8" y1="27.94" x2="43.18" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TX_PULSE" class="0">
<segment>
<wire x1="203.2" y1="22.86" x2="193.04" y2="22.86" width="0.1524" layer="91"/>
<pinref part="JP5" gate="A" pin="14"/>
<label x="198.12" y="22.86" size="1.778" layer="95"/>
<wire x1="203.2" y1="22.86" x2="203.2" y2="5.08" width="0.1524" layer="91"/>
<wire x1="203.2" y1="5.08" x2="96.52" y2="5.08" width="0.1524" layer="91"/>
<wire x1="96.52" y1="5.08" x2="96.52" y2="154.94" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="DIN"/>
<wire x1="96.52" y1="154.94" x2="119.38" y2="154.94" width="0.1524" layer="91"/>
<wire x1="96.52" y1="5.08" x2="-12.7" y2="5.08" width="0.1524" layer="91"/>
<junction x="96.52" y="5.08"/>
<pinref part="U$1" gate="G$1" pin="START"/>
<wire x1="-12.7" y1="5.08" x2="-12.7" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="35.56" x2="10.16" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="I2C_SCL" class="0">
<segment>
<pinref part="JP5" gate="A" pin="12"/>
<label x="198.12" y="25.4" size="1.778" layer="95"/>
<wire x1="193.04" y1="25.4" x2="218.44" y2="25.4" width="0.1524" layer="91"/>
<wire x1="218.44" y1="25.4" x2="218.44" y2="48.26" width="0.1524" layer="91"/>
<wire x1="218.44" y1="48.26" x2="157.48" y2="48.26" width="0.1524" layer="91"/>
<pinref part="JP4" gate="A" pin="6"/>
<label x="119.38" y="58.42" size="1.778" layer="95"/>
<wire x1="157.48" y1="48.26" x2="119.38" y2="48.26" width="0.1524" layer="91"/>
<wire x1="119.38" y1="48.26" x2="119.38" y2="58.42" width="0.1524" layer="91"/>
<wire x1="119.38" y1="58.42" x2="129.54" y2="58.42" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<junction x="157.48" y="48.26"/>
<wire x1="157.48" y1="48.26" x2="180.34" y2="48.26" width="0.1524" layer="91"/>
<wire x1="180.34" y1="48.26" x2="180.34" y2="254" width="0.1524" layer="91"/>
<wire x1="180.34" y1="254" x2="124.46" y2="254" width="0.1524" layer="91"/>
<wire x1="124.46" y1="254" x2="124.46" y2="292.1" width="0.1524" layer="91"/>
<wire x1="124.46" y1="292.1" x2="177.8" y2="292.1" width="0.1524" layer="91"/>
<wire x1="124.46" y1="254" x2="-40.64" y2="254" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="254" x2="-40.64" y2="292.1" width="0.1524" layer="91"/>
<junction x="124.46" y="254"/>
<wire x1="-40.64" y1="292.1" x2="-2.54" y2="292.1" width="0.1524" layer="91"/>
<pinref part="P1" gate="G$1" pin="5"/>
<wire x1="-2.54" y1="332.74" x2="-2.54" y2="292.1" width="0.1524" layer="91"/>
<pinref part="P2" gate="G$1" pin="5"/>
<wire x1="177.8" y1="292.1" x2="165.1" y2="332.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TDC_TRIG" class="0">
<segment>
<pinref part="JP5" gate="A" pin="10"/>
<label x="198.12" y="27.94" size="1.778" layer="95"/>
<wire x1="193.04" y1="27.94" x2="228.6" y2="27.94" width="0.1524" layer="91"/>
<wire x1="228.6" y1="27.94" x2="228.6" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-17.78" x2="-15.24" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="-17.78" x2="-15.24" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="TRIGG"/>
<wire x1="-15.24" y1="40.64" x2="10.16" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GPIO_SP4" class="0">
<segment>
<pinref part="JP5" gate="A" pin="8"/>
<label x="198.12" y="30.48" size="1.778" layer="95"/>
<pinref part="JP8" gate="G$1" pin="1"/>
<wire x1="193.04" y1="30.48" x2="236.22" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TDC_ENABLE" class="0">
<segment>
<pinref part="JP5" gate="A" pin="6"/>
<label x="198.12" y="33.02" size="1.778" layer="95"/>
<wire x1="193.04" y1="33.02" x2="215.9" y2="33.02" width="0.1524" layer="91"/>
<wire x1="215.9" y1="33.02" x2="215.9" y2="45.72" width="0.1524" layer="91"/>
<wire x1="215.9" y1="45.72" x2="83.82" y2="45.72" width="0.1524" layer="91"/>
<wire x1="83.82" y1="45.72" x2="83.82" y2="71.12" width="0.1524" layer="91"/>
<wire x1="83.82" y1="71.12" x2="-25.4" y2="71.12" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="-12.7" y1="45.72" x2="-25.4" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="71.12" x2="-25.4" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GPIO_SP2" class="0">
<segment>
<pinref part="JP5" gate="A" pin="4"/>
<label x="198.12" y="35.56" size="1.778" layer="95"/>
<wire x1="193.04" y1="35.56" x2="231.14" y2="35.56" width="0.1524" layer="91"/>
<wire x1="231.14" y1="35.56" x2="231.14" y2="38.1" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="1"/>
<wire x1="231.14" y1="38.1" x2="236.22" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GPIO_SP1" class="0">
<segment>
<pinref part="JP5" gate="A" pin="3"/>
<label x="167.64" y="35.56" size="1.778" layer="95"/>
<pinref part="JP13" gate="G$1" pin="1"/>
<wire x1="157.48" y1="35.56" x2="185.42" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CLOCK" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="CLOCK"/>
<pinref part="U$2" gate="G$1" pin="OUTPUT"/>
<wire x1="10.16" y1="27.94" x2="-53.34" y2="27.94" width="0.1524" layer="91"/>
<label x="-53.34" y="27.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="TDC_LPBK" class="0">
<segment>
<pinref part="JP5" gate="A" pin="15"/>
<wire x1="185.42" y1="20.32" x2="91.44" y2="20.32" width="0.1524" layer="91"/>
<wire x1="91.44" y1="20.32" x2="91.44" y2="177.8" width="0.1524" layer="91"/>
<wire x1="91.44" y1="177.8" x2="83.82" y2="177.8" width="0.1524" layer="91"/>
<label x="167.64" y="20.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="SUPPLY21" gate="GND" pin="GND"/>
<wire x1="129.54" y1="266.7" x2="182.88" y2="266.7" width="0.1524" layer="91"/>
<pinref part="P2" gate="G$1" pin="10"/>
<wire x1="182.88" y1="266.7" x2="177.8" y2="332.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="VIN"/>
<pinref part="U6" gate="G$1" pin="VIN"/>
<wire x1="-91.44" y1="193.04" x2="-76.2" y2="193.04" width="0.1524" layer="91"/>
<wire x1="-76.2" y1="170.18" x2="-91.44" y2="170.18" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="170.18" x2="-91.44" y2="193.04" width="0.1524" layer="91"/>
<wire x1="-106.68" y1="193.04" x2="-101.6" y2="193.04" width="0.1524" layer="91"/>
<junction x="-91.44" y="193.04"/>
<pinref part="C5" gate="G$1" pin="2"/>
<wire x1="-101.6" y1="193.04" x2="-91.44" y2="193.04" width="0.1524" layer="91"/>
<wire x1="-101.6" y1="190.5" x2="-101.6" y2="193.04" width="0.1524" layer="91"/>
<junction x="-101.6" y="193.04"/>
<pinref part="L1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="RXL_P" class="1">
<segment>
<wire x1="35.56" y1="276.86" x2="35.56" y2="154.94" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="DI+"/>
<wire x1="35.56" y1="154.94" x2="50.8" y2="154.94" width="0.1524" layer="91"/>
<label x="40.64" y="154.94" size="1.778" layer="95"/>
<pinref part="P1" gate="G$1" pin="13"/>
<wire x1="17.78" y1="332.74" x2="17.78" y2="276.86" width="0.1524" layer="91"/>
<wire x1="17.78" y1="276.86" x2="35.56" y2="276.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RXL_N" class="1">
<segment>
<wire x1="33.02" y1="271.78" x2="33.02" y2="152.4" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="DI-"/>
<wire x1="33.02" y1="152.4" x2="50.8" y2="152.4" width="0.1524" layer="91"/>
<label x="40.64" y="152.4" size="1.778" layer="95"/>
<pinref part="P1" gate="G$1" pin="12"/>
<wire x1="15.24" y1="332.74" x2="15.24" y2="271.78" width="0.1524" layer="91"/>
<wire x1="15.24" y1="271.78" x2="33.02" y2="271.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TXL_N" class="1">
<segment>
<wire x1="33.02" y1="307.34" x2="43.18" y2="307.34" width="0.1524" layer="91"/>
<wire x1="43.18" y1="307.34" x2="43.18" y2="195.58" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="DO-"/>
<wire x1="43.18" y1="195.58" x2="50.8" y2="195.58" width="0.1524" layer="91"/>
<label x="43.18" y="210.82" size="1.778" layer="95"/>
<pinref part="P1" gate="G$1" pin="19"/>
<wire x1="33.02" y1="332.74" x2="33.02" y2="307.34" width="0.1524" layer="91"/>
<wire x1="33.02" y1="307.34" x2="30.48" y2="307.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TXL_P" class="1">
<segment>
<wire x1="30.48" y1="302.26" x2="45.72" y2="302.26" width="0.1524" layer="91"/>
<wire x1="45.72" y1="302.26" x2="45.72" y2="198.12" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="DO+"/>
<wire x1="45.72" y1="198.12" x2="50.8" y2="198.12" width="0.1524" layer="91"/>
<label x="45.72" y="208.28" size="1.778" layer="95"/>
<pinref part="P1" gate="G$1" pin="18"/>
<wire x1="30.48" y1="332.74" x2="30.48" y2="302.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RXD_P" class="1">
<segment>
<pinref part="U3" gate="G$1" pin="DI+"/>
<wire x1="144.78" y1="198.12" x2="215.9" y2="198.12" width="0.1524" layer="91"/>
<wire x1="215.9" y1="198.12" x2="215.9" y2="276.86" width="0.1524" layer="91"/>
<wire x1="215.9" y1="276.86" x2="190.5" y2="276.86" width="0.1524" layer="91"/>
<label x="185.42" y="198.12" size="1.778" layer="95"/>
<pinref part="P2" gate="G$1" pin="13"/>
<wire x1="190.5" y1="276.86" x2="185.42" y2="332.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RXD_N" class="1">
<segment>
<pinref part="U3" gate="G$1" pin="DI-"/>
<wire x1="144.78" y1="195.58" x2="213.36" y2="195.58" width="0.1524" layer="91"/>
<wire x1="213.36" y1="195.58" x2="213.36" y2="271.78" width="0.1524" layer="91"/>
<label x="185.42" y="195.58" size="1.778" layer="95"/>
<wire x1="213.36" y1="271.78" x2="187.96" y2="271.78" width="0.1524" layer="91"/>
<pinref part="P2" gate="G$1" pin="12"/>
<wire x1="187.96" y1="271.78" x2="182.88" y2="332.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TXD_P" class="1">
<segment>
<pinref part="U1" gate="G$1" pin="DO+"/>
<wire x1="144.78" y1="154.94" x2="220.98" y2="154.94" width="0.1524" layer="91"/>
<wire x1="220.98" y1="154.94" x2="220.98" y2="302.26" width="0.1524" layer="91"/>
<wire x1="220.98" y1="302.26" x2="200.66" y2="302.26" width="0.1524" layer="91"/>
<label x="190.5" y="154.94" size="1.778" layer="95"/>
<pinref part="P2" gate="G$1" pin="18"/>
<wire x1="200.66" y1="302.26" x2="198.12" y2="332.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TXD_N" class="1">
<segment>
<pinref part="U1" gate="G$1" pin="DO-"/>
<wire x1="144.78" y1="152.4" x2="223.52" y2="152.4" width="0.1524" layer="91"/>
<wire x1="223.52" y1="152.4" x2="223.52" y2="307.34" width="0.1524" layer="91"/>
<wire x1="223.52" y1="307.34" x2="200.66" y2="307.34" width="0.1524" layer="91"/>
<label x="190.5" y="152.4" size="1.778" layer="95"/>
<pinref part="P2" gate="G$1" pin="19"/>
<wire x1="200.66" y1="307.34" x2="200.66" y2="332.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="DOUT"/>
<wire x1="76.2" y1="154.94" x2="83.82" y2="154.94" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="DIN"/>
<wire x1="83.82" y1="154.94" x2="83.82" y2="198.12" width="0.1524" layer="91"/>
<wire x1="83.82" y1="198.12" x2="76.2" y2="198.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="152.4" y1="276.86" x2="180.34" y2="276.86" width="0.1524" layer="91"/>
<pinref part="P2" gate="G$1" pin="8"/>
<wire x1="180.34" y1="276.86" x2="172.72" y2="332.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="R5" gate="G$1" pin="2"/>
<pinref part="P1" gate="G$1" pin="8"/>
<wire x1="5.08" y1="332.74" x2="5.08" y2="276.86" width="0.1524" layer="91"/>
<wire x1="5.08" y1="276.86" x2="-17.78" y2="276.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="2"/>
<pinref part="P1" gate="G$1" pin="2"/>
<wire x1="-10.16" y1="307.34" x2="-17.78" y2="307.34" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="332.74" x2="-10.16" y2="307.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="152.4" y1="307.34" x2="165.1" y2="307.34" width="0.1524" layer="91"/>
<pinref part="P2" gate="G$1" pin="2"/>
<wire x1="165.1" y1="307.34" x2="157.48" y2="332.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TX_DISABL_B" class="0">
<segment>
<pinref part="JP10" gate="G$1" pin="1"/>
<wire x1="106.68" y1="302.26" x2="167.64" y2="302.26" width="0.1524" layer="91"/>
<label x="121.92" y="302.26" size="1.778" layer="95"/>
<pinref part="P2" gate="G$1" pin="3"/>
<wire x1="160.02" y1="332.74" x2="167.64" y2="302.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TX_DISABLE_A" class="0">
<segment>
<pinref part="JP11" gate="G$1" pin="1"/>
<wire x1="-63.5" y1="302.26" x2="-7.62" y2="302.26" width="0.1524" layer="91"/>
<label x="-50.8" y="302.26" size="1.778" layer="95"/>
<pinref part="P1" gate="G$1" pin="3"/>
<wire x1="-7.62" y1="332.74" x2="-7.62" y2="302.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<wire x1="-142.24" y1="193.04" x2="-121.92" y2="193.04" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="-121.92" y1="193.04" x2="-121.92" y2="190.5" width="0.1524" layer="91"/>
<wire x1="-121.92" y1="193.04" x2="-116.84" y2="193.04" width="0.1524" layer="91"/>
<junction x="-121.92" y="193.04"/>
<pinref part="L1" gate="G$1" pin="1"/>
<pinref part="J2" gate="G$1" pin="1"/>
<wire x1="-147.32" y1="220.98" x2="-142.24" y2="220.98" width="0.1524" layer="91"/>
<wire x1="-142.24" y1="220.98" x2="-142.24" y2="218.44" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="1"/>
<wire x1="-142.24" y1="218.44" x2="-142.24" y2="193.04" width="0.1524" layer="91"/>
<wire x1="-127" y1="218.44" x2="-142.24" y2="218.44" width="0.1524" layer="91"/>
<junction x="-142.24" y="218.44"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="P1" gate="G$1" pin="6"/>
<wire x1="0" y1="332.74" x2="0" y2="287.02" width="0.1524" layer="91"/>
<wire x1="0" y1="287.02" x2="-12.7" y2="287.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="P1" gate="G$1" pin="7"/>
<wire x1="2.54" y1="332.74" x2="2.54" y2="281.94" width="0.1524" layer="91"/>
<wire x1="2.54" y1="281.94" x2="-12.7" y2="281.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="P1" gate="G$1" pin="9"/>
<wire x1="7.62" y1="332.74" x2="7.62" y2="271.78" width="0.1524" layer="91"/>
<wire x1="7.62" y1="271.78" x2="-12.7" y2="271.78" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="201,1,129.54,266.7,GND,GND\, N$7,,,,"/>
<approved hash="208,1,-17.78,193.04,+3V3,sup,,,,"/>
<approved hash="208,1,-30.48,193.04,+3V3,out,,,,"/>
<approved hash="208,1,-88.9,33.02,+3V3,sup,,,,"/>
<approved hash="208,1,106.68,68.58,+3V3,sup,,,,"/>
<approved hash="208,1,157.48,66.04,+3V3,sup,,,,"/>
<approved hash="208,1,63.5,60.96,+3V3,sup,,,,"/>
<approved hash="208,1,40.64,208.28,+3V3,sup,,,,"/>
<approved hash="208,1,20.32,165.1,+3V3,sup,,,,"/>
<approved hash="208,1,160.02,213.36,+3V3,sup,,,,"/>
<approved hash="208,1,248.92,304.8,+3V3,sup,,,,"/>
<approved hash="208,1,236.22,289.56,+3V3,sup,,,,"/>
<approved hash="208,1,106.68,322.58,+3V3,sup,,,,"/>
<approved hash="208,1,109.22,281.94,+3V3,sup,,,,"/>
<approved hash="208,1,58.42,309.88,+3V3,sup,,,,"/>
<approved hash="208,1,66.04,294.64,+3V3,sup,,,,"/>
<approved hash="208,1,-81.28,314.96,+3V3,sup,,,,"/>
<approved hash="208,1,-66.04,287.02,+3V3,sup,,,,"/>
<approved hash="208,1,160.02,170.18,+3V3,sup,,,,"/>
<approved hash="208,1,-30.48,170.18,+5V,out,,,,"/>
<approved hash="208,1,-17.78,170.18,+5V,sup,,,,"/>
<approved hash="208,1,111.76,99.06,+5V,sup,,,,"/>
</errors>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
