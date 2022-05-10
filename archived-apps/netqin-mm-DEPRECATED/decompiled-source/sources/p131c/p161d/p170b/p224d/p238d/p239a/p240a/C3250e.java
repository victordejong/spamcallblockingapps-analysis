package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zaaf;
import com.google.android.gms.common.api.internal.zaaz;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;
/* renamed from: c.d.b.d.d.a.a.e */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/e.class */
public final class C3250e implements BaseGmsClient.ConnectionProgressReportCallbacks {

    /* renamed from: a */
    public final WeakReference<zaaf> f11940a;

    /* renamed from: b */
    public final Api<?> f11941b;

    /* renamed from: c */
    public final boolean f11942c;

    public C3250e(zaaf zaafVar, Api<?> api, boolean z) {
        this.f11940a = new WeakReference<>(zaafVar);
        this.f11941b = api;
        this.f11942c = z;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    /* renamed from: b */
    public final void mo17343b(ConnectionResult connectionResult) {
        zaaz zaazVar;
        Lock lock;
        Lock lock2;
        boolean a;
        boolean c;
        zaaf zaafVar = this.f11940a.get();
        if (zaafVar != null) {
            Looper myLooper = Looper.myLooper();
            zaazVar = zaafVar.f23183a;
            Preconditions.m17279b(myLooper == zaazVar.f23242n.mo17523c(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
            lock = zaafVar.f23184b;
            lock.lock();
            try {
                a = zaafVar.m17590a(0);
                if (a) {
                    if (!connectionResult.m17830y()) {
                        zaafVar.m17580b(connectionResult, this.f11941b, this.f11942c);
                    }
                    c = zaafVar.m17577c();
                    if (c) {
                        zaafVar.m17573e();
                    }
                }
            } finally {
                lock2 = zaafVar.f23184b;
                lock2.unlock();
            }
        }
    }
}
