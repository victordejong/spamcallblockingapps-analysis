package p193e.p194a.p717f.p733y;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p717f.p718a.C13642g;
import s1.z.c.l;
/* renamed from: e.a.f.y.f */
/* loaded from: classes10-dex2jar.jar:e/a/f/y/f.class */
public final class C13768f {

    /* renamed from: a */
    public final String f39922a;

    /* renamed from: b */
    public final C13642g f39923b;

    /* renamed from: c */
    public final boolean f39924c;

    public C13768f(String str, C13642g c13642g, boolean z) {
        this.f39922a = str;
        this.f39923b = c13642g;
        this.f39924c = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C13768f)) {
                return false;
            }
            C13768f c13768f = (C13768f) obj;
            return l.a(this.f39922a, c13768f.f39922a) && l.a(this.f39923b, c13768f.f39923b) && this.f39924c == c13768f.f39924c;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f39922a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        C13642g c13642g = this.f39923b;
        if (c13642g != null) {
            i = c13642g.hashCode();
        }
        boolean z = this.f39924c;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((hashCode * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ConferenceChild(phoneNumber=");
        m8728C.append(this.f39922a);
        m8728C.append(", callerInfo=");
        m8728C.append(this.f39923b);
        m8728C.append(", canSplit=");
        return C22128a.m8590o(m8728C, this.f39924c, ")");
    }
}
