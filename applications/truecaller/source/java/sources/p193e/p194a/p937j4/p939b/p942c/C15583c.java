package p193e.p194a.p937j4.p939b.p942c;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.C19231g0;
@Deprecated
/* renamed from: e.a.j4.b.c.c */
/* loaded from: classes11-dex2jar.jar:e/a/j4/b/c/c.class */
public class C15583c {

    /* renamed from: a */
    public String f44071a;

    /* renamed from: b */
    public String f44072b;

    /* renamed from: c */
    public int f44073c;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C15583c)) {
            return false;
        }
        C15583c c15583c = (C15583c) obj;
        if (this.f44073c != c15583c.f44073c) {
            return false;
        }
        String str = this.f44072b;
        return str != null ? C19231g0.m13815B(str).equals(C19231g0.m13815B(c15583c.f44072b)) : c15583c.f44072b == null;
    }

    public int hashCode() {
        String str = this.f44072b;
        return ((((527 + (str != null ? C19231g0.m13815B(str).hashCode() : 0)) * 31) + this.f44073c) * 31) + 0;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Phone{rawId='");
        C22128a.m8678P0(m8728C, this.f44071a, '\'', ", type=");
        return C22128a.m8701I2(m8728C, this.f44073c, '}');
    }
}
