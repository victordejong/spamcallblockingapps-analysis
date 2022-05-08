package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzard.class */
public final class zzard implements zzaqo {

    /* renamed from: a */
    private zzaju<JSONObject, JSONObject> f11330a;

    /* renamed from: b */
    private zzaju<JSONObject, JSONObject> f11331b;

    public zzard(Context context) {
        zzakc zza = zzq.zzld().zza(context, zzazb.zzxm());
        zzajy<JSONObject> zzajyVar = zzajx.zzdaq;
        this.f11330a = zza.zza("google.afma.request.getAdDictionary", zzajyVar, zzajyVar);
        zzakc zza2 = zzq.zzld().zza(context, zzazb.zzxm());
        zzajy<JSONObject> zzajyVar2 = zzajx.zzdaq;
        this.f11331b = zza2.zza("google.afma.sdkConstants.getSdkConstants", zzajyVar2, zzajyVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzaqo
    public final zzaju<JSONObject, JSONObject> zztz() {
        return this.f11331b;
    }
}
