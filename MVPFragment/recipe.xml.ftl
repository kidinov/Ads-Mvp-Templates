<?xml version="1.0"?>
<recipe>

    <#if includeLayout>
        <instantiate from="root/res/layout/fragment_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />
    </#if>

    <open file="${escapeXmlAttribute(srcOut)}/${className}.java" />

    <instantiate from="root/src/app_package/Fragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}.java" />

    
 <#if generateView>
    <instantiate from="root/src/app_package/View.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${viewName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${viewName}.java" />
 </#if>

  <#if generatePresenter>
    <instantiate from="root/src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${presenterName}.java" />
 </#if>

</recipe>
