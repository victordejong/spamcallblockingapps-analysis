package com.google.android.gms.internal.firebase_auth_api;

import android.util.Log;
import com.google.android.gms.internal.firebase-auth-api.hn;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.hn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/hn.class */
public final class C1094hn {

    /* renamed from: a */
    private Long f3723a;

    /* renamed from: b */
    private Long f3724b;

    /* renamed from: c */
    public static hn m2822c(String str) throws UnsupportedEncodingException {
        try {
            C1094hn c1094hn = new C1094hn();
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.optString("iss");
            jSONObject.optString("aud");
            jSONObject.optString("sub");
            c1094hn.f3723a = Long.valueOf(jSONObject.optLong("iat"));
            c1094hn.f3724b = Long.valueOf(jSONObject.optLong("exp"));
            jSONObject.optBoolean("is_anonymous");
            return c1094hn;
        } catch (JSONException e) {
            if (Log.isLoggable("JwtToken", 3)) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 41);
                sb.append("Failed to read JwtToken from JSONObject. ");
                sb.append(valueOf);
                Log.d("JwtToken", sb.toString());
            }
            String valueOf2 = String.valueOf(e);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 41);
            sb2.append("Failed to read JwtToken from JSONObject. ");
            sb2.append(valueOf2);
            throw new UnsupportedEncodingException(sb2.toString());
        }
    }

    /* renamed from: a */
    public final Long m2824a() {
        return this.f3723a;
    }

    /* renamed from: b */
    public final Long m2823b() {
        return this.f3724b;
    }
}
