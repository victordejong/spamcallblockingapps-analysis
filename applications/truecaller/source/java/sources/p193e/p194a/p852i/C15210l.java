package p193e.p194a.p852i;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.l */
/* loaded from: classes2-dex2jar.jar:e/a/i/l.class */
public final class C15210l {

    /* renamed from: a */
    public final String f43283a;

    /* renamed from: b */
    public final String f43284b;

    /* renamed from: c */
    public final double f43285c;

    /* renamed from: d */
    public final double f43286d;

    /* renamed from: e */
    public final boolean f43287e;

    public C15210l(String str, String str2, double d, double d2, boolean z) {
        l.e(str, "adUnitId");
        l.e(str2, "clientMediation");
        this.f43283a = str;
        this.f43284b = str2;
        this.f43285c = d;
        this.f43286d = d2;
        this.f43287e = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15210l)) {
                return false;
            }
            C15210l c15210l = (C15210l) obj;
            return l.a(this.f43283a, c15210l.f43283a) && l.a(this.f43284b, c15210l.f43284b) && Double.compare(this.f43285c, c15210l.f43285c) == 0 && Double.compare(this.f43286d, c15210l.f43286d) == 0 && this.f43287e == c15210l.f43287e;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f43283a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f43284b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        int doubleToLongBits = Double.doubleToLongBits(this.f43285c);
        int doubleToLongBits2 = Double.doubleToLongBits(this.f43286d);
        boolean z = this.f43287e;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((hashCode * 31) + i) * 31) + doubleToLongBits) * 31) + doubleToLongBits2) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AdUnitData(adUnitId=");
        m8728C.append(this.f43283a);
        m8728C.append(", clientMediation=");
        m8728C.append(this.f43284b);
        m8728C.append(", defaultFloor=");
        m8728C.append(this.f43285c);
        m8728C.append(", adUnitFloor=");
        m8728C.append(this.f43286d);
        m8728C.append(", priceEvalAdFloor=");
        return C22128a.m8590o(m8728C, this.f43287e, ")");
    }
}
