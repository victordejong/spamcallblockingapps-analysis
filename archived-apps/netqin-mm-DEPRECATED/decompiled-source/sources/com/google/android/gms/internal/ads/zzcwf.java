package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbtp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwf.class */
public final class zzcwf extends zzcwe<zzcbe> {

    /* renamed from: a */
    public final zzbix f26636a;

    /* renamed from: b */
    public final zzbtp.zza f26637b;

    /* renamed from: c */
    public final zzcyn f26638c;

    /* renamed from: d */
    public final zzbys f26639d;

    public zzcwf(zzbix zzbixVar, zzbtp.zza zzaVar, zzcyn zzcynVar, zzbys zzbysVar) {
        this.f26636a = zzbixVar;
        this.f26637b = zzaVar;
        this.f26638c = zzcynVar;
        this.f26639d = zzbysVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcwe
    /* renamed from: a */
    public final zzdzc<zzcbe> mo13823a(zzdok zzdokVar, Bundle bundle) {
        zzccd l = this.f26636a.mo15373l();
        zzbtp.zza zzaVar = this.f26637b;
        zzaVar.m15061a(zzdokVar);
        zzaVar.m15064a(bundle);
        return l.mo14818b(zzaVar.m15066a()).mo14816f(this.f26639d).mo14819a(this.f26638c).mo14817d().mo14815a().m15123b();
    }
}
