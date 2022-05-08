package org.simpleframework.xml.stream;

import java.io.InputStream;
import java.io.Reader;
import javax.xml.parsers.DocumentBuilderFactory;
import org.xml.sax.InputSource;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/stream/DocumentProvider.class */
class DocumentProvider implements Provider {
    private final DocumentBuilderFactory factory;

    public DocumentProvider() {
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        this.factory = newInstance;
        newInstance.setNamespaceAware(true);
    }

    private EventReader provide(InputSource inputSource) throws Exception {
        return new DocumentReader(this.factory.newDocumentBuilder().parse(inputSource));
    }

    @Override // org.simpleframework.xml.stream.Provider
    public EventReader provide(InputStream inputStream) throws Exception {
        return provide(new InputSource(inputStream));
    }

    @Override // org.simpleframework.xml.stream.Provider
    public EventReader provide(Reader reader) throws Exception {
        return provide(new InputSource(reader));
    }
}
