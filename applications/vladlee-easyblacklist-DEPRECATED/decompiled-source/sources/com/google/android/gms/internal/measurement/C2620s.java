package com.google.android.gms.internal.measurement;

import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/s.class */
public final class C2620s extends zzx.AbstractRunnableC2631a {

    /* renamed from: d */
    private final /* synthetic */ String f16105d;

    /* renamed from: e */
    private final /* synthetic */ Object f16106e;

    /* renamed from: h */
    private final /* synthetic */ zzx f16109h;

    /* renamed from: c */
    private final /* synthetic */ int f16104c = 5;

    /* renamed from: f */
    private final /* synthetic */ Object f16107f = null;

    /* renamed from: g */
    private final /* synthetic */ Object f16108g = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2620s(zzx zzxVar, String str, Object obj) {
        super(false);
        this.f16109h = zzxVar;
        this.f16105d = str;
        this.f16106e = obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16109h.f16527r;
        zzmVar.logHealthData(this.f16104c, this.f16105d, ObjectWrapper.wrap(this.f16106e), ObjectWrapper.wrap(this.f16107f), ObjectWrapper.wrap(this.f16108g));
    }
}
