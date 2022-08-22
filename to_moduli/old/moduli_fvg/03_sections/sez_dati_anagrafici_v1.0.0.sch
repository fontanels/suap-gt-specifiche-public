<!-- 
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/persona" prefix="epers"/>
    <sch:ns uri="http://agid.it/suap/entities/cittadinanza" prefix="ecitt"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/>
    <sch:ns uri="http://agid.it/suap/sections/scheda_anagrafica" prefix="sscheana"/>
    <sch:ns uri="http://agid.it/suap/sections/documento_rilasciato" prefix="edocril"/>
    
    <sch:include href="../02_entities/ent_persona_v1.0.0.sch#persona_ab"/>
    <sch:include href="../02_entities/ent_cittadinanza_v1.0.0.sch#cittadinanza_ab"/>
    <sch:include href="../02_entities/ent_documento_rilasciato_v1.0.0.sch#documento_rilasciato_ab"/>
    <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#indirizzo_italiano_ab"/>
    
    
    <sch:pattern id="sez_dati_anagrafici_persona" is-a="persona_ab" >
        <sch:param name="persona" value="//sscheana:persona"/>
    </sch:pattern>
    
    <sch:pattern id="cittadinanza" abstract="false" is-a="cittadinanza_ab">
        <sch:param name="cittadinanza" value="//sscheana:cittadinanza"/>        
    </sch:pattern>
    
    <sch:pattern id="documento_rilasciato" abstract="false" is-a="documento_rilasciato_ab">
        <sch:param name="documento_rilasciato" value="//sscheana:documento_rilasciato"/>        
    </sch:pattern>
    
    <sch:pattern id="sez_dati_anagrafici_residenza_indirizzo_italiano" is-a="indirizzo_italiano_ab" >
        <sch:param name="indirizzo_italiano" value="//sscheana:indirizzo_italiano"/>
    </sch:pattern>
    
</sch:schema>