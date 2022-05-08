package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsInputStream.class */
public class TlsInputStream extends InputStream {
    private byte[] buf = new byte[1];
    private TlsProtocol handler;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TlsInputStream(TlsProtocol tlsProtocol) {
        this.handler = null;
        this.handler = tlsProtocol;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.handler.applicationDataAvailable();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.handler.close();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.buf) < 0) {
            return -1;
        }
        return this.buf[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.handler.readApplicationData(bArr, i, i2);
    }
}
