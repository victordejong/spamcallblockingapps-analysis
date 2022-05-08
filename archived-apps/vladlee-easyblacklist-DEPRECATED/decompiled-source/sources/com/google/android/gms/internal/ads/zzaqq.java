package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.ImagesContract;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqq.class */
public final class zzaqq {

    /* renamed from: a */
    private final List<String> f11261a;

    /* renamed from: b */
    private final String f11262b;

    /* renamed from: c */
    private final String f11263c;

    /* renamed from: d */
    private final String f11264d;

    /* renamed from: e */
    private final boolean f11265e;

    /* renamed from: f */
    private final String f11266f;

    /* renamed from: g */
    private final String f11267g;

    /* renamed from: h */
    private String f11268h;

    /* renamed from: i */
    private final int f11269i;

    /* renamed from: j */
    private final boolean f11270j;

    /* renamed from: k */
    private final JSONObject f11271k;

    /* renamed from: l */
    private final String f11272l;

    /* renamed from: m */
    private final boolean f11273m;

    /* renamed from: n */
    private final String f11274n;

    public zzaqq(JSONObject jSONObject) {
        this.f11268h = jSONObject.optString(ImagesContract.URL);
        this.f11262b = jSONObject.optString("base_uri");
        this.f11263c = jSONObject.optString("post_parameters");
        String optString = jSONObject.optString("drt_include");
        int i = 1;
        this.f11265e = optString != null && (optString.equals("1") || optString.equals("true"));
        this.f11266f = jSONObject.optString("request_id");
        this.f11264d = jSONObject.optString("type");
        String optString2 = jSONObject.optString("errors");
        this.f11261a = optString2 == null ? null : Arrays.asList(optString2.split(","));
        this.f11269i = jSONObject.optInt("valid", 0) == 1 ? -2 : i;
        this.f11267g = jSONObject.optString("fetched_ad");
        this.f11270j = jSONObject.optBoolean("render_test_ad_label");
        JSONObject optJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.f11271k = optJSONObject == null ? new JSONObject() : optJSONObject;
        this.f11272l = jSONObject.optString("analytics_query_ad_event_id");
        this.f11273m = jSONObject.optBoolean("is_analytics_logging_enabled");
        this.f11274n = jSONObject.optString("pool_key");
    }

    public final int getErrorCode() {
        return this.f11269i;
    }

    public final String getUrl() {
        return this.f11268h;
    }

    public final List<String> zzua() {
        return this.f11261a;
    }

    public final String zzub() {
        return this.f11262b;
    }

    public final String zzuc() {
        return this.f11263c;
    }

    public final boolean zzud() {
        return this.f11265e;
    }

    public final JSONObject zzue() {
        return this.f11271k;
    }

    public final String zzuf() {
        return this.f11274n;
    }
}
