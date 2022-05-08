package org.apache.commons.p018io.output;

import java.io.IOException;
import java.io.OutputStream;
/* renamed from: org.apache.commons.io.output.ClosedOutputStream */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/output/ClosedOutputStream.class */
public class ClosedOutputStream extends OutputStream {
    public static final ClosedOutputStream CLOSED_OUTPUT_STREAM = new ClosedOutputStream();

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        throw new IOException("write(" + i + ") failed: stream is closed");
    }
}
