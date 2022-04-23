package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acz.class */
public final class acz<V> extends ack<V> {
    @NullableDecl

    /* renamed from: a */
    private zzdhe<V> f7240a;
    @NullableDecl

    /* renamed from: b */
    private ScheduledFuture<?> f7241b;

    private acz(zzdhe<V> zzdheVar) {
        this.f7240a = (zzdhe) zzdei.checkNotNull(zzdheVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <V> zzdhe<V> m5459a(zzdhe<V> zzdheVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        acz aczVar = new acz(zzdheVar);
        adb adbVar = new adb(aczVar);
        aczVar.f7241b = scheduledExecutorService.schedule(adbVar, j, timeUnit);
        zzdheVar.addListener(adbVar, acj.INSTANCE);
        return aczVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdfs
    /* renamed from: a */
    public final String mo3577a() {
        zzdhe<V> zzdheVar = this.f7240a;
        ScheduledFuture<?> scheduledFuture = this.f7241b;
        if (zzdheVar == null) {
            return null;
        }
        String valueOf = String.valueOf(zzdheVar);
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdfs
    /* renamed from: b */
    public final void mo3566b() {
        m3567a((Future<?>) this.f7240a);
        ScheduledFuture<?> scheduledFuture = this.f7241b;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f7240a = null;
        this.f7241b = null;
    }
}
