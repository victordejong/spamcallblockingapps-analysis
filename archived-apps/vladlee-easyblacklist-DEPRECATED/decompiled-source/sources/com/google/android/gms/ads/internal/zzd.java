package com.google.android.gms.ads.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzaju;
import com.google.android.gms.internal.ads.zzajx;
import com.google.android.gms.internal.ads.zzajy;
import com.google.android.gms.internal.ads.zzakc;
import com.google.android.gms.internal.ads.zzavf;
import com.google.android.gms.internal.ads.zzavs;
import com.google.android.gms.internal.ads.zzazb;
import com.google.android.gms.internal.ads.zzazd;
import com.google.android.gms.internal.ads.zzazh;
import com.google.android.gms.internal.ads.zzdgs;
import com.google.android.gms.internal.ads.zzdhe;
import com.google.android.gms.internal.ads.zzve;
import com.google.android.gms.internal.ads.zzzn;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzd.class */
public final class zzd {

    /* renamed from: a */
    private Context f5952a;

    /* renamed from: b */
    private long f5953b = 0;

    /* renamed from: a */
    private final void m6047a(Context context, zzazb zzazbVar, boolean z, zzavf zzavfVar, String str, String str2, Runnable runnable) {
        boolean z2;
        if (zzq.zzkx().elapsedRealtime() - this.f5953b < 5000) {
            zzavs.zzez("Not retrying to fetch app settings");
            return;
        }
        this.f5953b = zzq.zzkx().elapsedRealtime();
        if (zzavfVar == null) {
            z2 = true;
        } else {
            z2 = true;
            if (!(zzq.zzkx().currentTimeMillis() - zzavfVar.zzvj() > ((Long) zzve.zzoy().zzd(zzzn.zzcmt)).longValue())) {
                z2 = !zzavfVar.zzvk();
            }
        }
        if (z2) {
            if (context == null) {
                zzavs.zzez("Context not provided to fetch application settings");
            } else if (!TextUtils.isEmpty(str) || !TextUtils.isEmpty(str2)) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext == null) {
                    applicationContext = context;
                }
                this.f5952a = applicationContext;
                zzakc zzb = zzq.zzld().zzb(this.f5952a, zzazbVar);
                zzajy<JSONObject> zzajyVar = zzajx.zzdaq;
                zzaju zza = zzb.zza("google.afma.config.fetchAppSettings", zzajyVar, zzajyVar);
                try {
                    JSONObject jSONObject = new JSONObject();
                    if (!TextUtils.isEmpty(str)) {
                        jSONObject.put("app_id", str);
                    } else if (!TextUtils.isEmpty(str2)) {
                        jSONObject.put("ad_unit_id", str2);
                    }
                    jSONObject.put("is_init", z);
                    jSONObject.put("pn", context.getPackageName());
                    zzdhe zzi = zza.zzi(jSONObject);
                    zzdhe zzb2 = zzdgs.zzb(zzi, C1543a.f5901a, zzazd.zzdwj);
                    if (runnable != null) {
                        zzi.addListener(runnable, zzazd.zzdwj);
                    }
                    zzazh.zza(zzb2, "ConfigLoader.maybeFetchNewAppSettings");
                } catch (Exception e) {
                    zzavs.zzc("Error requesting application settings", e);
                }
            } else {
                zzavs.zzez("App settings could not be fetched. Required parameters missing");
            }
        }
    }

    public final void zza(Context context, zzazb zzazbVar, String str, zzavf zzavfVar) {
        m6047a(context, zzazbVar, false, zzavfVar, zzavfVar != null ? zzavfVar.zzvm() : null, str, null);
    }

    public final void zza(Context context, zzazb zzazbVar, String str, Runnable runnable) {
        m6047a(context, zzazbVar, true, null, str, null, runnable);
    }
}
