package p459j.p460a.p463b0.p470w;

import p459j.p460a.p511h.AbstractC12391a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b0.w.k */
/* loaded from: classes2-dex2jar.jar:j/a/b0/w/k.class */
public final class C11439k implements AbstractC12391a {

    /* renamed from: a */
    public final int f25572a;

    /* renamed from: b */
    public final C11444n f25573b;

    public C11439k(int i, C11444n nVar) {
        C15149k.m377b(nVar, "smsLog");
        this.f25572a = i;
        this.f25573b = nVar;
    }

    public /* synthetic */ C11439k(int i, C11444n nVar, int i2, C15145g gVar) {
        this((i2 & 1) != 0 ? 1 : i, nVar);
    }

    /* renamed from: a */
    public final C11444n m9632a() {
        return this.f25573b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C11439k)) {
            return false;
        }
        C11439k kVar = (C11439k) obj;
        return (getViewType() == kVar.getViewType()) && C15149k.m384a(this.f25573b, kVar.f25573b);
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f25572a;
    }

    public int hashCode() {
        int hashCode;
        hashCode = Integer.valueOf(getViewType()).hashCode();
        C11444n nVar = this.f25573b;
        return (hashCode * 31) + (nVar != null ? nVar.hashCode() : 0);
    }

    public String toString() {
        return "SmsLogViewData(viewType=" + getViewType() + ", smsLog=" + this.f25573b + ")";
    }
}
