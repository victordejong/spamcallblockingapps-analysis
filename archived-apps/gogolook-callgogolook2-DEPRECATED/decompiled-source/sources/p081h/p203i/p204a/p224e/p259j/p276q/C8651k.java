package p081h.p203i.p204a.p224e.p259j.p276q;

import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p259j.p276q.C8613h;
/* renamed from: h.i.a.e.j.q.k */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/k.class */
public final class C8651k extends C8613h.AbstractRunnableC8615b {

    /* renamed from: e */
    public final /* synthetic */ String f19794e;

    /* renamed from: f */
    public final /* synthetic */ String f19795f;

    /* renamed from: g */
    public final /* synthetic */ C8613h.BinderC8614a f19796g;

    /* renamed from: h */
    public final /* synthetic */ C8613h f19797h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8651k(C8613h hVar, String str, String str2, C8613h.BinderC8614a aVar) {
        super(hVar);
        this.f19797h = hVar;
        this.f19794e = str;
        this.f19795f = str2;
        this.f19796g = aVar;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8613h.AbstractRunnableC8615b
    /* renamed from: a */
    public final void mo16955a() throws RemoteException {
        AbstractC8554b bVar;
        bVar = this.f19797h.f19724i;
        bVar.mo17722a(this.f19794e, this.f19795f, this.f19796g);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8613h.AbstractRunnableC8615b
    /* renamed from: b */
    public final void mo17091b() {
        this.f19796g.mo17575h(null);
    }
}
