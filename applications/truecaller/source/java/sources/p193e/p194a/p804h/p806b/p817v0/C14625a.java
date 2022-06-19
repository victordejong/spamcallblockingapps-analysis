package p193e.p194a.p804h.p806b.p817v0;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.h.b.v0.a */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/v0/a.class */
public final class C14625a {

    /* renamed from: a */
    public final int f42106a;

    /* renamed from: b */
    public final int f42107b;

    public C14625a(int i, int i2) {
        this.f42106a = i;
        this.f42107b = i2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14625a)) {
                return false;
            }
            C14625a c14625a = (C14625a) obj;
            return this.f42106a == c14625a.f42106a && this.f42107b == c14625a.f42107b;
        }
        return true;
    }

    public int hashCode() {
        return (this.f42106a * 31) + this.f42107b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("GovServiceContact(iconRes=");
        m8728C.append(this.f42106a);
        m8728C.append(", titleRes=");
        return C22128a.m8697J2(m8728C, this.f42107b, ")");
    }
}
