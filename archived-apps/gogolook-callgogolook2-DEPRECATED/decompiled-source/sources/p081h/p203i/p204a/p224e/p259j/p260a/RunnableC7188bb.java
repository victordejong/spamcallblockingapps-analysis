package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.bb */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/bb.class */
public final class RunnableC7188bb implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C7175ab f17307a;

    public RunnableC7188bb(C7175ab abVar) {
        this.f17307a = abVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7291ja jaVar;
        try {
            jaVar = this.f17307a.f17291a;
            jaVar.onAdClicked();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }
}
