package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeoutException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.tx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tx.class */
public final class C2264tx implements zzdgt<T> {

    /* renamed from: a */
    private final /* synthetic */ String f10539a;

    /* renamed from: b */
    private final /* synthetic */ long f10540b;

    /* renamed from: c */
    private final /* synthetic */ zzclp f10541c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2264tx(zzclp zzclpVar, String str, long j) {
        this.f10541c = zzclpVar;
        this.f10539a = str;
        this.f10540b = j;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void onSuccess(T t) {
        Clock clock;
        clock = this.f10541c.f13327a;
        zzclp.m3737a(this.f10541c, this.f10539a, 0, clock.elapsedRealtime() - this.f10540b);
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        Clock clock;
        clock = this.f10541c.f13327a;
        long elapsedRealtime = clock.elapsedRealtime();
        int i = 3;
        if (th instanceof TimeoutException) {
            i = 2;
        } else if (!(th instanceof zzclf)) {
            i = th instanceof CancellationException ? 4 : (!(th instanceof zzcfb) || ((zzcfb) th).getErrorCode() != 3) ? 6 : 1;
        }
        zzclp.m3737a(this.f10541c, this.f10539a, i, elapsedRealtime - this.f10540b);
    }
}
