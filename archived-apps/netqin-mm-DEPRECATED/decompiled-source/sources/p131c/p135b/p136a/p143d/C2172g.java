package p131c.p135b.p136a.p143d;

import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.d.g */
/* loaded from: classes-dex2jar.jar:c/b/a/d/g.class */
public class C2172g {
    public static final C2172g EMPTY = new C2172g(0);
    public final int errorCode;
    public final String errorMessage;

    public C2172g(int i) {
        this(i, "");
    }

    public C2172g(int i, String str) {
        this.errorCode = i;
        this.errorMessage = C2422o.m29849c(str);
    }

    public C2172g(String str) {
        this(-1, str);
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public String toString() {
        return "MaxError{errorCode=" + getErrorCode() + ", errorMessage='" + getErrorMessage() + "'}";
    }
}
