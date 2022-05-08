package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtz.class */
public final class zzbtz implements zzdxg<zzbsu<zzbqb>> {

    /* renamed from: a */
    private final zzbtv f12393a;

    /* renamed from: b */
    private final zzdxp<Context> f12394b;

    /* renamed from: c */
    private final zzdxp<zzazb> f12395c;

    /* renamed from: d */
    private final zzdxp<zzczl> f12396d;

    /* renamed from: e */
    private final zzdxp<zzczu> f12397e;

    private zzbtz(zzbtv zzbtvVar, zzdxp<Context> zzdxpVar, zzdxp<zzazb> zzdxpVar2, zzdxp<zzczl> zzdxpVar3, zzdxp<zzczu> zzdxpVar4) {
        this.f12393a = zzbtvVar;
        this.f12394b = zzdxpVar;
        this.f12395c = zzdxpVar2;
        this.f12396d = zzdxpVar3;
        this.f12397e = zzdxpVar4;
    }

    public static zzbtz zza(zzbtv zzbtvVar, zzdxp<Context> zzdxpVar, zzdxp<zzazb> zzdxpVar2, zzdxp<zzczl> zzdxpVar3, zzdxp<zzczu> zzdxpVar4) {
        return new zzbtz(zzbtvVar, zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        final Context context = this.f12394b.get();
        final zzazb zzazbVar = this.f12395c.get();
        final zzczl zzczlVar = this.f12396d.get();
        final zzczu zzczuVar = this.f12397e.get();
        return (zzbsu) zzdxm.zza(new zzbsu(new zzbqb(context, zzazbVar, zzczlVar, zzczuVar) { // from class: com.google.android.gms.internal.ads.nn

            /* renamed from: a */
            private final Context f10242a;

            /* renamed from: b */
            private final zzazb f10243b;

            /* renamed from: c */
            private final zzczl f10244c;

            /* renamed from: d */
            private final zzczu f10245d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10242a = context;
                this.f10243b = zzazbVar;
                this.f10244c = zzczlVar;
                this.f10245d = zzczuVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbqb
            public final void onAdLoaded() {
                zzq.zzla().zzb(this.f10242a, this.f10243b.zzbma, this.f10244c.zzglt.toString(), this.f10245d.zzgmm);
            }
        }, zzazd.zzdwj), "Cannot return null from a non-@Nullable @Provides method");
    }
}
