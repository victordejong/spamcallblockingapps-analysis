package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsd.class */
public final class zzcsd implements zzdso {

    /* renamed from: a */
    public final zzcsc f26460a;

    public zzcsd(zzcsc zzcscVar) {
        this.f26460a = zzcscVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdso
    /* renamed from: a */
    public final void mo13247a(zzdsf zzdsfVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdso
    /* renamed from: a */
    public final void mo13246a(zzdsf zzdsfVar, String str, Throwable th) {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23830i3)).booleanValue() && zzdsf.RENDERER == zzdsfVar && this.f26460a.m13893c() != 0) {
            this.f26460a.m13894b(zzp.m17962j().mo17092a() - this.f26460a.m13893c());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdso
    /* renamed from: b */
    public final void mo13245b(zzdsf zzdsfVar, String str) {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23830i3)).booleanValue() && zzdsf.RENDERER == zzdsfVar) {
            this.f26460a.m13892c(zzp.m17962j().mo17092a());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdso
    /* renamed from: c */
    public final void mo13244c(zzdsf zzdsfVar, String str) {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23830i3)).booleanValue() && zzdsf.RENDERER == zzdsfVar && this.f26460a.m13893c() != 0) {
            this.f26460a.m13894b(zzp.m17962j().mo17092a() - this.f26460a.m13893c());
        }
    }
}
