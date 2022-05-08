package com.tmobile.services.nameid.model;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.NamespaceList;
import org.simpleframework.xml.Root;
@NamespaceList({@Namespace(prefix = "xsi", reference = "http://www.w3.org/2001/XMLSchema-instance")})
@Root(name = "AddRemoveSocRequest")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/AddRemoveSocRequest.class */
public class AddRemoveSocRequest {
    @Attribute(name = "xsi:noNamespaceSchemaLocation")
    private String noSchema = "addremovesoc.xsd";
    @Element(name = "operation")
    private String operation;
    @Element(name = "soccode")
    private String soccode;

    public String getOperation() {
        return this.operation;
    }

    public String getSoccode() {
        return this.soccode;
    }

    public void setOperation(String str) {
        this.operation = str;
    }

    public void setSoccode(String str) {
        this.soccode = str;
    }
}
