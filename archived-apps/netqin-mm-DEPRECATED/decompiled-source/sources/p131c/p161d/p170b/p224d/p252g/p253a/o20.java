package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdwd;
import com.google.android.gms.internal.ads.zzdyj;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* renamed from: c.d.b.d.g.a.o20 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/o20.class */
public final class o20<V> extends x10<V> {

    /* renamed from: h */
    public zzdzc<V> f14281h;

    /* renamed from: i */
    public ScheduledFuture<?> f14282i;

    public o20(zzdzc<V> zzdzcVar) {
        zzdwd.m13096a(zzdzcVar);
        this.f14281h = zzdzcVar;
    }

    /* renamed from: a */
    public static <V> zzdzc<V> m26608a(zzdzc<V> zzdzcVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        o20 o20Var = new o20(zzdzcVar);
        p20 p20Var = new p20(o20Var);
        o20Var.f14282i = scheduledExecutorService.schedule(p20Var, j, timeUnit);
        zzdzcVar.mo12976a(p20Var, zzdyj.INSTANCE);
        return o20Var;
    }

    @Override // com.google.android.gms.internal.ads.zzdxq
    /* renamed from: b */
    public final void mo13033b() {
        m13061a((Future<?>) this.f14281h);
        ScheduledFuture<?> scheduledFuture = this.f14282i;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f14281h = null;
        this.f14282i = null;
    }

    @Override // com.google.android.gms.internal.ads.zzdxq
    /* renamed from: d */
    public final String mo13029d() {
        zzdzc<V> zzdzcVar = this.f14281h;
        ScheduledFuture<?> scheduledFuture = this.f14282i;
        if (zzdzcVar == null) {
            return null;
        }
        String valueOf = String.valueOf(zzdzcVar);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14);
        sb.append("inputFuture=[");
        sb.append(valueOf);
        sb.append("]");
        String sb2 = sb.toString();
        String str = sb2;
        if (scheduledFuture != null) {
            long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
            str = sb2;
            if (delay > 0) {
                String valueOf2 = String.valueOf(sb2);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf2).length() + 43);
                sb3.append(valueOf2);
                sb3.append(", remaining delay=[");
                sb3.append(delay);
                sb3.append(" ms]");
                str = sb3.toString();
            }
        }
        return str;
    }
}
