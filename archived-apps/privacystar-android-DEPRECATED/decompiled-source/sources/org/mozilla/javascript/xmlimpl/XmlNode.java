package org.mozilla.javascript.xmlimpl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.mozilla.javascript.Undefined;
import org.w3c.dom.Attr;
import org.w3c.dom.Comment;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;
import org.w3c.dom.UserDataHandler;
import org.xml.sax.SAXException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/xmlimpl/XmlNode.class */
public class XmlNode implements Serializable {
    private static final boolean DOM_LEVEL_3 = true;
    private static final String USER_DATA_XMLNODE_KEY = "org.mozilla.javascript.xmlimpl.XmlNode";
    private static final String XML_NAMESPACES_NAMESPACE_URI = "http://www.w3.org/2000/xmlns/";
    private static final long serialVersionUID = 1;
    private Node dom;
    private UserDataHandler events = new XmlNodeUserDataHandler();
    private XML xml;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/xmlimpl/XmlNode$Filter.class */
    public static abstract class Filter {
        static final Filter COMMENT = new Filter() { // from class: org.mozilla.javascript.xmlimpl.XmlNode.Filter.1
            @Override // org.mozilla.javascript.xmlimpl.XmlNode.Filter
            boolean accept(Node node) {
                return node.getNodeType() == 8;
            }
        };
        static final Filter TEXT = new Filter() { // from class: org.mozilla.javascript.xmlimpl.XmlNode.Filter.2
            @Override // org.mozilla.javascript.xmlimpl.XmlNode.Filter
            boolean accept(Node node) {
                return node.getNodeType() == 3;
            }
        };
        static Filter ELEMENT = new Filter() { // from class: org.mozilla.javascript.xmlimpl.XmlNode.Filter.4
            @Override // org.mozilla.javascript.xmlimpl.XmlNode.Filter
            boolean accept(Node node) {
                boolean z = true;
                if (node.getNodeType() != 1) {
                    z = false;
                }
                return z;
            }
        };
        static Filter TRUE = new Filter() { // from class: org.mozilla.javascript.xmlimpl.XmlNode.Filter.5
            @Override // org.mozilla.javascript.xmlimpl.XmlNode.Filter
            boolean accept(Node node) {
                return true;
            }
        };

        Filter() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static Filter PROCESSING_INSTRUCTION(final XMLName xMLName) {
            return new Filter() { // from class: org.mozilla.javascript.xmlimpl.XmlNode.Filter.3
                @Override // org.mozilla.javascript.xmlimpl.XmlNode.Filter
                boolean accept(Node node) {
                    if (node.getNodeType() == 7) {
                        return XMLName.this.matchesLocalName(((ProcessingInstruction) node).getTarget());
                    }
                    return false;
                }
            };
        }

        abstract boolean accept(Node node);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/xmlimpl/XmlNode$InternalList.class */
    public static class InternalList implements Serializable {
        private static final long serialVersionUID = -3633151157292048978L;
        private List<XmlNode> list = new ArrayList();

        private void _add(XmlNode xmlNode) {
            this.list.add(xmlNode);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void add(XML xml) {
            _add(xml.getAnnotation());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void add(InternalList internalList) {
            for (int i = 0; i < internalList.length(); i++) {
                _add(internalList.item(i));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void add(InternalList internalList, int i, int i2) {
            while (i < i2) {
                _add(internalList.item(i));
                i++;
            }
        }

        void add(XmlNode xmlNode) {
            _add(xmlNode);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void addToList(Object obj) {
            if (!(obj instanceof Undefined)) {
                if (obj instanceof XMLList) {
                    XMLList xMLList = (XMLList) obj;
                    for (int i = 0; i < xMLList.length(); i++) {
                        _add(xMLList.item(i).getAnnotation());
                    }
                } else if (obj instanceof XML) {
                    _add(((XML) obj).getAnnotation());
                } else if (obj instanceof XmlNode) {
                    _add((XmlNode) obj);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public XmlNode item(int i) {
            return this.list.get(i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int length() {
            return this.list.size();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void remove(int i) {
            this.list.remove(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/xmlimpl/XmlNode$Namespace.class */
    public static class Namespace implements Serializable {
        static final Namespace GLOBAL = create("", "");
        private static final long serialVersionUID = 4073904386884677090L;
        private String prefix;
        private String uri;

        private Namespace() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static Namespace create(String str) {
            Namespace namespace = new Namespace();
            namespace.uri = str;
            if (str == null || str.length() == 0) {
                namespace.prefix = "";
            }
            return namespace;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static Namespace create(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("Empty string represents default namespace prefix");
            } else if (str2 == null) {
                throw new IllegalArgumentException("Namespace may not lack a URI");
            } else {
                Namespace namespace = new Namespace();
                namespace.prefix = str;
                namespace.uri = str2;
                return namespace;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPrefix(String str) {
            if (str == null) {
                throw new IllegalArgumentException();
            }
            this.prefix = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getPrefix() {
            return this.prefix;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getUri() {
            return this.uri;
        }

        /* renamed from: is */
        boolean m202is(Namespace namespace) {
            return this.prefix != null && namespace.prefix != null && this.prefix.equals(namespace.prefix) && this.uri.equals(namespace.uri);
        }

        boolean isDefault() {
            return this.prefix != null && this.prefix.equals("");
        }

        boolean isEmpty() {
            return this.prefix != null && this.prefix.equals("") && this.uri.equals("");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isGlobal() {
            return this.uri != null && this.uri.equals("");
        }

        boolean isUnspecifiedPrefix() {
            return this.prefix == null;
        }

        public String toString() {
            if (this.prefix == null) {
                return "XmlNode.Namespace [" + this.uri + "]";
            }
            return "XmlNode.Namespace [" + this.prefix + "{" + this.uri + "}]";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/xmlimpl/XmlNode$Namespaces.class */
    public static class Namespaces {
        private Map<String, String> map = new HashMap();
        private Map<String, String> uriToPrefix = new HashMap();

        Namespaces() {
        }

        void declare(Namespace namespace) {
            if (this.map.get(namespace.prefix) == null) {
                this.map.put(namespace.prefix, namespace.uri);
            }
            if (this.uriToPrefix.get(namespace.uri) == null) {
                this.uriToPrefix.put(namespace.uri, namespace.prefix);
            }
        }

        Namespace getNamespace(String str) {
            if (this.map.get(str) == null) {
                return null;
            }
            return Namespace.create(str, this.map.get(str));
        }

        Namespace getNamespaceByUri(String str) {
            if (this.uriToPrefix.get(str) == null) {
                return null;
            }
            return Namespace.create(str, this.uriToPrefix.get(str));
        }

        Namespace[] getNamespaces() {
            ArrayList arrayList = new ArrayList();
            for (String str : this.map.keySet()) {
                Namespace create = Namespace.create(str, this.map.get(str));
                if (!create.isEmpty()) {
                    arrayList.add(create);
                }
            }
            return (Namespace[]) arrayList.toArray(new Namespace[arrayList.size()]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/xmlimpl/XmlNode$QName.class */
    public static class QName implements Serializable {
        private static final long serialVersionUID = -6587069811691451077L;
        private String localName;
        private Namespace namespace;

        private QName() {
        }

        @Deprecated
        static QName create(String str, String str2, String str3) {
            return create(Namespace.create(str3, str), str2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static QName create(Namespace namespace, String str) {
            if (str == null || !str.equals("*")) {
                QName qName = new QName();
                qName.namespace = namespace;
                qName.localName = str;
                return qName;
            }
            throw new RuntimeException("* is not valid localName");
        }

        private boolean equals(String str, String str2) {
            if (str == null && str2 == null) {
                return true;
            }
            if (str == null || str2 == null) {
                return false;
            }
            return str.equals(str2);
        }

        private boolean namespacesEqual(Namespace namespace, Namespace namespace2) {
            if (namespace == null && namespace2 == null) {
                return true;
            }
            if (namespace == null || namespace2 == null) {
                return false;
            }
            return equals(namespace.getUri(), namespace2.getUri());
        }

        static String qualify(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("prefix must not be null");
            } else if (str.length() <= 0) {
                return str2;
            } else {
                return str + ":" + str2;
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof QName)) {
                return false;
            }
            return equals((QName) obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean equals(QName qName) {
            return namespacesEqual(this.namespace, qName.namespace) && equals(this.localName, qName.localName);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getLocalName() {
            return this.localName;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Namespace getNamespace() {
            return this.namespace;
        }

        public int hashCode() {
            return this.localName == null ? 0 : this.localName.hashCode();
        }

        void lookupPrefix(Node node) {
            if (node == null) {
                throw new IllegalArgumentException("node must not be null");
            }
            String lookupPrefix = node.lookupPrefix(this.namespace.getUri());
            String str = lookupPrefix;
            if (lookupPrefix == null) {
                String lookupNamespaceURI = node.lookupNamespaceURI(null);
                String str2 = lookupNamespaceURI;
                if (lookupNamespaceURI == null) {
                    str2 = "";
                }
                str = lookupPrefix;
                if (this.namespace.getUri().equals(str2)) {
                    str = "";
                }
            }
            int i = 0;
            while (str == null) {
                String str3 = "e4x_" + i;
                if (node.lookupNamespaceURI(str3) == null) {
                    Node node2 = node;
                    while (node2.getParentNode() != null && (node2.getParentNode() instanceof Element)) {
                        node2 = node2.getParentNode();
                    }
                    ((Element) node2).setAttributeNS(XmlNode.XML_NAMESPACES_NAMESPACE_URI, "xmlns:" + str3, this.namespace.getUri());
                    str = str3;
                }
                i++;
            }
            this.namespace.setPrefix(str);
        }

        String qualify(Node node) {
            if (this.namespace.getPrefix() == null) {
                if (node != null) {
                    lookupPrefix(node);
                } else if (this.namespace.getUri().equals("")) {
                    this.namespace.setPrefix("");
                } else {
                    this.namespace.setPrefix("");
                }
            }
            return qualify(this.namespace.getPrefix(), this.localName);
        }

        void setAttribute(Element element, String str) {
            if (this.namespace.getPrefix() == null) {
                lookupPrefix(element);
            }
            element.setAttributeNS(this.namespace.getUri(), qualify(this.namespace.getPrefix(), this.localName), str);
        }

        public String toString() {
            return "XmlNode.QName [" + this.localName + "," + this.namespace + "]";
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/xmlimpl/XmlNode$XmlNodeUserDataHandler.class */
    static class XmlNodeUserDataHandler implements UserDataHandler, Serializable {
        private static final long serialVersionUID = 4666895518900769588L;

        XmlNodeUserDataHandler() {
        }

        @Override // org.w3c.dom.UserDataHandler
        public void handle(short s, String str, Object obj, Node node, Node node2) {
        }
    }

    private XmlNode() {
    }

    private void addNamespaces(Namespaces namespaces, Element element) {
        if (element == null) {
            throw new RuntimeException("element must not be null");
        }
        String uri = toUri(element.lookupNamespaceURI(null));
        String str = "";
        if (element.getParentNode() != null) {
            str = toUri(element.getParentNode().lookupNamespaceURI(null));
        }
        if (!uri.equals(str) || !(element.getParentNode() instanceof Element)) {
            namespaces.declare(Namespace.create("", uri));
        }
        NamedNodeMap attributes = element.getAttributes();
        for (int i = 0; i < attributes.getLength(); i++) {
            Attr attr = (Attr) attributes.item(i);
            if (attr.getPrefix() != null && attr.getPrefix().equals("xmlns")) {
                namespaces.declare(Namespace.create(attr.getLocalName(), attr.getValue()));
            }
        }
    }

    private static XmlNode copy(XmlNode xmlNode) {
        return createImpl(xmlNode.dom.cloneNode(true));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static XmlNode createElement(XmlProcessor xmlProcessor, String str, String str2) throws SAXException {
        return createImpl(xmlProcessor.toXml(str, str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static XmlNode createElementFromNode(Node node) {
        Element element = node;
        if (node instanceof Document) {
            element = ((Document) node).getDocumentElement();
        }
        return createImpl(element);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static XmlNode createEmpty(XmlProcessor xmlProcessor) {
        return createText(xmlProcessor, "");
    }

    private static XmlNode createImpl(Node node) {
        XmlNode xmlNode;
        if (node instanceof Document) {
            throw new IllegalArgumentException();
        }
        if (getUserData(node) == null) {
            XmlNode xmlNode2 = new XmlNode();
            xmlNode2.dom = node;
            setUserData(node, xmlNode2);
            xmlNode = xmlNode2;
        } else {
            xmlNode = getUserData(node);
        }
        return xmlNode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static XmlNode createText(XmlProcessor xmlProcessor, String str) {
        return createImpl(xmlProcessor.newDocument().createTextNode(str));
    }

    private void declareNamespace(Element element, String str, String str2) {
        if (str.length() > 0) {
            element.setAttributeNS(XML_NAMESPACES_NAMESPACE_URI, "xmlns:" + str, str2);
            return;
        }
        element.setAttribute("xmlns", str2);
    }

    private Namespaces getAllNamespaces() {
        Namespaces namespaces = new Namespaces();
        Node node = this.dom;
        Node node2 = node;
        if (node instanceof Attr) {
            node2 = ((Attr) node).getOwnerElement();
        }
        while (node2 != null) {
            if (node2 instanceof Element) {
                addNamespaces(namespaces, (Element) node2);
            }
            node2 = node2.getParentNode();
        }
        namespaces.declare(Namespace.create("", ""));
        return namespaces;
    }

    private Namespace getDefaultNamespace() {
        return Namespace.create("", this.dom.lookupNamespaceURI(null) == null ? "" : this.dom.lookupNamespaceURI(null));
    }

    private String getExistingPrefixFor(Namespace namespace) {
        return getDefaultNamespace().getUri().equals(namespace.getUri()) ? "" : this.dom.lookupPrefix(namespace.getUri());
    }

    private Namespace getNodeNamespace() {
        String namespaceURI = this.dom.getNamespaceURI();
        String prefix = this.dom.getPrefix();
        String str = namespaceURI;
        if (namespaceURI == null) {
            str = "";
        }
        String str2 = prefix;
        if (prefix == null) {
            str2 = "";
        }
        return Namespace.create(str2, str);
    }

    private static XmlNode getUserData(Node node) {
        return (XmlNode) node.getUserData(USER_DATA_XMLNODE_KEY);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static XmlNode newElementWithText(XmlProcessor xmlProcessor, XmlNode xmlNode, QName qName, String str) {
        String str2;
        if (xmlNode instanceof Document) {
            throw new IllegalArgumentException("Cannot use Document node as reference");
        }
        Document ownerDocument = xmlNode != null ? xmlNode.dom.getOwnerDocument() : xmlProcessor.newDocument();
        String str3 = null;
        Node node = xmlNode != null ? xmlNode.dom : null;
        Namespace namespace = qName.getNamespace();
        if (namespace == null || namespace.getUri().length() == 0) {
            str2 = qName.getLocalName();
        } else {
            str3 = namespace.getUri();
            str2 = qName.qualify(node);
        }
        Element createElementNS = ownerDocument.createElementNS(str3, str2);
        if (str != null) {
            createElementNS.appendChild(ownerDocument.createTextNode(str));
        }
        return createImpl(createElementNS);
    }

    private void setProcessingInstructionName(String str) {
        ProcessingInstruction processingInstruction = (ProcessingInstruction) this.dom;
        processingInstruction.getParentNode().replaceChild(processingInstruction, processingInstruction.getOwnerDocument().createProcessingInstruction(str, processingInstruction.getData()));
    }

    private static void setUserData(Node node, XmlNode xmlNode) {
        node.setUserData(USER_DATA_XMLNODE_KEY, xmlNode, xmlNode.events);
    }

    private String toUri(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addMatchingChildren(XMLList xMLList, Filter filter) {
        NodeList childNodes = this.dom.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            XmlNode createImpl = createImpl(item);
            if (filter.accept(item)) {
                xMLList.addToList(createImpl);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final XmlNode copy() {
        return copy(this);
    }

    String debug() {
        XmlProcessor xmlProcessor = new XmlProcessor();
        xmlProcessor.setIgnoreComments(false);
        xmlProcessor.setIgnoreProcessingInstructions(false);
        xmlProcessor.setIgnoreWhitespace(false);
        xmlProcessor.setPrettyPrinting(false);
        return xmlProcessor.ecmaToXmlString(this.dom);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void declareNamespace(String str, String str2) {
        if (!(this.dom instanceof Element)) {
            throw new IllegalStateException();
        } else if (this.dom.lookupNamespaceURI(str2) == null || !this.dom.lookupNamespaceURI(str2).equals(str)) {
            declareNamespace((Element) this.dom, str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void deleteMe() {
        if (this.dom instanceof Attr) {
            Attr attr = (Attr) this.dom;
            attr.getOwnerElement().getAttributes().removeNamedItemNS(attr.getNamespaceURI(), attr.getLocalName());
        } else if (this.dom.getParentNode() != null) {
            this.dom.getParentNode().removeChild(this.dom);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String ecmaToXMLString(XmlProcessor xmlProcessor) {
        if (!isElementType()) {
            return xmlProcessor.ecmaToXmlString(this.dom);
        }
        Element element = (Element) this.dom.cloneNode(true);
        Namespace[] inScopeNamespaces = getInScopeNamespaces();
        for (int i = 0; i < inScopeNamespaces.length; i++) {
            declareNamespace(element, inScopeNamespaces[i].getPrefix(), inScopeNamespaces[i].getUri());
        }
        return xmlProcessor.ecmaToXmlString(element);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String ecmaValue() {
        if (isTextType()) {
            return ((Text) this.dom).getData();
        }
        if (isAttributeType()) {
            return ((Attr) this.dom).getValue();
        }
        if (isProcessingInstructionType()) {
            return ((ProcessingInstruction) this.dom).getData();
        }
        if (isCommentType()) {
            return ((Comment) this.dom).getNodeValue();
        }
        if (isElementType()) {
            throw new RuntimeException("Unimplemented ecmaValue() for elements.");
        }
        throw new RuntimeException("Unimplemented for node " + this.dom);
    }

    String getAttributeValue() {
        return ((Attr) this.dom).getValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XmlNode[] getAttributes() {
        NamedNodeMap attributes = this.dom.getAttributes();
        if (attributes == null) {
            throw new IllegalStateException("Must be element.");
        }
        XmlNode[] xmlNodeArr = new XmlNode[attributes.getLength()];
        for (int i = 0; i < attributes.getLength(); i++) {
            xmlNodeArr[i] = createImpl(attributes.item(i));
        }
        return xmlNodeArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XmlNode getChild(int i) {
        return createImpl(this.dom.getChildNodes().item(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getChildCount() {
        return this.dom.getChildNodes().getLength();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getChildIndex() {
        if (isAttributeType() || parent() == null) {
            return -1;
        }
        NodeList childNodes = this.dom.getParentNode().getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            if (childNodes.item(i) == this.dom) {
                return i;
            }
        }
        throw new RuntimeException("Unreachable.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Namespace[] getInScopeNamespaces() {
        return getAllNamespaces().getNamespaces();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XmlNode[] getMatchingChildren(Filter filter) {
        ArrayList arrayList = new ArrayList();
        NodeList childNodes = this.dom.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (filter.accept(item)) {
                arrayList.add(createImpl(item));
            }
        }
        return (XmlNode[]) arrayList.toArray(new XmlNode[arrayList.size()]);
    }

    Namespace getNamespace() {
        return getNodeNamespace();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Namespace getNamespaceDeclaration() {
        return this.dom.getPrefix() == null ? getNamespaceDeclaration("") : getNamespaceDeclaration(this.dom.getPrefix());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Namespace getNamespaceDeclaration(String str) {
        return (!str.equals("") || !(this.dom instanceof Attr)) ? getAllNamespaces().getNamespace(str) : Namespace.create("", "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Namespace[] getNamespaceDeclarations() {
        if (!(this.dom instanceof Element)) {
            return new Namespace[0];
        }
        Namespaces namespaces = new Namespaces();
        addNamespaces(namespaces, (Element) this.dom);
        return namespaces.getNamespaces();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final QName getQname() {
        return QName.create(this.dom.getNamespaceURI() == null ? "" : this.dom.getNamespaceURI(), this.dom.getLocalName(), this.dom.getPrefix() == null ? "" : this.dom.getPrefix());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XML getXml() {
        return this.xml;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasChildElement() {
        NodeList childNodes = this.dom.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            if (childNodes.item(i).getNodeType() == 1) {
                return true;
            }
        }
        return false;
    }

    void insertChildAt(int i, XmlNode xmlNode) {
        Node node = this.dom;
        Node importNode = node.getOwnerDocument().importNode(xmlNode.dom, true);
        if (node.getChildNodes().getLength() < i) {
            throw new IllegalArgumentException("index=" + i + " length=" + node.getChildNodes().getLength());
        } else if (node.getChildNodes().getLength() == i) {
            node.appendChild(importNode);
        } else {
            node.insertBefore(importNode, node.getChildNodes().item(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void insertChildrenAt(int i, XmlNode[] xmlNodeArr) {
        for (int i2 = 0; i2 < xmlNodeArr.length; i2++) {
            insertChildAt(i + i2, xmlNodeArr[i2]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void invalidateNamespacePrefix() {
        if (!(this.dom instanceof Element)) {
            throw new IllegalStateException();
        }
        String prefix = this.dom.getPrefix();
        renameNode(QName.create(this.dom.getNamespaceURI(), this.dom.getLocalName(), null));
        NamedNodeMap attributes = this.dom.getAttributes();
        for (int i = 0; i < attributes.getLength(); i++) {
            if (attributes.item(i).getPrefix().equals(prefix)) {
                createImpl(attributes.item(i)).renameNode(QName.create(attributes.item(i).getNamespaceURI(), attributes.item(i).getLocalName(), null));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isAttributeType() {
        return this.dom.getNodeType() == 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isCommentType() {
        return this.dom.getNodeType() == 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isElementType() {
        boolean z = true;
        if (this.dom.getNodeType() != 1) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isParentType() {
        return isElementType();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isProcessingInstructionType() {
        return this.dom.getNodeType() == 7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isSameNode(XmlNode xmlNode) {
        return this.dom == xmlNode.dom;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isTextType() {
        return this.dom.getNodeType() == 3 || this.dom.getNodeType() == 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void normalize() {
        this.dom.normalize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public XmlNode parent() {
        Node parentNode = this.dom.getParentNode();
        if (!(parentNode instanceof Document) && parentNode != null) {
            return createImpl(parentNode);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeChild(int i) {
        this.dom.removeChild(this.dom.getChildNodes().item(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeNamespace(Namespace namespace) {
        if (!namespace.m202is(getNodeNamespace())) {
            NamedNodeMap attributes = this.dom.getAttributes();
            for (int i = 0; i < attributes.getLength(); i++) {
                if (namespace.m202is(createImpl(attributes.item(i)).getNodeNamespace())) {
                    return;
                }
            }
            String existingPrefixFor = getExistingPrefixFor(namespace);
            if (existingPrefixFor == null) {
                return;
            }
            if (namespace.isUnspecifiedPrefix()) {
                declareNamespace(existingPrefixFor, getDefaultNamespace().getUri());
            } else if (existingPrefixFor.equals(namespace.getPrefix())) {
                declareNamespace(existingPrefixFor, getDefaultNamespace().getUri());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void renameNode(QName qName) {
        this.dom = this.dom.getOwnerDocument().renameNode(this.dom, qName.getNamespace().getUri(), qName.qualify(this.dom));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void replaceWith(XmlNode xmlNode) {
        Node node = xmlNode.dom;
        Node node2 = node;
        if (node.getOwnerDocument() != this.dom.getOwnerDocument()) {
            node2 = this.dom.getOwnerDocument().importNode(node, true);
        }
        this.dom.getParentNode().replaceChild(node2, this.dom);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAttribute(QName qName, String str) {
        if (!(this.dom instanceof Element)) {
            throw new IllegalStateException("Can only set attribute on elements.");
        }
        qName.setAttribute((Element) this.dom, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setLocalName(String str) {
        if (this.dom instanceof ProcessingInstruction) {
            setProcessingInstructionName(str);
            return;
        }
        String prefix = this.dom.getPrefix();
        String str2 = prefix;
        if (prefix == null) {
            str2 = "";
        }
        this.dom = this.dom.getOwnerDocument().renameNode(this.dom, this.dom.getNamespaceURI(), QName.qualify(str2, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setXml(XML xml) {
        this.xml = xml;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Node toDomNode() {
        return this.dom;
    }

    public String toString() {
        return "XmlNode: type=" + ((int) this.dom.getNodeType()) + " dom=" + this.dom.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String toXmlString(XmlProcessor xmlProcessor) {
        return xmlProcessor.ecmaToXmlString(this.dom);
    }
}
