package org.spongycastle.crypto.tls;

import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsNullCompression.class */
public class TlsNullCompression implements TlsCompression {
    @Override // org.spongycastle.crypto.tls.TlsCompression
    public OutputStream compress(OutputStream outputStream) {
        return outputStream;
    }

    @Override // org.spongycastle.crypto.tls.TlsCompression
    public OutputStream decompress(OutputStream outputStream) {
        return outputStream;
    }
}
