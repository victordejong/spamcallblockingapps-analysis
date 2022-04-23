package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbkv.class */
public final class zzbkv implements zzdxg<zzbsu<zzbqb>> {

    /* renamed from: a */
    private final zzbkn f12062a;

    /* renamed from: b */
    private final zzdxp<Context> f12063b;

    /* renamed from: c */
    private final zzdxp<zzazb> f12064c;

    /* renamed from: d */
    private final zzdxp<zzczl> f12065d;

    /* renamed from: e */
    private final zzdxp<zzczu> f12066e;

    public zzbkv(zzbkn zzbknVar, zzdxp<Context> zzdxpVar, zzdxp<zzazb> zzdxpVar2, zzdxp<zzczl> zzdxpVar3, zzdxp<zzczu> zzdxpVar4) {
        this.f12062a = zzbknVar;
        this.f12063b = zzdxpVar;
        this.f12064c = zzdxpVar2;
        this.f12065d = zzdxpVar3;
        this.f12066e = zzdxpVar4;
    }

    public static zzbsu<zzbqb> zza(zzbkn zzbknVar, final Context context, final zzazb zzazbVar, final zzczl zzczlVar, final zzczu zzczuVar) {
        return (zzbsu) zzdxm.zza(new zzbsu(new zzbqb(context, zzazbVar, zzczlVar, zzczuVar) { // from class: com.google.android.gms.internal.ads.lc

            /* renamed from: a */
            private final Context f10166a;

            /* renamed from: b */
            private final zzazb f10167b;

            /* renamed from: c */
            private final zzczl f10168c;

            /* renamed from: d */
            private final zzczu f10169d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10166a = context;
                this.f10167b = zzazbVar;
                this.f10168c = zzczlVar;
                this.f10169d = zzczuVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbqb
            public final void onAdLoaded() {
                zzq.zzla().zzb(this.f10166a, this.f10167b.zzbma, this.f10168c.zzglt.toString(), this.f10169d.zzgmm);
            }
        }, zzazd.zzdwj), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zza(this.f12062a, this.f12063b.get(), this.f12064c.get(), this.f12065d.get(), this.f12066e.get());
    }
}
