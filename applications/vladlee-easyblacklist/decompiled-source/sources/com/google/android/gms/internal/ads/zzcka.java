package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcka.class */
public final class zzcka {

    /* renamed from: a */
    private final AtomicReference<zzalc> f13251a = new AtomicReference<>();

    /* renamed from: a */
    private final zzalc m3749a() {
        zzalc zzalcVar = this.f13251a.get();
        if (zzalcVar != null) {
            return zzalcVar;
        }
        zzavs.zzez("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    /* renamed from: a */
    private final zzald m3748a(String str, JSONObject jSONObject) {
        zzalc a = m3749a();
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            try {
                return a.zzdf(jSONObject.getString("class_name")) ? a.zzde("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") : a.zzde("com.google.ads.mediation.customevent.CustomEventAdapter");
            } catch (JSONException e) {
                zzavs.zzc("Invalid custom event.", e);
            }
        }
        return a.zzde(str);
    }

    public final boolean zzamf() {
        return this.f13251a.get() != null;
    }

    public final void zzb(zzalc zzalcVar) {
        this.f13251a.compareAndSet(null, zzalcVar);
    }

    public final zzani zzdi(String str) {
        return m3749a().zzdi(str);
    }

    public final zzdac zze(String str, JSONObject jSONObject) {
        try {
            return new zzdac("com.google.ads.mediation.admob.AdMobAdapter".equals(str) ? new zzaly(new AdMobAdapter()) : "com.google.ads.mediation.AdUrlAdapter".equals(str) ? new zzaly(new AdUrlAdapter()) : "com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str) ? new zzaly(new zzany()) : m3748a(str, jSONObject));
        } catch (Throwable th) {
            throw new zzdab(th);
        }
    }
}
