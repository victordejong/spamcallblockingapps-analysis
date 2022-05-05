package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzq;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaft.class */
public final class zzaft implements zzafn<Object> {

    /* renamed from: a */
    private final Object f10896a = new Object();

    /* renamed from: b */
    private final Map<String, zzafv> f10897b = new HashMap();

    public final <EngineT extends zzaip> zzdhe<JSONObject> zza(EngineT enginet, String str, JSONObject jSONObject) {
        zzazl zzazlVar = new zzazl();
        zzq.zzkq();
        String zzwk = zzawb.zzwk();
        zza(zzwk, new C2213s(zzazlVar));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", zzwk);
            jSONObject2.put("args", jSONObject);
            enginet.zza(str, jSONObject2);
        } catch (Exception e) {
            zzazlVar.setException(e);
        }
        return zzazlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void zza(Object obj, Map<String, String> map) {
        String str;
        String str2 = map.get("id");
        String str3 = map.get("fail");
        String str4 = map.get("fail_reason");
        String str5 = map.get("fail_stack");
        String str6 = map.get("result");
        if (TextUtils.isEmpty(str5)) {
            str4 = "Unknown Fail Reason.";
        }
        if (TextUtils.isEmpty(str5)) {
            str = "";
        } else {
            String valueOf = String.valueOf(str5);
            str = valueOf.length() != 0 ? "\n".concat(valueOf) : new String("\n");
        }
        synchronized (this.f10896a) {
            zzafv remove = this.f10897b.remove(str2);
            if (remove == null) {
                String valueOf2 = String.valueOf(str2);
                zzavs.zzez(valueOf2.length() != 0 ? "Received result for unexpected method invocation: ".concat(valueOf2) : new String("Received result for unexpected method invocation: "));
            } else if (!TextUtils.isEmpty(str3)) {
                String valueOf3 = String.valueOf(str4);
                String valueOf4 = String.valueOf(str);
                remove.onFailure(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3));
            } else if (str6 == null) {
                remove.zzc(null);
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(str6);
                    if (zzavs.zzvs()) {
                        String valueOf5 = String.valueOf(jSONObject.toString(2));
                        zzavs.zzed(valueOf5.length() != 0 ? "Result GMSG: ".concat(valueOf5) : new String("Result GMSG: "));
                    }
                    remove.zzc(jSONObject);
                } catch (JSONException e) {
                    remove.onFailure(e.getMessage());
                }
            }
        }
    }

    public final void zza(String str, zzafv zzafvVar) {
        synchronized (this.f10896a) {
            this.f10897b.put(str, zzafvVar);
        }
    }
}
