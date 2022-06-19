package p193e.p194a.p619d.p663x;

import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11514a;
import p193e.p194a.p619d.p637c0.p640x1.C11519b;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.d.x.p */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/p.class */
public final class C12221p {

    /* renamed from: a */
    public final boolean f35687a;

    /* renamed from: b */
    public final boolean f35688b;

    /* renamed from: c */
    public final boolean f35689c;

    /* renamed from: d */
    public final boolean f35690d;

    /* renamed from: e */
    public final C11519b f35691e;

    public C12221p() {
        this(false, false, false, false, null, 31);
    }

    public C12221p(boolean z, boolean z2, boolean z3, boolean z4, C11519b c11519b) {
        l.e(c11519b, "audioState");
        this.f35687a = z;
        this.f35688b = z2;
        this.f35689c = z3;
        this.f35690d = z4;
        this.f35691e = c11519b;
    }

    public C12221p(boolean z, boolean z2, boolean z3, boolean z4, C11519b c11519b, int i) {
        z = (i & 1) != 0 ? false : z;
        z2 = (i & 2) != 0 ? false : z2;
        z3 = (i & 4) != 0 ? false : z3;
        z4 = (i & 8) != 0 ? false : z4;
        C11519b c11519b2 = (i & 16) != 0 ? new C11519b(AbstractC11514a.C11516b.f33808a, s.a) : null;
        l.e(c11519b2, "audioState");
        this.f35687a = z;
        this.f35688b = z2;
        this.f35689c = z3;
        this.f35690d = z4;
        this.f35691e = c11519b2;
    }

    /* renamed from: a */
    public static C12221p m23434a(C12221p c12221p, boolean z, boolean z2, boolean z3, boolean z4, C11519b c11519b, int i) {
        if ((i & 1) != 0) {
            z = c12221p.f35687a;
        }
        if ((i & 2) != 0) {
            z2 = c12221p.f35688b;
        }
        if ((i & 4) != 0) {
            z3 = c12221p.f35689c;
        }
        if ((i & 8) != 0) {
            z4 = c12221p.f35690d;
        }
        if ((i & 16) != 0) {
            c11519b = c12221p.f35691e;
        }
        Objects.requireNonNull(c12221p);
        l.e(c11519b, "audioState");
        return new C12221p(z, z2, z3, z4, c11519b);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C12221p)) {
                return false;
            }
            C12221p c12221p = (C12221p) obj;
            return this.f35687a == c12221p.f35687a && this.f35688b == c12221p.f35688b && this.f35689c == c12221p.f35689c && this.f35690d == c12221p.f35690d && l.a(this.f35691e, c12221p.f35691e);
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f35687a;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        boolean z3 = this.f35688b;
        boolean z4 = z3;
        if (z3) {
            z4 = true;
        }
        boolean z5 = this.f35689c;
        boolean z6 = z5;
        if (z5) {
            z6 = true;
        }
        boolean z7 = this.f35690d;
        if (!z7) {
            i = z7;
        }
        C11519b c11519b = this.f35691e;
        return ((((((((z2 ? 1 : 0) * 31) + (z4 ? 1 : 0)) * 31) + (z6 ? 1 : 0)) * 31) + i) * 31) + (c11519b != null ? c11519b.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipServiceSetting(isIncoming=");
        m8728C.append(this.f35687a);
        m8728C.append(", muted=");
        m8728C.append(this.f35688b);
        m8728C.append(", onHold=");
        m8728C.append(this.f35689c);
        m8728C.append(", encrypted=");
        m8728C.append(this.f35690d);
        m8728C.append(", audioState=");
        m8728C.append(this.f35691e);
        m8728C.append(")");
        return m8728C.toString();
    }
}
