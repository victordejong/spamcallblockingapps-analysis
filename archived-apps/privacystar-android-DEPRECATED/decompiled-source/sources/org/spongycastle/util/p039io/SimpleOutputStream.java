package org.spongycastle.util.p039io;

import java.io.IOException;
import java.io.OutputStream;
/* renamed from: org.spongycastle.util.io.SimpleOutputStream */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/util/io/SimpleOutputStream.class */
public abstract class SimpleOutputStream extends OutputStream {
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i}, 0, 1);
    }
}
