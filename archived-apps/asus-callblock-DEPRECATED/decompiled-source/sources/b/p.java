package b;

import java.io.Closeable;
import java.io.Flushable;
/* loaded from: classes-dex2jar.jar:b/p.class */
public interface p extends Closeable, Flushable {
    r a();

    void a_(c cVar, long j);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void flush();
}
