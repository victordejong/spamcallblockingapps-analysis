package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqw.class */
public final class zzaqw extends zzaqy {

    /* renamed from: a */
    private final Object f11320a = new Object();

    /* renamed from: b */
    private final Context f11321b;

    /* renamed from: c */
    private SharedPreferences f11322c;

    /* renamed from: d */
    private final zzaju<JSONObject, JSONObject> f11323d;

    public zzaqw(Context context, zzaju<JSONObject, JSONObject> zzajuVar) {
        this.f11321b = context.getApplicationContext();
        this.f11323d = zzajuVar;
    }

    public static JSONObject zzy(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("js", zzazb.zzxm().zzbma);
            jSONObject.put("mf", zzaaz.zzcti.get());
            jSONObject.put("cl", "278033407");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", "HEAD");
            jSONObject.put("admob_module_version", 20360);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.getRemoteVersion(context, ModuleDescriptor.MODULE_ID));
            jSONObject.put("container_version", 12451009);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ Void m4309a(JSONObject jSONObject) {
        zzzn.zza(this.f11321b, 1, jSONObject);
        this.f11322c.edit().putLong("js_last_update", zzq.zzkx().currentTimeMillis()).apply();
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final zzdhe<Void> zzuh() {
        synchronized (this.f11320a) {
            if (this.f11322c == null) {
                this.f11322c = this.f11321b.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        if (zzq.zzkx().currentTimeMillis() - this.f11322c.getLong("js_last_update", 0L) < zzaaz.zzctj.get().longValue()) {
            return zzdgs.zzaj(null);
        }
        return zzdgs.zzb(this.f11323d.zzi(zzy(this.f11321b)), new zzded(this) { // from class: com.google.android.gms.internal.ads.dl

            /* renamed from: a */
            private final zzaqw f8390a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8390a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzded
            public final Object apply(Object obj) {
                return this.f8390a.m4309a((JSONObject) obj);
            }
        }, zzazd.zzdwj);
    }
}
