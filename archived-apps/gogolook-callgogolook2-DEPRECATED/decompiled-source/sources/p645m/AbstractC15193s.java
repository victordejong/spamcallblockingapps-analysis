package p645m;

import java.io.Closeable;
import java.io.IOException;
/* renamed from: m.s */
/* loaded from: classes3-dex2jar.jar:m/s.class */
public interface AbstractC15193s extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    long read(C15170c cVar, long j) throws IOException;

    C15194t timeout();
}
