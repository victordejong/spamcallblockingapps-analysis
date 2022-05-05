package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzx;
import com.google.android.gms.measurement.internal.zzgz;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.w */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/w.class */
public final class C2624w extends zzx.AbstractRunnableC2631a {

    /* renamed from: c */
    private final /* synthetic */ zzgz f16118c;

    /* renamed from: d */
    private final /* synthetic */ zzx f16119d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2624w(zzx zzxVar, zzgz zzgzVar) {
        super(zzxVar);
        this.f16119d = zzxVar;
        this.f16118c = zzgzVar;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x000f */
    @Override // com.google.android.gms.internal.measurement.zzx.AbstractRunnableC2631a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void mo2218a() {
        /*
            r6 = this;
            r0 = 0
            r7 = r0
        L_0x0002:
            r0 = r7
            r1 = r6
            com.google.android.gms.internal.measurement.zzx r1 = r1.f16119d
            java.util.List r1 = com.google.android.gms.internal.measurement.zzx.m2220d(r1)
            int r1 = r1.size()
            if (r0 >= r1) goto L_0x0043
            r0 = r6
            com.google.android.gms.measurement.internal.zzgz r0 = r0.f16118c
            r1 = r6
            com.google.android.gms.internal.measurement.zzx r1 = r1.f16119d
            java.util.List r1 = com.google.android.gms.internal.measurement.zzx.m2220d(r1)
            r2 = r7
            java.lang.Object r1 = r1.get(r2)
            android.util.Pair r1 = (android.util.Pair) r1
            java.lang.Object r1 = r1.first
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x003d
            r0 = r6
            com.google.android.gms.internal.measurement.zzx r0 = r0.f16119d
            java.lang.String r0 = com.google.android.gms.internal.measurement.zzx.m2225b(r0)
            java.lang.String r1 = "OnEventListener already registered."
            int r0 = android.util.Log.w(r0, r1)
            return
        L_0x003d:
            int r7 = r7 + 1
            goto L_0x0002
        L_0x0043:
            com.google.android.gms.internal.measurement.zzx$b r0 = new com.google.android.gms.internal.measurement.zzx$b
            r1 = r0
            r2 = r6
            com.google.android.gms.measurement.internal.zzgz r2 = r2.f16118c
            r1.<init>(r2)
            r8 = r0
            r0 = r6
            com.google.android.gms.internal.measurement.zzx r0 = r0.f16119d
            java.util.List r0 = com.google.android.gms.internal.measurement.zzx.m2220d(r0)
            android.util.Pair r1 = new android.util.Pair
            r2 = r1
            r3 = r6
            com.google.android.gms.measurement.internal.zzgz r3 = r3.f16118c
            r4 = r8
            r2.<init>(r3, r4)
            boolean r0 = r0.add(r1)
            r0 = r6
            com.google.android.gms.internal.measurement.zzx r0 = r0.f16119d
            com.google.android.gms.internal.measurement.zzm r0 = com.google.android.gms.internal.measurement.zzx.m2222c(r0)
            r1 = r8
            r0.registerOnMeasurementEventListener(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2624w.mo2218a():void");
    }
}
