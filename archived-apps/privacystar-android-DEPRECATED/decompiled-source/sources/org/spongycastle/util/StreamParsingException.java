package org.spongycastle.util;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/util/StreamParsingException.class */
public class StreamParsingException extends Exception {

    /* renamed from: _e */
    Throwable f1815_e;

    public StreamParsingException(String str, Throwable th) {
        super(str);
        this.f1815_e = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f1815_e;
    }
}
