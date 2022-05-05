package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.bz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bz.class */
final class C2517bz extends C2520cb {

    /* renamed from: b */
    private final int f15904b;

    /* renamed from: c */
    private final int f15905c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2517bz(byte[] bArr, int i, int i2) {
        super(bArr);
        m2307a(i, i + i2, bArr.length);
        this.f15904b = i;
        this.f15905c = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.C2520cb, com.google.android.gms.internal.measurement.zzdu
    /* renamed from: a */
    public final byte mo2309a(int i) {
        return this.f15912a[this.f15904b + i];
    }

    @Override // com.google.android.gms.internal.measurement.C2520cb
    /* renamed from: b */
    protected final int mo2890b() {
        return this.f15904b;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [int, java.lang.StringBuilder] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.measurement.C2520cb, com.google.android.gms.internal.measurement.zzdu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte zza(int r5) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.zza()
            r6 = r0
            r0 = r6
            r1 = r5
            r2 = 1
            int r1 = r1 + r2
            int r0 = r0 - r1
            r1 = r5
            r0 = r0 | r1
            if (r0 >= 0) goto L_0x0070
            java.lang.ArrayIndexOutOfBoundsException r0 = new java.lang.ArrayIndexOutOfBoundsException
            r7 = r0
            r0 = r5
            if (r0 >= 0) goto L_0x003c
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = 22
            r1.<init>(r2)
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Index < 0: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r8
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            r0 = r7
            throw r0
        L_0x003c:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = 40
            r1.<init>(r2)
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Index > length: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = ", "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r8
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            r0 = r7
            throw r0
        L_0x0070:
            r0 = r4
            byte[] r0 = r0.f15912a
            r1 = r4
            int r1 = r1.f15904b
            r2 = r5
            int r1 = r1 + r2
            r0 = r0[r1]
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2517bz.zza(int):byte");
    }

    @Override // com.google.android.gms.internal.measurement.C2520cb, com.google.android.gms.internal.measurement.zzdu
    public final int zza() {
        return this.f15905c;
    }
}
