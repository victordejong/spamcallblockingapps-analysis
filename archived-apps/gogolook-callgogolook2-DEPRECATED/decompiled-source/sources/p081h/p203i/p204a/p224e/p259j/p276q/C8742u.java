package p081h.p203i.p204a.p224e.p259j.p276q;

import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
import p081h.p203i.p204a.p224e.p259j.p276q.C8613h;
/* renamed from: h.i.a.e.j.q.u */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/u.class */
public final class C8742u extends C8613h.AbstractRunnableC8615b {

    /* renamed from: e */
    public final /* synthetic */ int f19994e = 5;

    /* renamed from: f */
    public final /* synthetic */ String f19995f;

    /* renamed from: g */
    public final /* synthetic */ Object f19996g;

    /* renamed from: h */
    public final /* synthetic */ Object f19997h;

    /* renamed from: i */
    public final /* synthetic */ Object f19998i;

    /* renamed from: j */
    public final /* synthetic */ C8613h f19999j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8742u(C8613h hVar, boolean z, int i, String str, Object obj, Object obj2, Object obj3) {
        super(false);
        this.f19999j = hVar;
        this.f19995f = str;
        this.f19996g = obj;
        this.f19997h = obj2;
        this.f19998i = obj3;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8613h.AbstractRunnableC8615b
    /* renamed from: a */
    public final void mo16955a() throws RemoteException {
        AbstractC8554b bVar;
        bVar = this.f19999j.f19724i;
        bVar.mo17736a(this.f19994e, this.f19995f, BinderC7110d.m21058a(this.f19996g), BinderC7110d.m21058a(this.f19997h), BinderC7110d.m21058a(this.f19998i));
    }
}
