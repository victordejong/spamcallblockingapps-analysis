package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Bundle;
/* renamed from: h.i.a.e.m.b.l0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/l0.class */
public final class RunnableC9010l0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C9052s0 f20471a;

    /* renamed from: b */
    public final /* synthetic */ long f20472b;

    /* renamed from: c */
    public final /* synthetic */ Bundle f20473c;

    /* renamed from: d */
    public final /* synthetic */ Context f20474d;

    /* renamed from: e */
    public final /* synthetic */ C9027o f20475e;

    /* renamed from: f */
    public final /* synthetic */ BroadcastReceiver.PendingResult f20476f;

    public RunnableC9010l0(C8998j0 j0Var, C9052s0 s0Var, long j, Bundle bundle, Context context, C9027o oVar, BroadcastReceiver.PendingResult pendingResult) {
        this.f20471a = s0Var;
        this.f20472b = j;
        this.f20473c = bundle;
        this.f20474d = context;
        this.f20475e = oVar;
        this.f20476f = pendingResult;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0028, code lost:
        if (r0 <= 0) goto L_0x002b;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [android.os.Bundle] */
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
            h.i.a.e.m.b.s0 r0 = r0.f20471a
            h.i.a.e.m.b.a0 r0 = r0.m16273t()
            h.i.a.e.m.b.d0 r0 = r0.f20205j
            long r0 = r0.m16696a()
            r6 = r0
            r0 = r5
            long r0 = r0.f20472b
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
            android.os.Bundle r0 = r0.f20473c
            java.lang.String r1 = "click_timestamp"
            r2 = r10
            r0.putLong(r1, r2)
        L_0x0042:
            r0 = r5
            android.os.Bundle r0 = r0.f20473c
            java.lang.String r1 = "_cis"
            java.lang.String r2 = "referrer broadcast"
            r0.putString(r1, r2)
            r0 = r5
            android.content.Context r0 = r0.f20474d
            com.google.android.gms.measurement.AppMeasurement r0 = com.google.android.gms.measurement.AppMeasurement.getInstance(r0)
            java.lang.String r1 = "auto"
            java.lang.String r2 = "_cmp"
            r3 = r5
            android.os.Bundle r3 = r3.f20473c
            r0.logEventInternal(r1, r2, r3)
            r0 = r5
            h.i.a.e.m.b.o r0 = r0.f20475e
            h.i.a.e.m.b.q r0 = r0.m16389A()
            java.lang.String r1 = "Install campaign recorded"
            r0.m16338a(r1)
            r0 = r5
            android.content.BroadcastReceiver$PendingResult r0 = r0.f20476f
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x007b
            r0 = r12
            r0.finish()
        L_0x007b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.RunnableC9010l0.run():void");
    }
}
