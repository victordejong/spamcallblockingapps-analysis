package p193e.p194a.p703e3.p704e;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.e3.e.b */
/* loaded from: classes6-dex2jar.jar:e/a/e3/e/b.class */
public final class C13353b {

    /* renamed from: a */
    public final boolean f38777a;

    /* renamed from: b */
    public final String f38778b;

    /* renamed from: c */
    public final String f38779c;

    /* renamed from: d */
    public final boolean f38780d;

    /* renamed from: e */
    public final boolean f38781e;

    public C13353b(boolean z, String str, String str2, boolean z2, boolean z3) {
        l.e(str, "callState");
        this.f38777a = z;
        this.f38778b = str;
        this.f38779c = str2;
        this.f38780d = z2;
        this.f38781e = z3;
    }

    public C13353b(boolean z, String str, String str2, boolean z2, boolean z3, int i) {
        z2 = (i & 8) != 0 ? false : z2;
        z3 = (i & 16) != 0 ? false : z3;
        l.e(str, "callState");
        this.f38777a = z;
        this.f38778b = str;
        this.f38779c = null;
        this.f38780d = z2;
        this.f38781e = z3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C13353b)) {
                return false;
            }
            C13353b c13353b = (C13353b) obj;
            return this.f38777a == c13353b.f38777a && l.a(this.f38778b, c13353b.f38778b) && l.a(this.f38779c, c13353b.f38779c) && this.f38780d == c13353b.f38780d && this.f38781e == c13353b.f38781e;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f38777a;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        String str = this.f38778b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f38779c;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        boolean z3 = this.f38780d;
        int i3 = z3 ? 1 : 0;
        if (z3) {
            i3 = 1;
        }
        boolean z4 = this.f38781e;
        if (!z4) {
            i = z4 ? 1 : 0;
        }
        return ((((((((z2 ? 1 : 0) * 31) + hashCode) * 31) + i2) * 31) + i3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SendCallerIdNotificationResult(isRequestedInitiated=");
        m8728C.append(this.f38777a);
        m8728C.append(", callState=");
        m8728C.append(this.f38778b);
        m8728C.append(", response=");
        m8728C.append(this.f38779c);
        m8728C.append(", isCallContextProvided=");
        m8728C.append(this.f38780d);
        m8728C.append(", isCallInitiatedRequest=");
        return C22128a.m8590o(m8728C, this.f38781e, ")");
    }
}
