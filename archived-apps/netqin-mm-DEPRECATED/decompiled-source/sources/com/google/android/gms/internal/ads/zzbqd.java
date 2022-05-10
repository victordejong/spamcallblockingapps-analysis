package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.dynamic.IObjectWrapper;
import p012b.p035f.C0780a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqd.class */
public final class zzbqd implements zzbuz, zzbvs {

    /* renamed from: a */
    public final Context f25349a;

    /* renamed from: b */
    public final zzbgj f25350b;

    /* renamed from: c */
    public final zzdnv f25351c;

    /* renamed from: d */
    public final zzbbx f25352d;

    /* renamed from: e */
    public IObjectWrapper f25353e;

    /* renamed from: f */
    public boolean f25354f;

    public zzbqd(Context context, zzbgj zzbgjVar, zzdnv zzdnvVar, zzbbx zzbbxVar) {
        this.f25349a = context;
        this.f25350b = zzbgjVar;
        this.f25351c = zzdnvVar;
        this.f25352d = zzbbxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    /* renamed from: M */
    public final void mo13728M() {
        synchronized (this) {
            if (!this.f25354f) {
                m15181a();
            }
            if (!(!this.f25351c.f27567N || this.f25353e == null || this.f25350b == null)) {
                this.f25350b.mo15577a("onSdkImpression", new C0780a());
            }
        }
    }

    /* renamed from: a */
    public final void m15181a() {
        synchronized (this) {
            if (this.f25351c.f27567N) {
                if (this.f25350b != null) {
                    if (zzp.m17954r().m16413b(this.f25349a)) {
                        int i = this.f25352d.f24760b;
                        int i2 = this.f25352d.f24761c;
                        StringBuilder sb = new StringBuilder(23);
                        sb.append(i);
                        sb.append(".");
                        sb.append(i2);
                        this.f25353e = zzp.m17954r().m16415a(sb.toString(), this.f25350b.getWebView(), "", "javascript", this.f25351c.f27569P.m17915b());
                        View view = this.f25350b.getView();
                        if (!(this.f25353e == null || view == null)) {
                            zzp.m17954r().m16416a(this.f25353e, view);
                            this.f25350b.mo15590a(this.f25353e);
                            zzp.m17954r().m16417a(this.f25353e);
                            this.f25354f = true;
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvs
    /* renamed from: x */
    public final void mo13495x() {
        synchronized (this) {
            if (!this.f25354f) {
                m15181a();
            }
        }
    }
}
