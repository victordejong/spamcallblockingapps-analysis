package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjj.class */
public final class zzbjj implements zzdxg<zzpn> {

    /* renamed from: a */
    private final zzdxp<zzczl> f11975a;

    /* renamed from: b */
    private final zzdxp<zzazb> f11976b;

    /* renamed from: c */
    private final zzdxp<JSONObject> f11977c;

    /* renamed from: d */
    private final zzdxp<String> f11978d;

    private zzbjj(zzdxp<zzczl> zzdxpVar, zzdxp<zzazb> zzdxpVar2, zzdxp<JSONObject> zzdxpVar3, zzdxp<String> zzdxpVar4) {
        this.f11975a = zzdxpVar;
        this.f11976b = zzdxpVar2;
        this.f11977c = zzdxpVar3;
        this.f11978d = zzdxpVar4;
    }

    public static zzbjj zza(zzdxp<zzczl> zzdxpVar, zzdxp<zzazb> zzdxpVar2, zzdxp<JSONObject> zzdxpVar3, zzdxp<String> zzdxpVar4) {
        return new zzbjj(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        this.f11975a.get();
        zzazb zzazbVar = this.f11976b.get();
        JSONObject jSONObject = this.f11977c.get();
        String str = this.f11978d.get();
        boolean equals = "native".equals(str);
        zzq.zzkq();
        return (zzpn) zzdxm.zza(new zzpn(zzawb.zzwk(), zzazbVar, str, jSONObject, false, equals), "Cannot return null from a non-@Nullable @Provides method");
    }
}
