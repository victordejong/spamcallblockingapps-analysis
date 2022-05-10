package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdyb;
import com.google.android.gms.internal.ads.zzdyy;
import com.google.android.gms.internal.ads.zzdzp;
import com.google.android.gms.internal.ads.zzdzs;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
/* renamed from: c.d.b.d.g.a.q20 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/q20.class */
public final class q20<V> extends x10<V> implements RunnableFuture<V> {

    /* renamed from: h */
    public volatile zzdyy<?> f14583h;

    public q20(zzdyb<V> zzdybVar) {
        this.f14583h = new zzdzp(this, zzdybVar);
    }

    public q20(Callable<V> callable) {
        this.f14583h = new zzdzs(this, callable);
    }

    /* renamed from: a */
    public static <V> q20<V> m26530a(Runnable runnable, V v) {
        return new q20<>(Executors.callable(runnable, v));
    }

    /* renamed from: a */
    public static <V> q20<V> m26529a(Callable<V> callable) {
        return new q20<>(callable);
    }

    @Override // com.google.android.gms.internal.ads.zzdxq
    /* renamed from: b */
    public final void mo13033b() {
        zzdyy<?> zzdyyVar;
        super.mo13033b();
        if (m13051e() && (zzdyyVar = this.f14583h) != null) {
            zzdyyVar.interruptTask();
        }
        this.f14583h = null;
    }

    @Override // com.google.android.gms.internal.ads.zzdxq
    /* renamed from: d */
    public final String mo13029d() {
        zzdyy<?> zzdyyVar = this.f14583h;
        if (zzdyyVar == null) {
            return super.mo13029d();
        }
        String valueOf = String.valueOf(zzdyyVar);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 7);
        sb.append("task=[");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzdyy<?> zzdyyVar = this.f14583h;
        if (zzdyyVar != null) {
            zzdyyVar.run();
        }
        this.f14583h = null;
    }
}
