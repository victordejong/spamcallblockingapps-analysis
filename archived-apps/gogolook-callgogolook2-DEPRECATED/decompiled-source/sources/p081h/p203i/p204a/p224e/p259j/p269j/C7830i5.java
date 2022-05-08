package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
/* renamed from: h.i.a.e.j.j.i5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/i5.class */
public final class C7830i5 extends IOException {
    public C7830i5(String str) {
        super(str);
    }

    public C7830i5(String str, Exception exc) {
        super(str, exc);
    }

    /* renamed from: a */
    public static C7830i5 m19342a() {
        return new C7830i5("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: b */
    public static C7830i5 m19341b() {
        return new C7830i5("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: c */
    public static C7830i5 m19340c() {
        return new C7830i5("CodedInputStream encountered a malformed varint.");
    }
}
