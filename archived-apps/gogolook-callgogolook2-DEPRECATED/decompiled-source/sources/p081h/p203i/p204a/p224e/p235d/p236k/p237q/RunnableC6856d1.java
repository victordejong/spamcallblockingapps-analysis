package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import com.google.android.gms.common.ConnectionResult;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6858e;
/* renamed from: h.i.a.e.d.k.q.d1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/d1.class */
public final class RunnableC6856d1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ConnectionResult f16782a;

    /* renamed from: b */
    public final /* synthetic */ C6858e.C6859a f16783b;

    public RunnableC6856d1(C6858e.C6859a aVar, ConnectionResult connectionResult) {
        this.f16783b = aVar;
        this.f16782a = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16783b.mo21591a(this.f16782a);
    }
}
