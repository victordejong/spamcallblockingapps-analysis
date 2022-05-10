package p131c.p161d.p170b.p173b.p176i.p184y;

import p131c.p161d.p170b.p173b.AbstractC2498g;
import p131c.p161d.p170b.p173b.p176i.AbstractC2562h;
import p131c.p161d.p170b.p173b.p176i.AbstractC2571m;
/* renamed from: c.d.b.b.i.y.a */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/a.class */
public final /* synthetic */ class RunnableC2605a implements Runnable {

    /* renamed from: a */
    public final C2607c f9666a;

    /* renamed from: b */
    public final AbstractC2571m f9667b;

    /* renamed from: c */
    public final AbstractC2498g f9668c;

    /* renamed from: d */
    public final AbstractC2562h f9669d;

    public RunnableC2605a(C2607c cVar, AbstractC2571m mVar, AbstractC2498g gVar, AbstractC2562h hVar) {
        this.f9666a = cVar;
        this.f9667b = mVar;
        this.f9668c = gVar;
        this.f9669d = hVar;
    }

    /* renamed from: a */
    public static Runnable m29442a(C2607c cVar, AbstractC2571m mVar, AbstractC2498g gVar, AbstractC2562h hVar) {
        return new RunnableC2605a(cVar, mVar, gVar, hVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        C2607c.m29440a(this.f9666a, this.f9667b, this.f9668c, this.f9669d);
    }
}
