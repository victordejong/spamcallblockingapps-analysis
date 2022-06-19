package androidx.fragment.app;

import androidx.fragment.app.AbstractC0265f0;
import f.e.a;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$g.class */
class c$g implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AbstractC0265f0.C0269e f1464f;

    /* renamed from: g */
    final /* synthetic */ AbstractC0265f0.C0269e f1465g;

    /* renamed from: h */
    final /* synthetic */ boolean f1466h;

    /* renamed from: i */
    final /* synthetic */ a f1467i;

    c$g(c cVar, AbstractC0265f0.C0269e c0269e, AbstractC0265f0.C0269e c0269e2, boolean z, a aVar) {
        this.f1464f = c0269e;
        this.f1465g = c0269e2;
        this.f1466h = z;
        this.f1467i = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0302z.m5510f(this.f1464f.m5789f(), this.f1465g.m5789f(), this.f1466h, this.f1467i, false);
    }
}
