package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbna.class */
public final class zzbna implements zzeoy<zzqo> {

    /* renamed from: a */
    public final zzeph<zzdnv> f25221a;

    /* renamed from: b */
    public final zzeph<zzbbx> f25222b;

    /* renamed from: c */
    public final zzeph<JSONObject> f25223c;

    /* renamed from: d */
    public final zzeph<String> f25224d;

    public zzbna(zzeph<zzdnv> zzephVar, zzeph<zzbbx> zzephVar2, zzeph<JSONObject> zzephVar3, zzeph<String> zzephVar4) {
        this.f25221a = zzephVar;
        this.f25222b = zzephVar2;
        this.f25223c = zzephVar3;
        this.f25224d = zzephVar4;
    }

    /* renamed from: a */
    public static zzbna m15298a(zzeph<zzdnv> zzephVar, zzeph<zzbbx> zzephVar2, zzeph<JSONObject> zzephVar3, zzeph<String> zzephVar4) {
        return new zzbna(zzephVar, zzephVar2, zzephVar3, zzephVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        this.f25221a.get();
        zzbbx zzbbxVar = this.f25222b.get();
        JSONObject jSONObject = this.f25223c.get();
        String str = this.f25224d.get();
        boolean equals = "native".equals(str);
        zzp.m17969c();
        zzqo zzqoVar = new zzqo(zzayu.m16115b(), zzbbxVar, str, jSONObject, false, equals);
        zzepe.m12187a(zzqoVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzqoVar;
    }
}
