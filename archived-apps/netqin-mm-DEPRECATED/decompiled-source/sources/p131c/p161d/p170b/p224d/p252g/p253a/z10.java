package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdvt;
import com.google.android.gms.internal.ads.zzdvv;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdyr;
import com.google.android.gms.internal.ads.zzdzt;
import com.google.android.gms.internal.ads.zzdzw;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* renamed from: c.d.b.d.g.a.z10 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/z10.class */
public final class z10<V> implements Runnable {

    /* renamed from: a */
    public final Future<V> f16245a;

    /* renamed from: b */
    public final zzdyr<? super V> f16246b;

    public z10(Future<V> future, zzdyr<? super V> zzdyrVar) {
        this.f16245a = future;
        this.f16246b = zzdyrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable e;
        Throwable a;
        Future<V> future = this.f16245a;
        if (!(future instanceof zzdzt) || (a = zzdzw.m12967a((zzdzt) future)) == null) {
            try {
                this.f16246b.onSuccess(zzdyq.m12986a((Future<Object>) this.f16245a));
            } catch (Error e2) {
                e = e2;
                this.f16246b.mo12980a(e);
            } catch (RuntimeException e3) {
                e = e3;
                this.f16246b.mo12980a(e);
            } catch (ExecutionException e4) {
                this.f16246b.mo12980a(e4.getCause());
            }
        } else {
            this.f16246b.mo12980a(a);
        }
    }

    public final String toString() {
        zzdvv a = zzdvt.m13103a(this);
        a.m13102a(this.f16246b);
        return a.toString();
    }
}
