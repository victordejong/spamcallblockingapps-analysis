package p081h.p203i.p204a.p224e.p259j.p266g;

import java.io.IOException;
/* renamed from: h.i.a.e.j.g.l1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/l1.class */
public class C7633l1 extends IOException {
    public C7633l1(String str) {
        super(str);
    }

    /* renamed from: a */
    public static C7633l1 m20080a() {
        return new C7633l1("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: b */
    public static C7633l1 m20078b() {
        return new C7633l1("Protocol message contained an invalid tag (zero).");
    }

    /* renamed from: c */
    public static C7645m1 m20077c() {
        return new C7645m1("Protocol message tag had invalid wire type.");
    }

    /* renamed from: d */
    public static C7633l1 m20076d() {
        return new C7633l1("Failed to parse the message.");
    }

    /* renamed from: e */
    public static C7633l1 m20075e() {
        return new C7633l1("Protocol message had invalid UTF-8.");
    }

    /* renamed from: a */
    public final C7633l1 m20079a(AbstractC7627k2 k2Var) {
        return this;
    }
}
