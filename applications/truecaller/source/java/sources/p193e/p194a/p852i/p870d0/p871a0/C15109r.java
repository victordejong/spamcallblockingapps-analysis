package p193e.p194a.p852i.p870d0.p871a0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.d0.a0.r */
/* loaded from: classes3-dex2jar.jar:e/a/i/d0/a0/r.class */
public final class C15109r {

    /* renamed from: a */
    public final String f43054a;

    /* renamed from: b */
    public final String f43055b;

    /* renamed from: c */
    public final String f43056c;

    /* renamed from: d */
    public final String f43057d;

    public C15109r(String str, String str2, String str3, String str4) {
        C22128a.m8703I0(str, "requestId", str2, "partnerId", str3, "placementId");
        this.f43054a = str;
        this.f43055b = str2;
        this.f43056c = str3;
        this.f43057d = str4;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15109r)) {
                return false;
            }
            C15109r c15109r = (C15109r) obj;
            return l.a(this.f43054a, c15109r.f43054a) && l.a(this.f43055b, c15109r.f43055b) && l.a(this.f43056c, c15109r.f43056c) && l.a(this.f43057d, c15109r.f43057d);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f43054a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f43055b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f43056c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f43057d;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MediationNativeRequestData(requestId=");
        m8728C.append(this.f43054a);
        m8728C.append(", partnerId=");
        m8728C.append(this.f43055b);
        m8728C.append(", placementId=");
        m8728C.append(this.f43056c);
        m8728C.append(", adUnitId=");
        return C22128a.m8618h(m8728C, this.f43057d, ")");
    }
}
