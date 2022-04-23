package com.google.android.gms.internal.measurement;

import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzx;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.z */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/z.class */
public final class C2627z extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ String f16124c;

    /* renamed from: d */
    private final /* synthetic */ String f16125d;

    /* renamed from: e */
    private final /* synthetic */ Object f16126e;

    /* renamed from: f */
    private final /* synthetic */ boolean f16127f;

    /* renamed from: g */
    private final /* synthetic */ zzx f16128g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2627z(zzx zzxVar, String str, String str2, Object obj, boolean z) {
        super(zzxVar);
        this.f16128g = zzxVar;
        this.f16124c = str;
        this.f16125d = str2;
        this.f16126e = obj;
        this.f16127f = z;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    final void mo2218a() {
        zzm zzmVar;
        zzmVar = this.f16128g.f16527r;
        zzmVar.setUserProperty(this.f16124c, this.f16125d, ObjectWrapper.wrap(this.f16126e), this.f16127f, this.f16528a);
    }
}
