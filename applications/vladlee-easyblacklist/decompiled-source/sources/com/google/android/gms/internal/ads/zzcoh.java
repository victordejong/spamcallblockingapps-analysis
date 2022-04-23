package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcoh.class */
public final class zzcoh extends zzanm {

    /* renamed from: a */
    private final String f13437a;

    /* renamed from: b */
    private final zzani f13438b;

    /* renamed from: c */
    private zzazl<JSONObject> f13439c;

    /* renamed from: d */
    private final JSONObject f13440d = new JSONObject();

    /* renamed from: e */
    private boolean f13441e = false;

    public zzcoh(String str, zzani zzaniVar, zzazl<JSONObject> zzazlVar) {
        this.f13439c = zzazlVar;
        this.f13437a = str;
        this.f13438b = zzaniVar;
        try {
            this.f13440d.put("adapter_version", this.f13438b.zztc().toString());
            this.f13440d.put("sdk_version", this.f13438b.zztd().toString());
            this.f13440d.put(AppMeasurementSdk.ConditionalUserProperty.NAME, this.f13437a);
        } catch (RemoteException | NullPointerException | JSONException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void onFailure(String str) {
        synchronized (this) {
            if (!this.f13441e) {
                try {
                    this.f13440d.put("signal_error", str);
                } catch (JSONException e) {
                }
                this.f13439c.set(this.f13440d);
                this.f13441e = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanj
    public final void zzdn(String str) {
        synchronized (this) {
            if (!this.f13441e) {
                if (str == null) {
                    onFailure("Adapter returned null signals");
                    return;
                }
                try {
                    this.f13440d.put("signals", str);
                } catch (JSONException e) {
                }
                this.f13439c.set(this.f13440d);
                this.f13441e = true;
            }
        }
    }
}
