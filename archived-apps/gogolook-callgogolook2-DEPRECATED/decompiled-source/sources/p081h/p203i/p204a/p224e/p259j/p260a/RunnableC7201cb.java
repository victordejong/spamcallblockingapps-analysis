package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.cb */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/cb.class */
public final class RunnableC7201cb implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C7175ab f17314a;

    public RunnableC7201cb(C7175ab abVar) {
        this.f17314a = abVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7291ja jaVar;
        try {
            jaVar = this.f17314a.f17291a;
            jaVar.onAdOpened();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }
}
