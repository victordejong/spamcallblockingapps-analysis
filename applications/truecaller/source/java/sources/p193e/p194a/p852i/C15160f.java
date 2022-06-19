package p193e.p194a.p852i;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.f */
/* loaded from: classes2-dex2jar.jar:e/a/i/f.class */
public final class C15160f {

    /* renamed from: a */
    public final String f43204a;

    /* renamed from: b */
    public final String f43205b;

    /* renamed from: c */
    public final Integer f43206c;

    public C15160f() {
        this(null, null, null, 7);
    }

    public C15160f(String str, String str2, Integer num, int i) {
        str = (i & 1) != 0 ? null : str;
        str2 = (i & 2) != 0 ? null : str2;
        num = (i & 4) != 0 ? null : num;
        this.f43204a = str;
        this.f43205b = str2;
        this.f43206c = num;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15160f)) {
                return false;
            }
            C15160f c15160f = (C15160f) obj;
            return l.a(this.f43204a, c15160f.f43204a) && l.a(this.f43205b, c15160f.f43205b) && l.a(this.f43206c, c15160f.f43206c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f43204a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f43205b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        Integer num = this.f43206c;
        if (num != null) {
            i = num.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AdExtraConfig(callId=");
        m8728C.append(this.f43204a);
        m8728C.append(", adContext=");
        m8728C.append(this.f43205b);
        m8728C.append(", uiConfigVersion=");
        return C22128a.m8689L2(m8728C, this.f43206c, ")");
    }
}
