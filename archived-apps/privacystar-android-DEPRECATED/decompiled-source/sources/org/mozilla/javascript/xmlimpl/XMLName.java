package org.mozilla.javascript.xmlimpl;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.EcmaError;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.Ref;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Undefined;
import org.mozilla.javascript.xmlimpl.XmlNode;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/xmlimpl/XMLName.class */
public class XMLName extends Ref {
    static final long serialVersionUID = 3832176310755686977L;
    private boolean isAttributeName;
    private boolean isDescendants;
    private XmlNode.QName qname;
    private XMLObjectImpl xmlObject;

    private XMLName() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean accept(Object obj) {
        try {
            String scriptRuntime = ScriptRuntime.toString(obj);
            int length = scriptRuntime.length();
            if (length == 0 || !isNCNameStartChar(scriptRuntime.charAt(0))) {
                return false;
            }
            for (int i = 1; i != length; i++) {
                if (!isNCNameChar(scriptRuntime.charAt(i))) {
                    return false;
                }
            }
            return true;
        } catch (EcmaError e) {
            if ("TypeError".equals(e.getName())) {
                return false;
            }
            throw e;
        }
    }

    private void addAttributes(XMLList xMLList, XML xml) {
        addMatchingAttributes(xMLList, xml);
    }

    private void addDescendantAttributes(XMLList xMLList, XML xml) {
        if (xml.isElement()) {
            addMatchingAttributes(xMLList, xml);
            for (XML xml2 : xml.getChildren()) {
                addDescendantAttributes(xMLList, xml2);
            }
        }
    }

    private void addDescendantChildren(XMLList xMLList, XML xml) {
        if (xml.isElement()) {
            XML[] children = xml.getChildren();
            for (int i = 0; i < children.length; i++) {
                if (matches(children[i])) {
                    xMLList.addToList(children[i]);
                }
                addDescendantChildren(xMLList, children[i]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static XMLName create(String str, String str2) {
        if (str2 == null) {
            throw new IllegalArgumentException();
        }
        int length = str2.length();
        if (length != 0) {
            char charAt = str2.charAt(0);
            if (charAt == '*') {
                if (length == 1) {
                    return formStar();
                }
            } else if (charAt == '@') {
                XMLName formProperty = formProperty("", str2.substring(1));
                formProperty.setAttributeName();
                return formProperty;
            }
        }
        return formProperty(str, str2);
    }

    @Deprecated
    static XMLName create(XmlNode.QName qName) {
        return create(qName, false, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static XMLName create(XmlNode.QName qName, boolean z, boolean z2) {
        XMLName xMLName = new XMLName();
        xMLName.qname = qName;
        xMLName.isAttributeName = z;
        xMLName.isDescendants = z2;
        return xMLName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static XMLName formProperty(String str, String str2) {
        return formProperty(XmlNode.Namespace.create(str), str2);
    }

    @Deprecated
    static XMLName formProperty(XmlNode.Namespace namespace, String str) {
        String str2 = str;
        if (str != null) {
            str2 = str;
            if (str.equals("*")) {
                str2 = null;
            }
        }
        XMLName xMLName = new XMLName();
        xMLName.qname = XmlNode.QName.create(namespace, str2);
        return xMLName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static XMLName formStar() {
        XMLName xMLName = new XMLName();
        xMLName.qname = XmlNode.QName.create(null, null);
        return xMLName;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0098, code lost:
        if (r3 <= 879) goto L_0x009b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00bb, code lost:
        if (r3 <= 8256) goto L_0x00be;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean isNCNameChar(int r3) {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.xmlimpl.XMLName.isNCNameChar(int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x00ed, code lost:
        if (r3 <= 983039) goto L_0x00f0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean isNCNameStartChar(int r3) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.xmlimpl.XMLName.isNCNameStartChar(int):boolean");
    }

    void addDescendants(XMLList xMLList, XML xml) {
        if (isAttributeName()) {
            matchDescendantAttributes(xMLList, xml);
        } else {
            matchDescendantChildren(xMLList, xml);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addMatches(XMLList xMLList, XML xml) {
        if (isDescendants()) {
            addDescendants(xMLList, xml);
        } else if (isAttributeName()) {
            addAttributes(xMLList, xml);
        } else {
            XML[] children = xml.getChildren();
            if (children != null) {
                for (int i = 0; i < children.length; i++) {
                    if (matches(children[i])) {
                        xMLList.addToList(children[i]);
                    }
                }
            }
            xMLList.setTargets(xml, toQname());
        }
    }

    void addMatchingAttributes(XMLList xMLList, XML xml) {
        if (xml.isElement()) {
            XML[] attributes = xml.getAttributes();
            for (int i = 0; i < attributes.length; i++) {
                if (matches(attributes[i])) {
                    xMLList.addToList(attributes[i]);
                }
            }
        }
    }

    @Override // org.mozilla.javascript.Ref
    public boolean delete(Context context) {
        if (this.xmlObject == null) {
            return true;
        }
        this.xmlObject.deleteXMLProperty(this);
        return !this.xmlObject.hasXMLProperty(this);
    }

    @Override // org.mozilla.javascript.Ref
    public Object get(Context context) {
        if (this.xmlObject != null) {
            return this.xmlObject.getXMLProperty(this);
        }
        throw ScriptRuntime.undefReadError(Undefined.instance, toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XMLList getMyValueOn(XML xml) {
        XMLList newXMLList = xml.newXMLList();
        addMatches(newXMLList, xml);
        return newXMLList;
    }

    @Override // org.mozilla.javascript.Ref
    public boolean has(Context context) {
        if (this.xmlObject == null) {
            return false;
        }
        return this.xmlObject.hasXMLProperty(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initXMLObject(XMLObjectImpl xMLObjectImpl) {
        if (xMLObjectImpl == null) {
            throw new IllegalArgumentException();
        } else if (this.xmlObject != null) {
            throw new IllegalStateException();
        } else {
            this.xmlObject = xMLObjectImpl;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAttributeName() {
        return this.isAttributeName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isDescendants() {
        return this.isDescendants;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String localName() {
        return this.qname.getLocalName() == null ? "*" : this.qname.getLocalName();
    }

    XMLList matchDescendantAttributes(XMLList xMLList, XML xml) {
        xMLList.setTargets(xml, null);
        addDescendantAttributes(xMLList, xml);
        return xMLList;
    }

    XMLList matchDescendantChildren(XMLList xMLList, XML xml) {
        xMLList.setTargets(xml, null);
        addDescendantChildren(xMLList, xml);
        return xMLList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean matches(XML xml) {
        XmlNode.QName nodeQname = xml.getNodeQname();
        String uri = nodeQname.getNamespace() != null ? nodeQname.getNamespace().getUri() : null;
        if (this.isAttributeName) {
            if (!xml.isAttribute()) {
                return false;
            }
            if (uri() == null || uri().equals(uri)) {
                return localName().equals("*") || localName().equals(nodeQname.getLocalName());
            }
            return false;
        } else if (uri() != null && (!xml.isElement() || !uri().equals(uri))) {
            return false;
        } else {
            if (localName().equals("*")) {
                return true;
            }
            return xml.isElement() && localName().equals(nodeQname.getLocalName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean matchesElement(XmlNode.QName qName) {
        if (uri() == null || uri().equals(qName.getNamespace().getUri())) {
            return localName().equals("*") || localName().equals(qName.getLocalName());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean matchesLocalName(String str) {
        return localName().equals("*") || localName().equals(str);
    }

    @Override // org.mozilla.javascript.Ref
    public Object set(Context context, Object obj) {
        if (this.xmlObject == null) {
            throw ScriptRuntime.undefWriteError(Undefined.instance, toString(), obj);
        } else if (this.isDescendants) {
            throw Kit.codeBug();
        } else {
            this.xmlObject.putXMLProperty(this, obj);
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAttributeName() {
        this.isAttributeName = true;
    }

    @Deprecated
    void setIsDescendants() {
        this.isDescendants = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setMyValueOn(XML xml, Object obj) {
        Object obj2;
        XMLObjectImpl xMLObjectImpl;
        if (obj == null) {
            obj2 = "null";
        } else {
            obj2 = obj;
            if (obj instanceof Undefined) {
                obj2 = "undefined";
            }
        }
        if (isAttributeName()) {
            xml.setAttribute(this, obj2);
        } else if (uri() != null || !localName().equals("*")) {
            if (obj2 instanceof XMLObjectImpl) {
                XMLObjectImpl xMLObjectImpl2 = (XMLObjectImpl) obj2;
                XMLObjectImpl xMLObjectImpl3 = xMLObjectImpl2;
                if (xMLObjectImpl2 instanceof XML) {
                    xMLObjectImpl3 = xMLObjectImpl2;
                    if (((XML) xMLObjectImpl2).isAttribute()) {
                        xMLObjectImpl3 = xml.makeXmlFromString(this, xMLObjectImpl2.toString());
                    }
                }
                xMLObjectImpl = xMLObjectImpl3;
                if (xMLObjectImpl3 instanceof XMLList) {
                    int i = 0;
                    while (true) {
                        xMLObjectImpl = xMLObjectImpl3;
                        if (i >= xMLObjectImpl3.length()) {
                            break;
                        }
                        XMLList xMLList = (XMLList) xMLObjectImpl3;
                        XML item = xMLList.item(i);
                        if (item.isAttribute()) {
                            xMLList.replace(i, xml.makeXmlFromString(this, item.toString()));
                        }
                        i++;
                    }
                }
            } else {
                xMLObjectImpl = xml.makeXmlFromString(this, ScriptRuntime.toString(obj2));
            }
            XMLList propertyList = xml.getPropertyList(this);
            if (propertyList.length() == 0) {
                xml.appendChild(xMLObjectImpl);
                return;
            }
            for (int i2 = 1; i2 < propertyList.length(); i2++) {
                xml.removeChild(propertyList.item(i2).childIndex());
            }
            xml.replace(propertyList.item(0).childIndex(), xMLObjectImpl);
        } else {
            xml.setChildren(obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final XmlNode.QName toQname() {
        return this.qname;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.isDescendants) {
            sb.append("..");
        }
        if (this.isAttributeName) {
            sb.append('@');
        }
        if (uri() == null) {
            sb.append('*');
            if (localName().equals("*")) {
                return sb.toString();
            }
        } else {
            sb.append('\"');
            sb.append(uri());
            sb.append('\"');
        }
        sb.append(':');
        sb.append(localName());
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String uri() {
        if (this.qname.getNamespace() == null) {
            return null;
        }
        return this.qname.getNamespace().getUri();
    }
}
