package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.aa */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/aa.class */
public final class C2465aa extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ Long f15835c;

    /* renamed from: d */
    private final /* synthetic */ String f15836d;

    /* renamed from: e */
    private final /* synthetic */ String f15837e;

    /* renamed from: f */
    private final /* synthetic */ Bundle f15838f;

    /* renamed from: g */
    private final /* synthetic */ boolean f15839g;

    /* renamed from: h */
    private final /* synthetic */ boolean f15840h;

    /* renamed from: i */
    private final /* synthetic */ zzx f15841i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2465aa(zzx zzxVar, Long l, String str, String str2, Bundle bundle, boolean z, boolean z2) {
        super(zzxVar);
        this.f15841i = zzxVar;
        this.f15835c = l;
        this.f15836d = str;
        this.f15837e = str2;
        this.f15838f = bundle;
        this.f15839g = z;
        this.f15840h = z2;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        Long l = this.f15835c;
        long longValue = l == null ? this.f16528a : l.longValue();
        zzmVar = this.f15841i.f16527r;
        zzmVar.logEvent(this.f15836d, this.f15837e, this.f15838f, this.f15839g, this.f15840h, longValue);
    }
}
