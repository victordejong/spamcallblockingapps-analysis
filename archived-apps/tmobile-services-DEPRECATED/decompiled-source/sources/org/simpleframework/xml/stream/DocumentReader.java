package org.simpleframework.xml.stream;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/stream/DocumentReader.class */
class DocumentReader implements EventReader {
    private static final String RESERVED = "xml";
    private EventNode peek;
    private NodeExtractor queue;
    private NodeStack stack;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/stream/DocumentReader$End.class */
    public static class End extends EventToken {
        private End() {
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public boolean isEnd() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/stream/DocumentReader$Entry.class */
    public static class Entry extends EventAttribute {
        private final Node node;

        public Entry(Node node) {
            this.node = node;
        }

        @Override // org.simpleframework.xml.stream.Attribute
        public String getName() {
            return this.node.getLocalName();
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public String getPrefix() {
            return this.node.getPrefix();
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public String getReference() {
            return this.node.getNamespaceURI();
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public Object getSource() {
            return this.node;
        }

        @Override // org.simpleframework.xml.stream.Attribute
        public String getValue() {
            return this.node.getNodeValue();
        }

        @Override // org.simpleframework.xml.stream.EventAttribute, org.simpleframework.xml.stream.Attribute
        public boolean isReserved() {
            String prefix = getPrefix();
            return prefix != null ? prefix.startsWith(DocumentReader.RESERVED) : getName().startsWith(DocumentReader.RESERVED);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/stream/DocumentReader$Start.class */
    public static class Start extends EventElement {
        private final Element element;

        public Start(Node node) {
            this.element = (Element) node;
        }

        public NamedNodeMap getAttributes() {
            return this.element.getAttributes();
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public String getName() {
            return this.element.getLocalName();
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public String getPrefix() {
            return this.element.getPrefix();
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public String getReference() {
            return this.element.getNamespaceURI();
        }

        @Override // org.simpleframework.xml.stream.EventNode
        public Object getSource() {
            return this.element;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/stream/DocumentReader$Text.class */
    public static class Text extends EventToken {
        private final Node node;

        public Text(Node node) {
            this.node = node;
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public Object getSource() {
            return this.node;
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public String getValue() {
            return this.node.getNodeValue();
        }

        @Override // org.simpleframework.xml.stream.EventToken, org.simpleframework.xml.stream.EventNode
        public boolean isText() {
            return true;
        }
    }

    public DocumentReader(Document document) {
        this.queue = new NodeExtractor(document);
        NodeStack nodeStack = new NodeStack();
        this.stack = nodeStack;
        nodeStack.push(document);
    }

    private Entry attribute(Node node) {
        return new Entry(node);
    }

    private Start build(Start start) {
        NamedNodeMap attributes = start.getAttributes();
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            Entry attribute = attribute(attributes.item(i));
            if (!attribute.isReserved()) {
                start.add(attribute);
            }
        }
        return start;
    }

    private EventNode convert(Node node) throws Exception {
        if (node.getNodeType() != 1) {
            return text(node);
        }
        if (node != null) {
            this.stack.push(node);
        }
        return start(node);
    }

    private End end() {
        return new End();
    }

    private EventNode read() throws Exception {
        Node peek = this.queue.peek();
        return peek == null ? end() : read(peek);
    }

    private EventNode read(Node node) throws Exception {
        Node parentNode = node.getParentNode();
        Node pVar = this.stack.top();
        if (parentNode != pVar) {
            if (pVar != null) {
                this.stack.pop();
            }
            return end();
        }
        if (node != null) {
            this.queue.poll();
        }
        return convert(node);
    }

    private Start start(Node node) {
        Start start = new Start(node);
        return start.isEmpty() ? build(start) : start;
    }

    private Text text(Node node) {
        return new Text(node);
    }

    @Override // org.simpleframework.xml.stream.EventReader
    public EventNode next() throws Exception {
        EventNode eventNode = this.peek;
        if (eventNode == null) {
            eventNode = read();
        } else {
            this.peek = null;
        }
        return eventNode;
    }

    @Override // org.simpleframework.xml.stream.EventReader
    public EventNode peek() throws Exception {
        if (this.peek == null) {
            this.peek = next();
        }
        return this.peek;
    }
}
