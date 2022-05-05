package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.xm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xm.class */
final class C2361xm implements zzcub<zzcty<JSONObject>> {

    /* renamed from: a */
    private final JSONObject f10691a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2361xm(Context context) {
        this.f10691a = zzaqw.zzy(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4457a(JSONObject jSONObject) {
        try {
            jSONObject.put("gms_sdk_env", this.f10691a);
        } catch (JSONException e) {
            zzavs.zzed("Failed putting version constants.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcty<JSONObject>> zzanc() {
        return zzdgs.zzaj(new zzcty(this) { // from class: com.google.android.gms.internal.ads.xn

            /* renamed from: a */
            private final C2361xm f10692a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10692a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzcty
            public final void zzr(Object obj) {
                this.f10692a.m4457a((JSONObject) obj);
            }
        });
    }
}
