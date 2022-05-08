package org.spongycastle.cms;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/CMSRuntimeException.class */
public class CMSRuntimeException extends RuntimeException {

    /* renamed from: e */
    Exception f1009e;

    public CMSRuntimeException(String str) {
        super(str);
    }

    public CMSRuntimeException(String str, Exception exc) {
        super(str);
        this.f1009e = exc;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f1009e;
    }

    public Exception getUnderlyingException() {
        return this.f1009e;
    }
}
