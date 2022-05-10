package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzva;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdError.class */
public class AdError {

    /* renamed from: a */
    public final int f22637a;

    /* renamed from: b */
    public final String f22638b;

    /* renamed from: c */
    public final String f22639c;

    /* renamed from: d */
    public final AdError f22640d;

    public AdError(int i, String str, String str2) {
        this.f22637a = i;
        this.f22638b = str;
        this.f22639c = str2;
        this.f22640d = null;
    }

    public AdError(int i, String str, String str2, AdError adError) {
        this.f22637a = i;
        this.f22638b = str;
        this.f22639c = str2;
        this.f22640d = adError;
    }

    /* renamed from: a */
    public int m18162a() {
        return this.f22637a;
    }

    /* renamed from: b */
    public String m18161b() {
        return this.f22639c;
    }

    /* renamed from: c */
    public String m18160c() {
        return this.f22638b;
    }

    /* renamed from: d */
    public final zzva m18159d() {
        zzva zzvaVar;
        if (this.f22640d == null) {
            zzvaVar = null;
        } else {
            AdError adError = this.f22640d;
            zzvaVar = new zzva(adError.f22637a, adError.f22638b, adError.f22639c, null, null);
        }
        return new zzva(this.f22637a, this.f22638b, this.f22639c, zzvaVar, null);
    }

    /* renamed from: e */
    public JSONObject mo18106e() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Code", this.f22637a);
        jSONObject.put("Message", this.f22638b);
        jSONObject.put("Domain", this.f22639c);
        AdError adError = this.f22640d;
        if (adError == null) {
            jSONObject.put("Cause", "null");
        } else {
            jSONObject.put("Cause", adError.mo18106e());
        }
        return jSONObject;
    }

    public String toString() {
        String str;
        try {
            str = mo18106e().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }
}
