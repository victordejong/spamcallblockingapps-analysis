package p193e.p194a.p619d.p637c0;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.d.c0.l1 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/l1.class */
public final class C11431l1 {

    /* renamed from: a */
    public final int f33587a;

    /* renamed from: b */
    public final boolean f33588b;

    /* renamed from: c */
    public final boolean f33589c;

    public C11431l1() {
        this(0, false, false, 7);
    }

    public C11431l1(int i, boolean z, boolean z2) {
        this.f33587a = i;
        this.f33588b = z;
        this.f33589c = z2;
    }

    public C11431l1(int i, boolean z, boolean z2, int i2) {
        i = (i2 & 1) != 0 ? 0 : i;
        z = (i2 & 2) != 0 ? false : z;
        z2 = (i2 & 4) != 0 ? false : z2;
        this.f33587a = i;
        this.f33588b = z;
        this.f33589c = z2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C11431l1)) {
                return false;
            }
            C11431l1 c11431l1 = (C11431l1) obj;
            return this.f33587a == c11431l1.f33587a && this.f33588b == c11431l1.f33588b && this.f33589c == c11431l1.f33589c;
        }
        return true;
    }

    public int hashCode() {
        int i = this.f33587a;
        boolean z = this.f33588b;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        boolean z2 = this.f33589c;
        if (!z2) {
            i2 = z2 ? 1 : 0;
        }
        return (((i * 31) + i3) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipSupportFilterInfo(spamScore=");
        m8728C.append(this.f33587a);
        m8728C.append(", blacklisted=");
        m8728C.append(this.f33588b);
        m8728C.append(", whitelisted=");
        return C22128a.m8590o(m8728C, this.f33589c, ")");
    }
}
