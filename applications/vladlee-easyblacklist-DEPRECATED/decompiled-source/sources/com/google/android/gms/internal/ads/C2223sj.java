package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.sj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sj.class */
final class C2223sj implements zzajv<zzchk> {
    @Override // com.google.android.gms.internal.ads.zzajv
    public final /* synthetic */ JSONObject zzj(zzchk zzchkVar) {
        zzchk zzchkVar2 = zzchkVar;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        jSONObject2.put("base_url", zzchkVar2.zzfwi.zzub());
        jSONObject2.put("signals", zzchkVar2.zzfwj);
        jSONObject3.put("body", zzchkVar2.zzfwl.f13142c);
        jSONObject3.put("headers", zzq.zzkq().zzi(zzchkVar2.zzfwl.f13141b));
        jSONObject3.put("response_code", zzchkVar2.zzfwl.f13140a);
        jSONObject3.put("latency", zzchkVar2.zzfwl.f13143d);
        jSONObject.put("request", jSONObject2);
        jSONObject.put("response", jSONObject3);
        jSONObject.put("flags", zzchkVar2.zzfwi.zzue());
        return jSONObject;
    }
}
