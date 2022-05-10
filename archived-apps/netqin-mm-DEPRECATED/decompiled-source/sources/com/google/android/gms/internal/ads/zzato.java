package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzato;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzato.class */
public final class zzato extends zzatq {

    /* renamed from: a */
    public final Object f24511a = new Object();

    /* renamed from: b */
    public final Context f24512b;

    /* renamed from: c */
    public SharedPreferences f24513c;

    /* renamed from: d */
    public final zzalt<JSONObject, JSONObject> f24514d;

    public zzato(Context context, zzalt<JSONObject, JSONObject> zzaltVar) {
        this.f24512b = context.getApplicationContext();
        this.f24514d = zzaltVar;
    }

    /* renamed from: a */
    public static JSONObject m16357a(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("js", zzbbx.m15844f().f24759a);
            jSONObject.put("mf", zzacw.f23994a.mo16862a());
            jSONObject.put("cl", "330794610");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", "HEAD");
            jSONObject.put("admob_module_version", 20360);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.m16986b(context, ModuleDescriptor.MODULE_ID));
            jSONObject.put("container_version", 12451009);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzatq
    /* renamed from: a */
    public final zzdzc<Void> mo16355a() {
        synchronized (this.f24511a) {
            if (this.f24513c == null) {
                this.f24513c = this.f24512b.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        if (zzp.m17962j().mo17091b() - this.f24513c.getLong("js_last_update", 0L) < zzacw.f23995b.mo16862a().longValue()) {
            return zzdyq.m12988a((Object) null);
        }
        return zzdyq.m12993a(this.f24514d.mo16659c(m16357a(this.f24512b)), new zzdvu(this) { // from class: c.d.b.d.g.a.v3

            /* renamed from: a */
            public final zzato f15694a;

            {
                this.f15694a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdvu
            public final Object apply(Object obj) {
                return this.f15694a.m16356a((JSONObject) obj);
            }
        }, zzbbz.f24769f);
    }

    /* renamed from: a */
    public final /* synthetic */ Void m16356a(JSONObject jSONObject) {
        zzabb.m16915a(this.f24512b, 1, jSONObject);
        this.f24513c.edit().putLong("js_last_update", zzp.m17962j().mo17091b()).apply();
        return null;
    }
}
