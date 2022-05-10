package p131c.p161d.p170b.p173b.p176i.p184y.p186k;

import p131c.p161d.p170b.p173b.p176i.AbstractC2562h;
import p131c.p161d.p170b.p173b.p176i.AbstractC2571m;
/* renamed from: c.d.b.b.i.y.k.b */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/k/b.class */
public final class C2638b extends AbstractC2661i {

    /* renamed from: a */
    public final long f9759a;

    /* renamed from: b */
    public final AbstractC2571m f9760b;

    /* renamed from: c */
    public final AbstractC2562h f9761c;

    public C2638b(long j, AbstractC2571m mVar, AbstractC2562h hVar) {
        this.f9759a = j;
        if (mVar != null) {
            this.f9760b = mVar;
            if (hVar != null) {
                this.f9761c = hVar;
                return;
            }
            throw new NullPointerException("Null event");
        }
        throw new NullPointerException("Null transportContext");
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2661i
    /* renamed from: a */
    public AbstractC2562h mo29322a() {
        return this.f9761c;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2661i
    /* renamed from: b */
    public long mo29320b() {
        return this.f9759a;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2661i
    /* renamed from: c */
    public AbstractC2571m mo29319c() {
        return this.f9760b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2661i)) {
            return false;
        }
        AbstractC2661i iVar = (AbstractC2661i) obj;
        if (this.f9759a != iVar.mo29320b() || !this.f9760b.equals(iVar.mo29319c()) || !this.f9761c.equals(iVar.mo29322a())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f9759a;
        int i = (int) (j ^ (j >>> 32));
        return this.f9761c.hashCode() ^ ((((i ^ 1000003) * 1000003) ^ this.f9760b.hashCode()) * 1000003);
    }

    public String toString() {
        return "PersistedEvent{id=" + this.f9759a + ", transportContext=" + this.f9760b + ", event=" + this.f9761c + "}";
    }
}
