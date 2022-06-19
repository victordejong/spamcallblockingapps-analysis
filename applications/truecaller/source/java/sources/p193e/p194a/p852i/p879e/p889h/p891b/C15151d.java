package p193e.p194a.p852i.p879e.p889h.p891b;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.e.h.b.d */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/b/d.class */
public final class C15151d {

    /* renamed from: a */
    public long f43189a;

    /* renamed from: b */
    public final String f43190b;

    /* renamed from: c */
    public final String f43191c;

    public C15151d(String str, String str2) {
        l.e(str, "adPixelType");
        l.e(str2, "adPixels");
        this.f43190b = str;
        this.f43191c = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15151d)) {
                return false;
            }
            C15151d c15151d = (C15151d) obj;
            return l.a(this.f43190b, c15151d.f43190b) && l.a(this.f43191c, c15151d.f43191c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f43190b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f43191c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OfflineTrackerEntity(adPixelType=");
        m8728C.append(this.f43190b);
        m8728C.append(", adPixels=");
        return C22128a.m8618h(m8728C, this.f43191c, ")");
    }
}
