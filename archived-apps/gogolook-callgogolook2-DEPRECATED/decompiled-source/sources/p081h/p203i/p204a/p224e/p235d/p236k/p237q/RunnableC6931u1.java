package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.lang.ref.WeakReference;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6829g;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6838n;
/* renamed from: h.i.a.e.d.k.q.u1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/u1.class */
public final class RunnableC6931u1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC6835k f16990a;

    /* renamed from: b */
    public final /* synthetic */ C6927t1 f16991b;

    public RunnableC6931u1(C6927t1 t1Var, AbstractC6835k kVar) {
        this.f16991b = t1Var;
        this.f16990a = kVar;
    }

    @Override // java.lang.Runnable
    @WorkerThread
    public final void run() {
        HandlerC6935v1 v1Var;
        HandlerC6935v1 v1Var2;
        WeakReference weakReference;
        WeakReference weakReference2;
        AbstractC6838n nVar;
        HandlerC6935v1 v1Var3;
        HandlerC6935v1 v1Var4;
        WeakReference weakReference3;
        try {
            try {
                BasePendingResult.f6518p.set(true);
                nVar = this.f16991b.f16962a;
                AbstractC6829g a = nVar.m21810a((AbstractC6838n) this.f16990a);
                v1Var3 = this.f16991b.f16968g;
                v1Var4 = this.f16991b.f16968g;
                v1Var3.sendMessage(v1Var4.obtainMessage(0, a));
                BasePendingResult.f6518p.set(false);
                C6927t1 t1Var = this.f16991b;
                C6927t1.m21559b(this.f16990a);
                weakReference3 = this.f16991b.f16967f;
                AbstractC6825f fVar = (AbstractC6825f) weakReference3.get();
                if (fVar != null) {
                    fVar.mo21644a(this.f16991b);
                }
            } catch (RuntimeException e) {
                v1Var = this.f16991b.f16968g;
                v1Var2 = this.f16991b.f16968g;
                v1Var.sendMessage(v1Var2.obtainMessage(1, e));
                BasePendingResult.f6518p.set(false);
                C6927t1 t1Var2 = this.f16991b;
                C6927t1.m21559b(this.f16990a);
                weakReference = this.f16991b.f16967f;
                AbstractC6825f fVar2 = (AbstractC6825f) weakReference.get();
                if (fVar2 != null) {
                    fVar2.mo21644a(this.f16991b);
                }
            }
        } catch (Throwable th) {
            BasePendingResult.f6518p.set(false);
            C6927t1 t1Var3 = this.f16991b;
            C6927t1.m21559b(this.f16990a);
            weakReference2 = this.f16991b.f16967f;
            AbstractC6825f fVar3 = (AbstractC6825f) weakReference2.get();
            if (fVar3 != null) {
                fVar3.mo21644a(this.f16991b);
            }
            throw th;
        }
    }
}
