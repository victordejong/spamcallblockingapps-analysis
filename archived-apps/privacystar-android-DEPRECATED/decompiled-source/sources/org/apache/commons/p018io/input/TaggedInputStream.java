package org.apache.commons.p018io.input;

import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.UUID;
import org.apache.commons.p018io.TaggedIOException;
/* renamed from: org.apache.commons.io.input.TaggedInputStream */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/input/TaggedInputStream.class */
public class TaggedInputStream extends ProxyInputStream {
    private final Serializable tag = UUID.randomUUID();

    public TaggedInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // org.apache.commons.p018io.input.ProxyInputStream
    protected void handleIOException(IOException iOException) throws IOException {
        throw new TaggedIOException(iOException, this.tag);
    }

    public boolean isCauseOf(Throwable th) {
        return TaggedIOException.isTaggedWith(th, this.tag);
    }

    public void throwIfCauseOf(Throwable th) throws IOException {
        TaggedIOException.throwCauseIfTaggedWith(th, this.tag);
    }
}
