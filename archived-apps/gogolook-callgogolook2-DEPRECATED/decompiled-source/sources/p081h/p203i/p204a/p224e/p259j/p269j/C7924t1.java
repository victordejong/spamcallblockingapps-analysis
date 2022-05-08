package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
/* renamed from: h.i.a.e.j.j.t1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/t1.class */
public class C7924t1 extends IOException {
    public C7924t1(String str) {
        super(str);
    }

    /* renamed from: a */
    public static C7924t1 m18893a() {
        return new C7924t1("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: b */
    public static C7924t1 m18891b() {
        return new C7924t1("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: c */
    public static C7924t1 m18890c() {
        return new C7924t1("CodedInputStream encountered a malformed varint.");
    }

    /* renamed from: d */
    public static C7924t1 m18889d() {
        return new C7924t1("Protocol message end-group tag did not match expected tag.");
    }

    /* renamed from: e */
    public static C7931u1 m18888e() {
        return new C7931u1("Protocol message tag had invalid wire type.");
    }

    /* renamed from: f */
    public static C7924t1 m18887f() {
        return new C7924t1("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    /* renamed from: g */
    public static C7924t1 m18886g() {
        return new C7924t1("Failed to parse the message.");
    }

    /* renamed from: h */
    public static C7924t1 m18885h() {
        return new C7924t1("Protocol message had invalid UTF-8.");
    }

    /* renamed from: a */
    public final C7924t1 m18892a(AbstractC7925t2 t2Var) {
        return this;
    }
}
