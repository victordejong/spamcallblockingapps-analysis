package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaky.class */
public final class zzaky {

    /* renamed from: a */
    private final String f11001a;

    /* renamed from: b */
    private final String f11002b;

    /* renamed from: c */
    private final String f11003c;

    /* renamed from: d */
    private final String f11004d;

    /* renamed from: e */
    private final List<String> f11005e;

    /* renamed from: f */
    private final List<String> f11006f;

    /* renamed from: g */
    private final List<String> f11007g;

    /* renamed from: h */
    private final List<String> f11008h;

    /* renamed from: i */
    private final List<String> f11009i;

    /* renamed from: j */
    private final List<String> f11010j;

    /* renamed from: k */
    private final List<String> f11011k;

    /* renamed from: l */
    private final List<String> f11012l;

    /* renamed from: m */
    private final String f11013m;

    /* renamed from: n */
    private final String f11014n;

    /* renamed from: o */
    private final String f11015o;

    /* renamed from: p */
    private final String f11016p;

    /* renamed from: q */
    private final String f11017q;

    /* renamed from: r */
    private final List<String> f11018r;

    /* renamed from: s */
    private final String f11019s;

    /* renamed from: t */
    private final long f11020t;
    public final List<String> zzdcl;
    public final String zzdct;
    public final String zzdde;

    public zzaky(JSONObject jSONObject) {
        List<String> list;
        this.f11002b = jSONObject.optString("id");
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        this.zzdcl = Collections.unmodifiableList(arrayList);
        this.f11003c = jSONObject.optString("allocation_id", null);
        zzq.zzli();
        this.f11005e = zzala.zza(jSONObject, "clickurl");
        zzq.zzli();
        this.f11006f = zzala.zza(jSONObject, "imp_urls");
        zzq.zzli();
        this.f11007g = zzala.zza(jSONObject, "downloaded_imp_urls");
        zzq.zzli();
        this.f11009i = zzala.zza(jSONObject, "fill_urls");
        zzq.zzli();
        this.f11010j = zzala.zza(jSONObject, "video_start_urls");
        zzq.zzli();
        this.f11012l = zzala.zza(jSONObject, "video_complete_urls");
        zzq.zzli();
        this.f11011k = zzala.zza(jSONObject, "video_reward_urls");
        this.f11013m = jSONObject.optString("transaction_id");
        this.f11014n = jSONObject.optString("valid_from_timestamp");
        JSONObject optJSONObject = jSONObject.optJSONObject("ad");
        if (optJSONObject != null) {
            zzq.zzli();
            list = zzala.zza(optJSONObject, "manual_impression_urls");
        } else {
            list = null;
        }
        this.f11008h = list;
        this.f11001a = optJSONObject != null ? optJSONObject.toString() : null;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("data");
        this.zzdct = optJSONObject2 != null ? optJSONObject2.toString() : null;
        this.f11004d = optJSONObject2 != null ? optJSONObject2.optString("class_name") : null;
        this.f11015o = jSONObject.optString("html_template", null);
        this.f11016p = jSONObject.optString("ad_base_url", null);
        JSONObject optJSONObject3 = jSONObject.optJSONObject("assets");
        this.f11017q = optJSONObject3 != null ? optJSONObject3.toString() : null;
        zzq.zzli();
        this.f11018r = zzala.zza(jSONObject, "template_ids");
        JSONObject optJSONObject4 = jSONObject.optJSONObject("ad_loader_options");
        this.f11019s = optJSONObject4 != null ? optJSONObject4.toString() : null;
        this.zzdde = jSONObject.optString("response_type", null);
        this.f11020t = jSONObject.optLong("ad_network_timeout_millis", -1L);
    }
}
