package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.d.k.q.d0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/d0.class */
public final class C6855d0 implements AbstractC6969d.AbstractC6972c {

    /* renamed from: a */
    public final WeakReference<C6847b0> f16779a;

    /* renamed from: b */
    public final C6805a<?> f16780b;

    /* renamed from: c */
    public final boolean f16781c;

    public C6855d0(C6847b0 b0Var, C6805a<?> aVar, boolean z) {
        this.f16779a = new WeakReference<>(b0Var);
        this.f16780b = aVar;
        this.f16781c = z;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.AbstractC6972c
    /* renamed from: a */
    public final void mo21410a(@NonNull ConnectionResult connectionResult) {
        C6938w0 w0Var;
        Lock lock;
        Lock lock2;
        boolean a;
        boolean b;
        C6847b0 b0Var = this.f16779a.get();
        if (b0Var != null) {
            Looper myLooper = Looper.myLooper();
            w0Var = b0Var.f16749a;
            C7021t.m21281b(myLooper == w0Var.f17010n.mo21636f(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
            lock = b0Var.f16750b;
            lock.lock();
            try {
                a = b0Var.m21803a(0);
                if (a) {
                    if (!connectionResult.m32001K()) {
                        b0Var.m21791b(connectionResult, this.f16780b, this.f16781c);
                    }
                    b = b0Var.m21794b();
                    if (b) {
                        b0Var.m21788c();
                    }
                }
            } finally {
                lock2 = b0Var.f16750b;
                lock2.unlock();
            }
        }
    }
}
