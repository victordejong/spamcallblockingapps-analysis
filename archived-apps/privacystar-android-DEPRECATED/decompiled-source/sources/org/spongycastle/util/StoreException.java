package org.spongycastle.util;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/util/StoreException.class */
public class StoreException extends RuntimeException {

    /* renamed from: _e */
    private Throwable f1814_e;

    public StoreException(String str, Throwable th) {
        super(str);
        this.f1814_e = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f1814_e;
    }
}
