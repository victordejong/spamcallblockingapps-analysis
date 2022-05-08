package p081h.p203i.p204a.p224e.p259j.p271l;

import java.io.IOException;
/* renamed from: h.i.a.e.j.l.u9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/u9.class */
public class C8389u9 extends IOException {
    public C8389u9(String str) {
        super(str);
    }

    /* renamed from: a */
    public static C8389u9 m18138a() {
        return new C8389u9("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: b */
    public static C8389u9 m18137b() {
        return new C8389u9("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: c */
    public static C8450x9 m18136c() {
        return new C8450x9("Protocol message tag had invalid wire type.");
    }
}
