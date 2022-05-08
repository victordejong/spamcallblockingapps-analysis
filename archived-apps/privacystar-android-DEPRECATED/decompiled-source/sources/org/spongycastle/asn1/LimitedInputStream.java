package org.spongycastle.asn1;

import java.io.InputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/LimitedInputStream.class */
public abstract class LimitedInputStream extends InputStream {
    protected final InputStream _in;
    private int _limit;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LimitedInputStream(InputStream inputStream, int i) {
        this._in = inputStream;
        this._limit = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getRemaining() {
        return this._limit;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setParentEofDetect(boolean z) {
        if (this._in instanceof IndefiniteLengthInputStream) {
            ((IndefiniteLengthInputStream) this._in).setEofOn00(z);
        }
    }
}
