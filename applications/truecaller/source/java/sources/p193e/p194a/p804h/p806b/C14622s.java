package p193e.p194a.p804h.p806b;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.h.b.s */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/s.class */
public final class C14622s {

    /* renamed from: a */
    public final int f42098a;

    /* renamed from: b */
    public final int f42099b;

    /* renamed from: c */
    public final boolean f42100c;

    public C14622s(int i, int i2, boolean z) {
        this.f42098a = i;
        this.f42099b = i2;
        this.f42100c = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14622s)) {
                return false;
            }
            C14622s c14622s = (C14622s) obj;
            return this.f42098a == c14622s.f42098a && this.f42099b == c14622s.f42099b && this.f42100c == c14622s.f42100c;
        }
        return true;
    }

    public int hashCode() {
        int i = this.f42098a;
        int i2 = this.f42099b;
        boolean z = this.f42100c;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        return (((i * 31) + i2) * 31) + i3;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("EmptyViewData(titleRes=");
        m8728C.append(this.f42098a);
        m8728C.append(", buttonTextRes=");
        m8728C.append(this.f42099b);
        m8728C.append(", shouldShowSubtitleText=");
        return C22128a.m8590o(m8728C, this.f42100c, ")");
    }
}
