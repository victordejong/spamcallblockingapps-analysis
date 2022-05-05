package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbs;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfd.class */
public final class zzfd implements Callable {

    /* renamed from: a */
    private final zzei f14770a;

    /* renamed from: b */
    private final zzbs.zza.zzb f14771b;

    public zzfd(zzei zzeiVar, zzbs.zza.zzb zzbVar) {
        this.f14770a = zzeiVar;
        this.f14771b = zzbVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final Void call() {
        if (this.f14770a.zzcg() != null) {
            this.f14770a.zzcg().get();
        }
        zzbs.zza zzcf = this.f14770a.zzcf();
        if (zzcf == null) {
            return null;
        }
        try {
            synchronized (this.f14771b) {
                zzbs.zza.zzb zzbVar = this.f14771b;
                byte[] byteArray = zzcf.toByteArray();
                zzbVar.zza(byteArray, 0, byteArray.length, zzdrg.zzazi());
            }
            return null;
        } catch (zzdse e) {
            return null;
        }
    }
}
