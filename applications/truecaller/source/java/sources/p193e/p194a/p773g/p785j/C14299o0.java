package p193e.p194a.p773g.p785j;

import com.truecaller.acs.util.MarginDirection;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.g.j.o0 */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/o0.class */
public final class C14299o0 {

    /* renamed from: a */
    public final MarginDirection f41369a;

    /* renamed from: b */
    public final int f41370b;

    /* renamed from: c */
    public final int f41371c;

    public C14299o0(MarginDirection marginDirection, int i, int i2) {
        l.e(marginDirection, "marginDirection");
        this.f41369a = marginDirection;
        this.f41370b = i;
        this.f41371c = i2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14299o0)) {
                return false;
            }
            C14299o0 c14299o0 = (C14299o0) obj;
            return l.a(this.f41369a, c14299o0.f41369a) && this.f41370b == c14299o0.f41370b && this.f41371c == c14299o0.f41371c;
        }
        return true;
    }

    public int hashCode() {
        MarginDirection marginDirection = this.f41369a;
        return ((((marginDirection != null ? marginDirection.hashCode() : 0) * 31) + this.f41370b) * 31) + this.f41371c;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MarginConfig(marginDirection=");
        m8728C.append(this.f41369a);
        m8728C.append(", originalDimensionRes=");
        m8728C.append(this.f41370b);
        m8728C.append(", scalingRatioRes=");
        return C22128a.m8697J2(m8728C, this.f41371c, ")");
    }
}
