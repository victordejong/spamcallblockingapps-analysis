package p193e.p194a.p935j0;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.j0.i */
/* loaded from: classes13-dex2jar.jar:e/a/j0/i.class */
public final class C15528i {

    /* renamed from: a */
    public final int f43981a;

    /* renamed from: b */
    public final int f43982b;

    /* renamed from: c */
    public final int f43983c;

    /* renamed from: d */
    public final int f43984d;

    /* renamed from: e */
    public final int f43985e;

    /* renamed from: f */
    public final int f43986f;

    /* renamed from: g */
    public final int f43987g;

    public C15528i(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.f43981a = i;
        this.f43982b = i2;
        this.f43983c = i3;
        this.f43984d = i4;
        this.f43985e = i5;
        this.f43986f = i6;
        this.f43987g = i7;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15528i)) {
                return false;
            }
            C15528i c15528i = (C15528i) obj;
            return this.f43981a == c15528i.f43981a && this.f43982b == c15528i.f43982b && this.f43983c == c15528i.f43983c && this.f43984d == c15528i.f43984d && this.f43985e == c15528i.f43985e && this.f43986f == c15528i.f43986f && this.f43987g == c15528i.f43987g;
        }
        return true;
    }

    public int hashCode() {
        return (((((((((((this.f43981a * 31) + this.f43982b) * 31) + this.f43983c) * 31) + this.f43984d) * 31) + this.f43985e) * 31) + this.f43986f) * 31) + this.f43987g;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MessagingStats(totalCount=");
        m8728C.append(this.f43981a);
        m8728C.append(", outgoingCount=");
        m8728C.append(this.f43982b);
        m8728C.append(", incomingCount=");
        m8728C.append(this.f43983c);
        m8728C.append(", imCount=");
        m8728C.append(this.f43984d);
        m8728C.append(", smsCount=");
        m8728C.append(this.f43985e);
        m8728C.append(", gifCount=");
        m8728C.append(this.f43986f);
        m8728C.append(", messagesAutomaticallyRemoved=");
        return C22128a.m8697J2(m8728C, this.f43987g, ")");
    }
}
