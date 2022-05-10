package p131c.p161d.p282e.p315q.p328q0;

import p131c.p161d.p282e.p335s.AbstractC5902k;
/* renamed from: c.d.e.q.q0.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/e.class */
public final class C5655e extends AbstractC5689k2 {

    /* renamed from: a */
    public final String f18740a;

    /* renamed from: b */
    public final AbstractC5902k f18741b;

    public C5655e(String str, AbstractC5902k kVar) {
        if (str != null) {
            this.f18740a = str;
            if (kVar != null) {
                this.f18741b = kVar;
                return;
            }
            throw new NullPointerException("Null installationTokenResult");
        }
        throw new NullPointerException("Null installationId");
    }

    @Override // p131c.p161d.p282e.p315q.p328q0.AbstractC5689k2
    /* renamed from: a */
    public String mo23224a() {
        return this.f18740a;
    }

    @Override // p131c.p161d.p282e.p315q.p328q0.AbstractC5689k2
    /* renamed from: b */
    public AbstractC5902k mo23222b() {
        return this.f18741b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC5689k2)) {
            return false;
        }
        AbstractC5689k2 k2Var = (AbstractC5689k2) obj;
        if (!this.f18740a.equals(k2Var.mo23224a()) || !this.f18741b.equals(k2Var.mo23222b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f18740a.hashCode() ^ 1000003) * 1000003) ^ this.f18741b.hashCode();
    }

    public String toString() {
        return "InstallationIdResult{installationId=" + this.f18740a + ", installationTokenResult=" + this.f18741b + "}";
    }
}
