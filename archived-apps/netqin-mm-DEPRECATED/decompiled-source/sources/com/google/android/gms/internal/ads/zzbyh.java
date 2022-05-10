package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyh.class */
public final class zzbyh implements zzeoy<zzbyf> {

    /* renamed from: a */
    public final zzeph<Set<zzcab<AppEventListener>>> f25595a;

    public zzbyh(zzeph<Set<zzcab<AppEventListener>>> zzephVar) {
        this.f25595a = zzephVar;
    }

    /* renamed from: a */
    public static zzbyh m14943a(zzeph<Set<zzcab<AppEventListener>>> zzephVar) {
        return new zzbyh(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbyf(this.f25595a.get());
    }
}
