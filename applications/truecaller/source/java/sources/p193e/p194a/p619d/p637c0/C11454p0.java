package p193e.p194a.p619d.p637c0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p619d.p627b0.AbstractC11162b;
import s1.z.c.l;
/* renamed from: e.a.d.c0.p0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/p0.class */
public final class C11454p0 {

    /* renamed from: a */
    public final int f33637a;

    /* renamed from: b */
    public final AbstractC11162b f33638b;

    public C11454p0(int i, AbstractC11162b abstractC11162b) {
        this.f33637a = i;
        this.f33638b = abstractC11162b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C11454p0)) {
                return false;
            }
            C11454p0 c11454p0 = (C11454p0) obj;
            return this.f33637a == c11454p0.f33637a && l.a(this.f33638b, c11454p0.f33638b);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f33637a;
        AbstractC11162b abstractC11162b = this.f33638b;
        return (i * 31) + (abstractC11162b != null ? abstractC11162b.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipGroupCallDetailPeer(position=");
        m8728C.append(this.f33637a);
        m8728C.append(", contact=");
        m8728C.append(this.f33638b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
