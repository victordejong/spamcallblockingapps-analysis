package p193e.p194a.p437c.p580r.p589j;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.r.j.b0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/b0.class */
public final class C10583b0 extends AbstractC10591e0 {

    /* renamed from: a */
    public final int f31570a;

    /* renamed from: b */
    public final int f31571b;

    /* renamed from: c */
    public final Integer f31572c;

    public C10583b0(int i, int i2, Integer num) {
        super(null);
        this.f31570a = i;
        this.f31571b = i2;
        this.f31572c = num;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10583b0)) {
                return false;
            }
            C10583b0 c10583b0 = (C10583b0) obj;
            return this.f31570a == c10583b0.f31570a && this.f31571b == c10583b0.f31571b && l.a(this.f31572c, c10583b0.f31572c);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f31570a;
        int i2 = this.f31571b;
        Integer num = this.f31572c;
        return (((i * 31) + i2) * 31) + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TextColorPropertyMapping(startIndex=");
        m8728C.append(this.f31570a);
        m8728C.append(", endIndex=");
        m8728C.append(this.f31571b);
        m8728C.append(", colorAttrRes=");
        return C22128a.m8689L2(m8728C, this.f31572c, ")");
    }
}
