package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzkv.class */
public final class zzkv extends Exception {

    /* renamed from: a */
    private final String f15048a;

    /* renamed from: b */
    private final boolean f15049b;

    /* renamed from: c */
    private final String f15050c;

    /* renamed from: d */
    private final String f15051d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzkv(com.google.android.gms.internal.ads.zzgw r6, java.lang.Throwable r7, boolean r8, int r9) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r10 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r10
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r2 = r2.length()
            r3 = 36
            int r2 = r2 + r3
            r1.<init>(r2)
            r11 = r0
            r0 = r11
            java.lang.String r1 = "Decoder init failed: ["
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            java.lang.String r1 = "], "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r10
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r11
            java.lang.String r1 = r1.toString()
            r2 = r7
            r0.<init>(r1, r2)
            r0 = r5
            r1 = r6
            java.lang.String r1 = r1.zzafe
            r0.f15048a = r1
            r0 = r5
            r1 = 0
            r0.f15049b = r1
            r0 = r5
            r1 = 0
            r0.f15050c = r1
            r0 = r9
            if (r0 >= 0) goto L_0x0061
            java.lang.String r0 = "neg_"
            r6 = r0
            goto L_0x0064
        L_0x0061:
            java.lang.String r0 = ""
            r6 = r0
        L_0x0064:
            r0 = r9
            int r0 = java.lang.Math.abs(r0)
            r9 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r6
            int r2 = r2.length()
            r3 = 64
            int r2 = r2 + r3
            r1.<init>(r2)
            r7 = r0
            r0 = r7
            java.lang.String r1 = "com.google.android.exoplayer.MediaCodecTrackRenderer_"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r7
            java.lang.String r1 = r1.toString()
            r0.f15051d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkv.<init>(com.google.android.gms.internal.ads.zzgw, java.lang.Throwable, boolean, int):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzkv(com.google.android.gms.internal.ads.zzgw r6, java.lang.Throwable r7, boolean r8, java.lang.String r9) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r10 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r9
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r2 = r2.length()
            r3 = 23
            int r2 = r2 + r3
            r3 = r10
            java.lang.String r3 = java.lang.String.valueOf(r3)
            int r3 = r3.length()
            int r2 = r2 + r3
            r1.<init>(r2)
            r11 = r0
            r0 = r11
            java.lang.String r1 = "Decoder init failed: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            java.lang.String r1 = ", "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r10
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r11
            java.lang.String r1 = r1.toString()
            r2 = r7
            r0.<init>(r1, r2)
            r0 = r5
            r1 = r6
            java.lang.String r1 = r1.zzafe
            r0.f15048a = r1
            r0 = r5
            r1 = 0
            r0.f15049b = r1
            r0 = r5
            r1 = r9
            r0.f15050c = r1
            int r0 = com.google.android.gms.internal.ads.zzoq.SDK_INT
            r12 = r0
            r0 = 0
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r12
            r1 = 21
            if (r0 < r1) goto L_0x0084
            r0 = r9
            r6 = r0
            r0 = r7
            boolean r0 = r0 instanceof android.media.MediaCodec.CodecException
            if (r0 == 0) goto L_0x0084
            r0 = r7
            android.media.MediaCodec$CodecException r0 = (android.media.MediaCodec.CodecException) r0
            java.lang.String r0 = r0.getDiagnosticInfo()
            r6 = r0
        L_0x0084:
            r0 = r5
            r1 = r6
            r0.f15051d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkv.<init>(com.google.android.gms.internal.ads.zzgw, java.lang.Throwable, boolean, java.lang.String):void");
    }
}
