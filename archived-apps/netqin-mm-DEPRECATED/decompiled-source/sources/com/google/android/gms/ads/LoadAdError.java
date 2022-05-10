package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzwm;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/LoadAdError.class */
public final class LoadAdError extends AdError {

    /* renamed from: e */
    public final ResponseInfo f22668e;

    public LoadAdError(int i, String str, String str2, AdError adError, ResponseInfo responseInfo) {
        super(i, str, str2, adError);
        this.f22668e = responseInfo;
    }

    @Override // com.google.android.gms.ads.AdError
    /* renamed from: e */
    public final JSONObject mo18106e() throws JSONException {
        JSONObject e = super.mo18106e();
        ResponseInfo f = m18105f();
        if (f == null) {
            e.put("Response Info", "null");
        } else {
            e.put("Response Info", f.m18091c());
        }
        return e;
    }

    /* renamed from: f */
    public final ResponseInfo m18105f() {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23861n4)).booleanValue()) {
            return this.f22668e;
        }
        return null;
    }

    @Override // com.google.android.gms.ads.AdError
    public final String toString() {
        String str;
        try {
            str = mo18106e().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }
}
