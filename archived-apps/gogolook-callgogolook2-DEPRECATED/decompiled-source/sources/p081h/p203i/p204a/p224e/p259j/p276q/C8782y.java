package p081h.p203i.p204a.p224e.p259j.p276q;

import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
import p081h.p203i.p204a.p224e.p259j.p276q.C8613h;
/* renamed from: h.i.a.e.j.q.y */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/y.class */
public final class C8782y extends C8613h.AbstractRunnableC8615b {

    /* renamed from: e */
    public final /* synthetic */ String f20129e;

    /* renamed from: f */
    public final /* synthetic */ String f20130f;

    /* renamed from: g */
    public final /* synthetic */ Object f20131g;

    /* renamed from: h */
    public final /* synthetic */ boolean f20132h = true;

    /* renamed from: i */
    public final /* synthetic */ C8613h f20133i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8782y(C8613h hVar, String str, String str2, Object obj, boolean z) {
        super(hVar);
        this.f20133i = hVar;
        this.f20129e = str;
        this.f20130f = str2;
        this.f20131g = obj;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8613h.AbstractRunnableC8615b
    /* renamed from: a */
    public final void mo16955a() throws RemoteException {
        AbstractC8554b bVar;
        bVar = this.f20133i.f19724i;
        bVar.mo17723a(this.f20129e, this.f20130f, BinderC7110d.m21058a(this.f20131g), this.f20132h, this.f19728a);
    }
}
