package p193e.p194a.p852i.p854a0;

import s1.z.c.l;
/* renamed from: e.a.i.a0.b */
/* loaded from: classes3-dex2jar.jar:e/a/i/a0/b.class */
public final class C14984b {

    /* renamed from: a */
    public final String f42757a;

    /* renamed from: b */
    public final String f42758b;

    /* renamed from: c */
    public final int f42759c;

    /* renamed from: d */
    public final long f42760d;

    /* renamed from: e */
    public final long f42761e;

    public C14984b(String str, String str2, int i, long j, long j2) {
        l.e(str, "packageName");
        l.e(str2, "versionName");
        this.f42757a = str;
        this.f42758b = str2;
        this.f42759c = i;
        this.f42760d = j;
        this.f42761e = j2;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (obj instanceof C14984b) {
            C14984b c14984b = (C14984b) obj;
            if (l.a(c14984b.f42757a, this.f42757a) && l.a(c14984b.f42758b, this.f42758b) && c14984b.f42759c == this.f42759c && c14984b.f42760d == this.f42760d && c14984b.f42761e == this.f42761e) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        return this.f42757a.hashCode();
    }
}
