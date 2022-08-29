<!-- 
    @data_creazione: 26 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/impresa" prefix="simpresa"/>
    <sch:ns uri="http://agid.it/suap/entities/impresa" prefix="eimpresa"/>
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rea" prefix="eiscrea"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/> 
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_estero" prefix="eindest"/>

    <sch:pattern id="impresa_sez_ab" abstract="true">
        
        <sch:include href="../02_entities/ent_impresa_v1.0.0.sch#rule_impresa_ab"/>       
               
        <sch:rule id="rule_impresa_sez_ab_impresa" context="$nsimpresa:impresa">
            <sch:extends rule="rule_impresa_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_iscrizione_REA_v1.0.0.sch#rule_iscrizione_rea_ab"/>
        
        <sch:rule id="rule_impresa_sez_ab_iscrizione_registro" context="eimpresa:iscrizione_registro">
            <sch:extends rule="rule_iscrizione_rea_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#rule_indirizzo_italiano_ab"/>
                
        <sch:rule id="rule_impresa_sez_ab_indirizzo_italiano" context="eimpresa:indirizzo_italiano">
            <sch:extends rule="rule_indirizzo_italiano_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_indirizzo_estero_v1.0.0.sch#rule_indirizzo_estero_ab"/>
                
        <sch:rule id="rule_impresa_sez_ab_indirizzo_estero" context="eimpresa:indirizzo_estero">
            <sch:extends rule="rule_indirizzo_estero_ab"/>
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern id="impresa_sez" abstract="false" is-a="impresa_sez_ab">
        <sch:param name="nsimpresa" value="simpresa"/>        
    </sch:pattern>
   
</sch:schema>