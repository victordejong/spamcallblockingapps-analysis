package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.ConditionVariable;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzdu;
import com.google.android.gms.internal.ads.zzex;
import com.google.android.gms.internal.ads.zztx;
/* renamed from: c.d.b.d.g.a.wz */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/wz.class */
public final class RunnableC4196wz implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzdu f15981a;

    public RunnableC4196wz(zzdu zzduVar) {
        this.f15981a = zzduVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        zzex zzexVar;
        ConditionVariable conditionVariable2;
        if (this.f15981a.f27834b == null) {
            conditionVariable = zzdu.f27830c;
            synchronized (conditionVariable) {
                if (this.f15981a.f27834b == null) {
                    boolean z = false;
                    try {
                        z = zzabb.f23780a1.mo16862a().booleanValue();
                    } catch (IllegalStateException e) {
                        z = false;
                    }
                    if (z) {
                        try {
                            zzexVar = this.f15981a.f27833a;
                            zzdu.f27831d = new zztx(zzexVar.f28157a, "ADSHIELD", null);
                        } catch (Throwable th) {
                        }
                    }
                    this.f15981a.f27834b = Boolean.valueOf(z);
                    conditionVariable2 = zzdu.f27830c;
                    conditionVariable2.open();
                }
            }
        }
    }
}
