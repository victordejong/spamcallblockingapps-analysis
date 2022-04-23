package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzakx.class */
public final class zzakx {

    /* renamed from: a */
    private final long f10981a;

    /* renamed from: b */
    private final List<String> f10982b;

    /* renamed from: c */
    private final List<String> f10983c;

    /* renamed from: d */
    private final List<String> f10984d;

    /* renamed from: e */
    private final List<String> f10985e;

    /* renamed from: f */
    private final List<String> f10986f;

    /* renamed from: g */
    private final boolean f10987g;

    /* renamed from: h */
    private final String f10988h;

    /* renamed from: i */
    private final long f10989i;

    /* renamed from: j */
    private final String f10990j;

    /* renamed from: k */
    private final int f10991k;

    /* renamed from: l */
    private final int f10992l;

    /* renamed from: m */
    private final long f10993m;

    /* renamed from: n */
    private final boolean f10994n;

    /* renamed from: o */
    private final boolean f10995o;

    /* renamed from: p */
    private final boolean f10996p;

    /* renamed from: q */
    private final boolean f10997q;

    /* renamed from: r */
    private int f10998r;

    /* renamed from: s */
    private int f10999s;

    /* renamed from: t */
    private boolean f11000t;
    public final List<zzaky> zzdbo;

    public zzakx(JSONObject jSONObject) {
        if (zzavs.isLoggable(2)) {
            String valueOf = String.valueOf(jSONObject.toString(2));
            zzavs.zzed(valueOf.length() != 0 ? "Mediation Response JSON: ".concat(valueOf) : new String("Mediation Response JSON: "));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i = -1;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                zzaky zzakyVar = new zzaky(jSONArray.getJSONObject(i2));
                boolean z = true;
                if ("banner".equalsIgnoreCase(zzakyVar.zzdde)) {
                    this.f11000t = true;
                }
                arrayList.add(zzakyVar);
                i = i;
                if (i < 0) {
                    Iterator<String> it = zzakyVar.zzdcl.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                                break;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                    i = i;
                    if (z) {
                        i = i2;
                    }
                }
            } catch (JSONException e) {
                i = i;
            }
        }
        this.f10998r = i;
        this.f10999s = jSONArray.length();
        this.zzdbo = Collections.unmodifiableList(arrayList);
        this.f10988h = jSONObject.optString("qdata");
        this.f10992l = jSONObject.optInt("fs_model_type", -1);
        long j = -1;
        this.f10993m = jSONObject.optLong("timeout_ms", -1L);
        JSONObject optJSONObject = jSONObject.optJSONObject("settings");
        if (optJSONObject != null) {
            this.f10981a = optJSONObject.optLong("ad_network_timeout_millis", -1L);
            zzq.zzli();
            this.f10982b = zzala.zza(optJSONObject, "click_urls");
            zzq.zzli();
            this.f10983c = zzala.zza(optJSONObject, "imp_urls");
            zzq.zzli();
            this.f10984d = zzala.zza(optJSONObject, "downloaded_imp_urls");
            zzq.zzli();
            this.f10985e = zzala.zza(optJSONObject, "nofill_urls");
            zzq.zzli();
            this.f10986f = zzala.zza(optJSONObject, "remote_ping_urls");
            this.f10987g = optJSONObject.optBoolean("render_in_browser", false);
            long optLong = optJSONObject.optLong("refresh", -1L);
            this.f10989i = optLong > 0 ? 1000 * optLong : j;
            zzasd zza = zzasd.zza(optJSONObject.optJSONArray("rewards"));
            if (zza == null) {
                this.f10990j = null;
                this.f10991k = 0;
            } else {
                this.f10990j = zza.type;
                this.f10991k = zza.zzdno;
            }
            this.f10994n = optJSONObject.optBoolean("use_displayed_impression", false);
            this.f10995o = optJSONObject.optBoolean("allow_pub_rendered_attribution", false);
            this.f10996p = optJSONObject.optBoolean("allow_pub_owned_ad_view", false);
            this.f10997q = optJSONObject.optBoolean("allow_custom_click_gesture", false);
            return;
        }
        this.f10981a = -1L;
        this.f10982b = null;
        this.f10983c = null;
        this.f10984d = null;
        this.f10985e = null;
        this.f10986f = null;
        this.f10989i = -1L;
        this.f10990j = null;
        this.f10991k = 0;
        this.f10994n = false;
        this.f10987g = false;
        this.f10995o = false;
        this.f10996p = false;
        this.f10997q = false;
    }
}
