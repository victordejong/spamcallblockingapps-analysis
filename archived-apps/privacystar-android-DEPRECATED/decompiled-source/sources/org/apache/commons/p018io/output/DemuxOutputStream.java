package org.apache.commons.p018io.output;

import java.io.IOException;
import java.io.OutputStream;
/* renamed from: org.apache.commons.io.output.DemuxOutputStream */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/output/DemuxOutputStream.class */
public class DemuxOutputStream extends OutputStream {
    private final InheritableThreadLocal<OutputStream> outputStreamThreadLocal = new InheritableThreadLocal<>();

    public OutputStream bindStream(OutputStream outputStream) {
        OutputStream outputStream2 = this.outputStreamThreadLocal.get();
        this.outputStreamThreadLocal.set(outputStream);
        return outputStream2;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        OutputStream outputStream = this.outputStreamThreadLocal.get();
        if (outputStream != null) {
            outputStream.close();
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        OutputStream outputStream = this.outputStreamThreadLocal.get();
        if (outputStream != null) {
            outputStream.flush();
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        OutputStream outputStream = this.outputStreamThreadLocal.get();
        if (outputStream != null) {
            outputStream.write(i);
        }
    }
}
