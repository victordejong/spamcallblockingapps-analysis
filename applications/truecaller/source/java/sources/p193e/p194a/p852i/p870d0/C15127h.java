package p193e.p194a.p852i.p870d0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p852i.p870d0.p878h0.C15128a;
import s1.z.c.l;
/* renamed from: e.a.i.d0.h */
/* loaded from: classes3-dex2jar.jar:e/a/i/d0/h.class */
public final class C15127h {

    /* renamed from: a */
    public final double f43100a;

    /* renamed from: b */
    public final k<C15128a> f43101b;

    /* JADX WARN: Multi-variable type inference failed */
    public C15127h(double d, k<? extends C15128a> kVar) {
        l.e(kVar, "result");
        this.f43100a = d;
        this.f43101b = kVar;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15127h)) {
                return false;
            }
            C15127h c15127h = (C15127h) obj;
            return Double.compare(this.f43100a, c15127h.f43100a) == 0 && l.a(this.f43101b, c15127h.f43101b);
        }
        return true;
    }

    public int hashCode() {
        int doubleToLongBits = Double.doubleToLongBits(this.f43100a);
        k<C15128a> kVar = this.f43101b;
        return (doubleToLongBits * 31) + (kVar != null ? kVar.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BidResult(price=");
        m8728C.append(this.f43100a);
        m8728C.append(", result=");
        m8728C.append(this.f43101b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
