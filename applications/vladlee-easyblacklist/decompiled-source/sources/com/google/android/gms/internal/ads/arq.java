package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/arq.class */
public final class arq extends aru<zzwk> {

    /* renamed from: a */
    private final /* synthetic */ Context f8223a;

    /* renamed from: b */
    private final /* synthetic */ zzup f8224b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public arq(zzup zzupVar, Context context) {
        this.f8224b = zzupVar;
        this.f8223a = context;
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    protected final /* synthetic */ zzwk mo4750a() {
        zzup.m3001a(this.f8223a, "mobile_ads_settings");
        return new zzyf();
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    public final /* synthetic */ zzwk mo4749a(zzwd zzwdVar) {
        return zzwdVar.zza(ObjectWrapper.wrap(this.f8223a), 19649000);
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: b */
    public final /* synthetic */ zzwk mo4748b() {
        zzya zzyaVar;
        zzyaVar = this.f8224b.f15581c;
        return zzyaVar.zzi(this.f8223a);
    }
}
