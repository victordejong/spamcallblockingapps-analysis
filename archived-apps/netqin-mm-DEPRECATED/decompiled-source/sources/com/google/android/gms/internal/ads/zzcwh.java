package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbtp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwh.class */
public final class zzcwh extends zzcwe<zzcjg> {

    /* renamed from: a */
    public final zzbix f26647a;

    /* renamed from: b */
    public final zzbtp.zza f26648b;

    /* renamed from: c */
    public final zzbys f26649c;

    public zzcwh(zzbix zzbixVar, zzbtp.zza zzaVar, zzbys zzbysVar) {
        this.f26647a = zzbixVar;
        this.f26648b = zzaVar;
        this.f26649c = zzbysVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcwe
    /* renamed from: a */
    public final zzdzc<zzcjg> mo13823a(zzdok zzdokVar, Bundle bundle) {
        zzcjm n = this.f26647a.mo15369n();
        zzbtp.zza zzaVar = this.f26648b;
        zzaVar.m15061a(zzdokVar);
        zzaVar.m15064a(bundle);
        return n.mo14135a(zzaVar.m15066a()).mo14134e(this.f26649c).mo14136a().mo14140a().m15123b();
    }
}
