package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccj.class */
public final class zzccj implements zzdxg<zzsm> {

    /* renamed from: a */
    private final zzdxp<Context> f12930a;

    /* renamed from: b */
    private final zzdxp<String> f12931b;

    /* renamed from: c */
    private final zzdxp<zzazb> f12932c;

    /* renamed from: d */
    private final zzdxp<Integer> f12933d;

    /* renamed from: e */
    private final zzdxp<String> f12934e;

    private zzccj(zzdxp<Context> zzdxpVar, zzdxp<String> zzdxpVar2, zzdxp<zzazb> zzdxpVar3, zzdxp<Integer> zzdxpVar4, zzdxp<String> zzdxpVar5) {
        this.f12930a = zzdxpVar;
        this.f12931b = zzdxpVar2;
        this.f12932c = zzdxpVar3;
        this.f12933d = zzdxpVar4;
        this.f12934e = zzdxpVar5;
    }

    public static zzccj zze(zzdxp<Context> zzdxpVar, zzdxp<String> zzdxpVar2, zzdxp<zzazb> zzdxpVar3, zzdxp<Integer> zzdxpVar4, zzdxp<String> zzdxpVar5) {
        return new zzccj(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4, zzdxpVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        Context context = this.f12930a.get();
        final String str = this.f12931b.get();
        zzazb zzazbVar = this.f12932c.get();
        final int intValue = this.f12933d.get().intValue();
        final String str2 = this.f12934e.get();
        zzsm zzsmVar = new zzsm(new zzsr(context));
        final zztt zzttVar = new zztt();
        zzttVar.zzcam = Integer.valueOf(zzazbVar.zzdvz);
        zzttVar.zzcan = Integer.valueOf(zzazbVar.zzdwa);
        zzttVar.zzcao = Integer.valueOf(zzazbVar.zzdwb ? 0 : 2);
        zzsmVar.zza(new zzsp(intValue, str, zzttVar, str2) { // from class: com.google.android.gms.internal.ads.qj

            /* renamed from: a */
            private final int f10362a;

            /* renamed from: b */
            private final String f10363b;

            /* renamed from: c */
            private final zztt f10364c;

            /* renamed from: d */
            private final String f10365d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10362a = intValue;
                this.f10363b = str;
                this.f10364c = zzttVar;
                this.f10365d = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzsp
            public final void zza(zztu zztuVar) {
                int i = this.f10362a;
                String str3 = this.f10363b;
                zztt zzttVar2 = this.f10364c;
                String str4 = this.f10365d;
                zztuVar.zzcay.zzbzt = Integer.valueOf(i);
                zztuVar.zzcav.zzcae = str3;
                zztuVar.zzcav.zzcah = zzttVar2;
                zztuVar.zzcaq = str4;
            }
        });
        return (zzsm) zzdxm.zza(zzsmVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
