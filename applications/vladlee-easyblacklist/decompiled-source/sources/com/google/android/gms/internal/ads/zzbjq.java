package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjq.class */
public final class zzbjq implements zzps {

    /* renamed from: a */
    private zzbdi f11992a;

    /* renamed from: b */
    private final Executor f11993b;

    /* renamed from: c */
    private final zzbjb f11994c;

    /* renamed from: d */
    private final Clock f11995d;

    /* renamed from: e */
    private boolean f11996e = false;

    /* renamed from: f */
    private boolean f11997f = false;

    /* renamed from: g */
    private zzbjf f11998g = new zzbjf();

    public zzbjq(Executor executor, zzbjb zzbjbVar, Clock clock) {
        this.f11993b = executor;
        this.f11994c = zzbjbVar;
        this.f11995d = clock;
    }

    /* renamed from: a */
    private final void m4040a() {
        try {
            final JSONObject zza = this.f11994c.zzj(this.f11998g);
            if (this.f11992a != null) {
                this.f11993b.execute(new Runnable(this, zza) { // from class: com.google.android.gms.internal.ads.ky

                    /* renamed from: a */
                    private final zzbjq f10152a;

                    /* renamed from: b */
                    private final JSONObject f10153b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10152a = this;
                        this.f10153b = zza;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f10152a.m4039a(this.f10153b);
                    }
                });
            }
        } catch (JSONException e) {
            zzavs.zza("Failed to call video active view js", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4039a(JSONObject jSONObject) {
        this.f11992a.zza("AFMA_updateActiveView", jSONObject);
    }

    public final void disable() {
        this.f11996e = false;
    }

    public final void enable() {
        this.f11996e = true;
        m4040a();
    }

    @Override // com.google.android.gms.internal.ads.zzps
    public final void zza(zzpt zzptVar) {
        this.f11998g.zzbnq = this.f11997f ? false : zzptVar.zzbnq;
        this.f11998g.timestamp = this.f11995d.elapsedRealtime();
        this.f11998g.zzfcr = zzptVar;
        if (this.f11996e) {
            m4040a();
        }
    }

    public final void zzbf(boolean z) {
        this.f11997f = z;
    }

    public final void zzg(zzbdi zzbdiVar) {
        this.f11992a = zzbdiVar;
    }
}
