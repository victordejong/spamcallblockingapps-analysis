package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpr.class */
public final class zzcpr implements zzdgf<zzaqk, zzcps> {

    /* renamed from: a */
    private Executor f13701a;

    /* renamed from: b */
    private zzcgm f13702b;

    public zzcpr(Executor executor, zzcgm zzcgmVar) {
        this.f13701a = executor;
        this.f13702b = zzcgmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final /* synthetic */ zzdhe<zzcps> zzf(zzaqk zzaqkVar) {
        final zzaqk zzaqkVar2 = zzaqkVar;
        return zzdgs.zzb(this.f13702b.zzg(zzaqkVar2), new zzdgf(zzaqkVar2) { // from class: com.google.android.gms.internal.ads.vj

            /* renamed from: a */
            private final zzaqk f10623a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10623a = zzaqkVar2;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return zzdgs.zzaj(new zzcps(new JsonReader(new InputStreamReader((InputStream) obj))).m3707a(this.f10623a.zzdlu));
            }
        }, this.f13701a);
    }
}
