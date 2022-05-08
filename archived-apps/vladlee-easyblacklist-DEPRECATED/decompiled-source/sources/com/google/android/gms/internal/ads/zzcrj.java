package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrj.class */
public final class zzcrj implements zzcub<zzcrg> {

    /* renamed from: a */
    private final zzdhd f13783a;

    /* renamed from: b */
    private final Context f13784b;

    public zzcrj(zzdhd zzdhdVar, Context context) {
        this.f13783a = zzdhdVar;
        this.f13784b = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0048, code lost:
        if (r0 == 5) goto L_0x004b;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [double] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.zzcrg m3701a() {
        /*
            r6 = this;
            android.content.IntentFilter r0 = new android.content.IntentFilter
            r1 = r0
            java.lang.String r2 = "android.intent.action.BATTERY_CHANGED"
            r1.<init>(r2)
            r7 = r0
            r0 = r6
            android.content.Context r0 = r0.f13784b
            r1 = 0
            r2 = r7
            android.content.Intent r0 = r0.registerReceiver(r1, r2)
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0054
            r0 = r7
            java.lang.String r1 = "status"
            r2 = -1
            int r0 = r0.getIntExtra(r1, r2)
            r9 = r0
            r0 = r7
            java.lang.String r1 = "level"
            r2 = -1
            int r0 = r0.getIntExtra(r1, r2)
            r10 = r0
            r0 = r7
            java.lang.String r1 = "scale"
            r2 = -1
            int r0 = r0.getIntExtra(r1, r2)
            r11 = r0
            r0 = r10
            double r0 = (double) r0
            r1 = r11
            double r1 = (double) r1
            double r0 = r0 / r1
            r12 = r0
            r0 = r9
            r1 = 2
            if (r0 == r1) goto L_0x004b
            r0 = r12
            r14 = r0
            r0 = r9
            r1 = 5
            if (r0 != r1) goto L_0x0059
        L_0x004b:
            r0 = 1
            r8 = r0
            r0 = r12
            r14 = r0
            goto L_0x0059
        L_0x0054:
            r0 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            r14 = r0
        L_0x0059:
            com.google.android.gms.internal.ads.zzcrg r0 = new com.google.android.gms.internal.ads.zzcrg
            r1 = r0
            r2 = r14
            r3 = r8
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcrj.m3701a():com.google.android.gms.internal.ads.zzcrg");
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcrg> zzanc() {
        return this.f13783a.zzd(new Callable(this) { // from class: com.google.android.gms.internal.ads.wa

            /* renamed from: a */
            private final zzcrj f10641a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10641a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10641a.m3701a();
            }
        });
    }
}
