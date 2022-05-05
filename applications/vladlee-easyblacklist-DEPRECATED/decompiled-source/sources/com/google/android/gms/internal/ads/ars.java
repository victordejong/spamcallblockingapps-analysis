package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ars.class */
public final class ars extends aru<zzacp> {

    /* renamed from: a */
    private final /* synthetic */ View f8229a;

    /* renamed from: b */
    private final /* synthetic */ HashMap f8230b;

    /* renamed from: c */
    private final /* synthetic */ HashMap f8231c;

    /* renamed from: d */
    private final /* synthetic */ zzup f8232d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ars(zzup zzupVar, View view, HashMap hashMap, HashMap hashMap2) {
        this.f8232d = zzupVar;
        this.f8229a = view;
        this.f8230b = hashMap;
        this.f8231c = hashMap2;
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    protected final /* synthetic */ zzacp mo4750a() {
        zzup.m3001a(this.f8229a.getContext(), "native_ad_view_holder_delegate");
        return new zzyk();
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    public final /* synthetic */ zzacp mo4749a(zzwd zzwdVar) {
        return zzwdVar.zza(ObjectWrapper.wrap(this.f8229a), ObjectWrapper.wrap(this.f8230b), ObjectWrapper.wrap(this.f8231c));
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: b */
    public final /* synthetic */ zzacp mo4748b() {
        zzaem zzaemVar;
        zzaemVar = this.f8232d.f15586h;
        return zzaemVar.zzb(this.f8229a, this.f8230b, this.f8231c);
    }
}
