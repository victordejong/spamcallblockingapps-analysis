package p193e.p194a.p982k0.p989n.p995e;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.k0.n.e.a */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/e/a.class */
public final class C16409a {

    /* renamed from: a */
    public final boolean f46132a;

    /* renamed from: b */
    public final int f46133b;

    public C16409a(boolean z, int i) {
        this.f46132a = z;
        this.f46133b = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16409a)) {
                return false;
            }
            C16409a c16409a = (C16409a) obj;
            return this.f46132a == c16409a.f46132a && this.f46133b == c16409a.f46133b;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f46132a;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        return ((z2 ? 1 : 0) * 31) + this.f46133b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PlaybackState(isPlaying=");
        m8728C.append(this.f46132a);
        m8728C.append(", currentPositionMillis=");
        return C22128a.m8697J2(m8728C, this.f46133b, ")");
    }
}
