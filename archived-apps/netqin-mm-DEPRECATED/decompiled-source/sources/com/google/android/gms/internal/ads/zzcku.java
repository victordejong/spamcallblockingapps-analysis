package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcku.class */
public final class zzcku {

    /* renamed from: a */
    public final zzckp f26192a;

    /* renamed from: b */
    public final AtomicReference<zzanb> f26193b = new AtomicReference<>();

    public zzcku(zzckp zzckpVar) {
        this.f26192a = zzckpVar;
    }

    /* renamed from: a */
    public final zzaph m14104a(String str) throws RemoteException {
        zzaph n = m14102b().mo16640n(str);
        this.f26192a.m14109a(str, n);
        return n;
    }

    /* renamed from: a */
    public final zzdpa m14103a(String str, JSONObject jSONObject) throws zzdos {
        try {
            zzdpa zzdpaVar = new zzdpa("com.google.ads.mediation.admob.AdMobAdapter".equals(str) ? new zzanx(new AdMobAdapter()) : "com.google.ads.mediation.AdUrlAdapter".equals(str) ? new zzanx(new AdUrlAdapter()) : "com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str) ? new zzanx(new zzapx()) : m14101b(str, jSONObject));
            this.f26192a.m14108a(str, zzdpaVar);
            return zzdpaVar;
        } catch (Throwable th) {
            throw new zzdos(th);
        }
    }

    /* renamed from: a */
    public final void m14105a(zzanb zzanbVar) {
        this.f26193b.compareAndSet(null, zzanbVar);
    }

    /* renamed from: a */
    public final boolean m14106a() {
        return this.f26193b.get() != null;
    }

    /* renamed from: b */
    public final zzanb m14102b() throws RemoteException {
        zzanb zzanbVar = this.f26193b.get();
        if (zzanbVar != null) {
            return zzanbVar;
        }
        zzbbq.m15852d("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    /* renamed from: b */
    public final zzang m14101b(String str, JSONObject jSONObject) throws RemoteException {
        zzanb b = m14102b();
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            try {
                return b.mo16638w(jSONObject.getString("class_name")) ? b.mo16639r("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") : b.mo16639r("com.google.ads.mediation.customevent.CustomEventAdapter");
            } catch (JSONException e) {
                zzbbq.m15855b("Invalid custom event.", e);
            }
        }
        return b.mo16639r(str);
    }
}
