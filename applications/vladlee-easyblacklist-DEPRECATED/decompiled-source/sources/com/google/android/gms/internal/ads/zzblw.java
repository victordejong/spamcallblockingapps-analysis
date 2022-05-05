package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.p026b.C0529a;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblw.class */
public final class zzblw implements zzbpe, zzbqb {

    /* renamed from: a */
    private final Context f12114a;

    /* renamed from: b */
    private final zzbdi f12115b;

    /* renamed from: c */
    private final zzczl f12116c;

    /* renamed from: d */
    private final zzazb f12117d;

    /* renamed from: e */
    private IObjectWrapper f12118e;

    /* renamed from: f */
    private boolean f12119f;

    public zzblw(Context context, zzbdi zzbdiVar, zzczl zzczlVar, zzazb zzazbVar) {
        this.f12114a = context;
        this.f12115b = zzbdiVar;
        this.f12116c = zzczlVar;
        this.f12117d = zzazbVar;
    }

    /* renamed from: a */
    private final void m4035a() {
        synchronized (this) {
            if (this.f12116c.zzdli) {
                if (this.f12115b != null) {
                    if (zzq.zzlf().zzp(this.f12114a)) {
                        int i = this.f12117d.zzdvz;
                        int i2 = this.f12117d.zzdwa;
                        StringBuilder sb = new StringBuilder(23);
                        sb.append(i);
                        sb.append(".");
                        sb.append(i2);
                        this.f12118e = zzq.zzlf().zza(sb.toString(), this.f12115b.getWebView(), "", "javascript", this.f12116c.zzgly.optInt("media_type", -1) == 0 ? null : "javascript");
                        View view = this.f12115b.getView();
                        if (!(this.f12118e == null || view == null)) {
                            zzq.zzlf().zza(this.f12118e, view);
                            this.f12115b.zzan(this.f12118e);
                            zzq.zzlf().zzab(this.f12118e);
                            this.f12119f = true;
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpe
    public final void onAdImpression() {
        synchronized (this) {
            if (!this.f12119f) {
                m4035a();
            }
            if (!(!this.f12116c.zzdli || this.f12118e == null || this.f12115b == null)) {
                this.f12115b.zza("onSdkImpression", new C0529a());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqb
    public final void onAdLoaded() {
        synchronized (this) {
            if (!this.f12119f) {
                m4035a();
            }
        }
    }
}
