package org.spongycastle.pkcs;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pkcs/PKCSException.class */
public class PKCSException extends Exception {
    private Throwable cause;

    public PKCSException(String str) {
        super(str);
    }

    public PKCSException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
