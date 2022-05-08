package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqr.class */
public final class zzcqr implements zzcub<zzcty<Bundle>> {

    /* renamed from: a */
    private final Executor f13745a;

    /* renamed from: b */
    private final zzave f13746b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcqr(Executor executor, zzave zzaveVar) {
        this.f13745a = executor;
        this.f13746b = zzaveVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcty<Bundle>> zzanc() {
        return ((Boolean) zzve.zzoy().zzd(zzzn.zzclf)).booleanValue() ? zzdgs.zzaj(null) : zzdgs.zzb(this.f13746b.zzvg(), C2313vs.f10632a, this.f13745a);
    }
}
