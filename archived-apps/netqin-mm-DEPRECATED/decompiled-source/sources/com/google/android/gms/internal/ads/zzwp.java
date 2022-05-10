package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwp.class */
public class zzwp extends AdListener {

    /* renamed from: a */
    public final Object f29082a = new Object();

    /* renamed from: b */
    public AdListener f29083b;

    @Override // com.google.android.gms.ads.AdListener
    /* renamed from: a */
    public void mo5294a() {
        synchronized (this.f29082a) {
            if (this.f29083b != null) {
                this.f29083b.mo5294a();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    /* renamed from: a */
    public void mo3662a(int i) {
        synchronized (this.f29082a) {
            if (this.f29083b != null) {
                this.f29083b.mo3662a(i);
            }
        }
    }

    /* renamed from: a */
    public final void m11161a(AdListener adListener) {
        synchronized (this.f29082a) {
            this.f29083b = adListener;
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    /* renamed from: a */
    public void mo11160a(LoadAdError loadAdError) {
        synchronized (this.f29082a) {
            if (this.f29083b != null) {
                this.f29083b.mo11160a(loadAdError);
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    /* renamed from: c */
    public void mo5293c() {
        synchronized (this.f29082a) {
            if (this.f29083b != null) {
                this.f29083b.mo5293c();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    /* renamed from: d */
    public void mo5292d() {
        synchronized (this.f29082a) {
            if (this.f29083b != null) {
                this.f29083b.mo5292d();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    /* renamed from: e */
    public void mo3661e() {
        synchronized (this.f29082a) {
            if (this.f29083b != null) {
                this.f29083b.mo3661e();
            }
        }
    }
}
