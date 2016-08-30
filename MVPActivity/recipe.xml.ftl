<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

    <instantiate from="root/src/app_package/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

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