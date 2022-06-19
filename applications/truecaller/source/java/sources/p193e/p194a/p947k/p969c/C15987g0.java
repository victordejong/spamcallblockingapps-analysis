package p193e.p194a.p947k.p969c;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.k.c.g0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/g0.class */
public final class C15987g0 {

    /* renamed from: a */
    public final boolean f45070a;

    /* renamed from: b */
    public final int f45071b;

    public C15987g0(boolean z, int i) {
        this.f45070a = z;
        this.f45071b = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15987g0)) {
                return false;
            }
            C15987g0 c15987g0 = (C15987g0) obj;
            return this.f45070a == c15987g0.f45070a && this.f45071b == c15987g0.f45071b;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f45070a;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        return ((z2 ? 1 : 0) * 31) + this.f45071b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OwnVideoCallerIdAvailability(enabled=");
        m8728C.append(this.f45070a);
        m8728C.append(", version=");
        return C22128a.m8697J2(m8728C, this.f45071b, ")");
    }
}
