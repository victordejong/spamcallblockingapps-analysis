package p081h.p203i.p204a.p224e.p259j.p276q;

import android.app.Activity;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
import p081h.p203i.p204a.p224e.p259j.p276q.C8613h;
/* renamed from: h.i.a.e.j.q.l */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/l.class */
public final class C8660l extends C8613h.AbstractRunnableC8615b {

    /* renamed from: e */
    public final /* synthetic */ Activity f19804e;

    /* renamed from: f */
    public final /* synthetic */ String f19805f;

    /* renamed from: g */
    public final /* synthetic */ String f19806g;

    /* renamed from: h */
    public final /* synthetic */ C8613h f19807h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8660l(C8613h hVar, Activity activity, String str, String str2) {
        super(hVar);
        this.f19807h = hVar;
        this.f19804e = activity;
        this.f19805f = str;
        this.f19806g = str2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8613h.AbstractRunnableC8615b
    /* renamed from: a */
    public final void mo16955a() throws RemoteException {
        AbstractC8554b bVar;
        bVar = this.f19807h.f19724i;
        bVar.mo17729a(BinderC7110d.m21058a(this.f19804e), this.f19805f, this.f19806g, this.f19728a);
    }
}
