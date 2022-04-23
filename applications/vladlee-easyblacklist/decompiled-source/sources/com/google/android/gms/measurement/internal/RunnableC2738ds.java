package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.ds */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ds.class */
final class RunnableC2738ds implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzga f16709a;

    /* renamed from: b */
    private final /* synthetic */ long f16710b;

    /* renamed from: c */
    private final /* synthetic */ Bundle f16711c;

    /* renamed from: d */
    private final /* synthetic */ Context f16712d;

    /* renamed from: e */
    private final /* synthetic */ zzew f16713e;

    /* renamed from: f */
    private final /* synthetic */ BroadcastReceiver.PendingResult f16714f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2738ds(zzga zzgaVar, long j, Bundle bundle, Context context, zzew zzewVar, BroadcastReceiver.PendingResult pendingResult) {
        this.f16709a = zzgaVar;
        this.f16710b = j;
        this.f16711c = bundle;
        this.f16712d = context;
        this.f16713e = zzewVar;
        this.f16714f = pendingResult;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0028, code lost:
        if (r0 <= 0) goto L_0x002b;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.measurement.internal.zzga r0 = r0.f16709a
            com.google.android.gms.measurement.internal.do r0 = r0.zzc()
            com.google.android.gms.measurement.internal.zzfk r0 = r0.f16684h
            long r0 = r0.zza()
            r6 = r0
            r0 = r5
            long r0 = r0.f16710b
            r8 = r0
            r0 = r8
            r10 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0030
            r0 = r8
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x002b
            r0 = r8
            r10 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0030
        L_0x002b:
            r0 = r6
            r1 = 1
            long r0 = r0 - r1
            r10 = r0
        L_0x0030:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0042
            r0 = r5
            android.os.Bundle r0 = r0.f16711c
            java.lang.String r1 = "click_timestamp"
            r2 = r10
            r0.putLong(r1, r2)
        L_0x0042:
            r0 = r5
            android.os.Bundle r0 = r0.f16711c
            java.lang.String r1 = "_cis"
            java.lang.String r2 = "referrer broadcast"
            r0.putString(r1, r2)
            r0 = r5
            android.content.Context r0 = r0.f16712d
            r1 = 0
            com.google.android.gms.measurement.internal.zzga r0 = com.google.android.gms.measurement.internal.zzga.zza(r0, r1)
            com.google.android.gms.measurement.internal.zzhb r0 = r0.zzh()
            java.lang.String r1 = "auto"
            java.lang.String r2 = "_cmp"
            r3 = r5
            android.os.Bundle r3 = r3.f16711c
            r0.zza(r1, r2, r3)
            r0 = r5
            com.google.android.gms.measurement.internal.zzew r0 = r0.f16713e
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzx()
            java.lang.String r1 = "Install campaign recorded"
            r0.zza(r1)
            r0 = r5
            android.content.BroadcastReceiver$PendingResult r0 = r0.f16714f
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x007f
            r0 = r12
            r0.finish()
        L_0x007f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.RunnableC2738ds.run():void");
    }
}
