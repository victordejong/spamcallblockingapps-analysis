package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbtp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwc.class */
public final class zzcwc extends zzcwe<zzbqu> {

    /* renamed from: a */
    public final zzbix f26625a;

    /* renamed from: b */
    public final zzccw f26626b;

    /* renamed from: c */
    public final zzbtp.zza f26627c;

    /* renamed from: d */
    public final zzbys f26628d;

    public zzcwc(zzbix zzbixVar, zzccw zzccwVar, zzbtp.zza zzaVar, zzbys zzbysVar) {
        this.f26625a = zzbixVar;
        this.f26626b = zzccwVar;
        this.f26627c = zzaVar;
        this.f26628d = zzbysVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcwe
    /* renamed from: a */
    public final zzdzc<zzbqu> mo13823a(zzdok zzdokVar, Bundle bundle) {
        zzccz m = this.f26625a.mo15371m();
        zzbtp.zza zzaVar = this.f26627c;
        zzaVar.m15061a(zzdokVar);
        zzaVar.m15064a(bundle);
        return m.mo14793f(zzaVar.m15066a()).mo14794d(this.f26628d).mo14795b(this.f26626b).mo14796b().mo14792a().m15123b();
    }
}
