package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.k6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/k6.class */
public final class RunnableC7300k6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ BinderC7287j6 f17367a;

    public RunnableC7300k6(BinderC7287j6 j6Var) {
        this.f17367a = j6Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7181b4 b4Var;
        AbstractC7181b4 b4Var2;
        b4Var = this.f17367a.f17356a;
        if (b4Var != null) {
            try {
                b4Var2 = this.f17367a.f17356a;
                b4Var2.onAdFailedToLoad(1);
            } catch (RemoteException e) {
                C7452x1.m20569c("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
