package com.google.android.gms.gass;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.internal.ads.zzddh;
import com.google.android.gms.internal.ads.zzddn;
import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gass/zzf.class */
public final class zzf {

    /* renamed from: a */
    private final Context f7114a;

    /* renamed from: b */
    private final Looper f7115b;

    public zzf(Context context, Looper looper) {
        this.f7114a = context;
        this.f7115b = looper;
    }

    public final void zzgq(String str) {
        new C1713e(this.f7114a, this.f7115b, (zzddn) ((zzdrt) zzddn.zzaqn().zzgt(this.f7114a.getPackageName()).zzb(zzddn.zza.BLOCKED_IMPRESSION).zza(zzddh.zzaqk().zzgs(str).zzb(zzddh.zza.BLOCKED_REASON_BACKGROUND)).zzbaf())).m5514a();
    }
}
