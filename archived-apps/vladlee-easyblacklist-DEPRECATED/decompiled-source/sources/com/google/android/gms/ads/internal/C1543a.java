package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzdgf;
import com.google.android.gms.internal.ads.zzdgs;
import com.google.android.gms.internal.ads.zzdhe;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.ads.internal.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/a.class */
public final /* synthetic */ class C1543a implements zzdgf {

    /* renamed from: a */
    static final zzdgf f5901a = new C1543a();

    private C1543a() {
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final zzdhe zzf(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optBoolean("isSuccessful", false)) {
            zzq.zzku().zzvf().zzeg(jSONObject.getString("appSettingsJson"));
        }
        return zzdgs.zzaj(null);
    }
}
