package p193e.p194a.p619d.p637c0.p642z1;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p619d.p637c0.AbstractC11416j;
import q3.a.x2.i1;
import s1.z.c.l;
/* renamed from: e.a.d.c0.z1.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/e.class */
public final class C11593e {

    /* renamed from: a */
    public final int f33990a;

    /* renamed from: b */
    public final i1<AbstractC11416j> f33991b;

    /* renamed from: c */
    public final boolean f33992c;

    /* JADX WARN: Multi-variable type inference failed */
    public C11593e(int i, i1<? extends AbstractC11416j> i1Var, boolean z) {
        l.e(i1Var, "searchState");
        this.f33990a = i;
        this.f33991b = i1Var;
        this.f33992c = z;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C11593e) && this.f33990a == ((C11593e) obj).f33990a;
    }

    public int hashCode() {
        return this.f33990a;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallInfoPeer(id=");
        m8728C.append(this.f33990a);
        m8728C.append(", searchState: ");
        m8728C.append((AbstractC11416j) this.f33991b.getValue());
        m8728C.append("), isInviteSender: ");
        m8728C.append(this.f33992c);
        return m8728C.toString();
    }
}
