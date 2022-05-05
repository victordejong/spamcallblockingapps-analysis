package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzen.class */
public abstract class zzen extends zzdv {

    /* renamed from: b */
    private static final Logger f16207b = Logger.getLogger(zzen.class.getName());

    /* renamed from: c */
    private static final boolean f16208c = C2588ep.m2585a();

    /* renamed from: a */
    C2527ci f16209a;

    /* renamed from: com.google.android.gms.internal.measurement.zzen$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzen$a.class */
    static final class C2629a extends zzen {

        /* renamed from: b */
        private final byte[] f16210b;

        /* renamed from: c */
        private final int f16211c;

        /* renamed from: d */
        private final int f16212d;

        /* renamed from: e */
        private int f16213e;

        C2629a(byte[] bArr, int i) {
            super((byte) 0);
            if (bArr != null) {
                int i2 = i + 0;
                if ((i | 0 | (bArr.length - i2)) >= 0) {
                    this.f16210b = bArr;
                    this.f16211c = 0;
                    this.f16213e = 0;
                    this.f16212d = i2;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i)));
            }
            throw new NullPointerException("buffer");
        }

        /* renamed from: a */
        private final void m2291a(byte[] bArr, int i, int i2) {
            try {
                System.arraycopy(bArr, i, this.f16210b, this.f16213e, i2);
                this.f16213e += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f16213e), Integer.valueOf(this.f16212d), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        /* renamed from: a */
        final void mo2293a(int i, zzgo zzgoVar, AbstractC2566du duVar) {
            zza(i, 2);
            zzdl zzdlVar = (zzdl) zzgoVar;
            int b = zzdlVar.mo2282b();
            int i2 = b;
            if (b == -1) {
                i2 = duVar.mo2735b(zzdlVar);
                zzdlVar.mo2281b(i2);
            }
            zzb(i2);
            duVar.mo2738a((AbstractC2566du) zzgoVar, (AbstractC2606fc) this.f16209a);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        /* renamed from: a */
        public final void mo2292a(byte[] bArr, int i) {
            zzb(i);
            m2291a(bArr, 0, i);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final int zza() {
            return this.f16212d - this.f16213e;
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(byte b) {
            try {
                byte[] bArr = this.f16210b;
                int i = this.f16213e;
                this.f16213e = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f16213e), Integer.valueOf(this.f16212d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i) {
            if (i >= 0) {
                zzb(i);
            } else {
                zza(i);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i, int i2) {
            zzb((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i, long j) {
            zza(i, 0);
            zza(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i, zzdu zzduVar) {
            zza(i, 2);
            zza(zzduVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i, zzgo zzgoVar) {
            zza(1, 3);
            zzc(2, i);
            zza(3, 2);
            zza(zzgoVar);
            zza(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i, String str) {
            zza(i, 2);
            zza(str);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(int i, boolean z) {
            zza(i, 0);
            zza(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3, types: [long] */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.measurement.zzen
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void zza(long r9) {
            /*
                Method dump skipped, instructions count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzen.C2629a.zza(long):void");
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(zzdu zzduVar) {
            zzb(zzduVar.zza());
            zzduVar.mo2306a(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(zzgo zzgoVar) {
            zzb(zzgoVar.zzbn());
            zzgoVar.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zza(String str) {
            int i = this.f16213e;
            try {
                int zzg = zzg(str.length() * 3);
                int zzg2 = zzg(str.length());
                if (zzg2 == zzg) {
                    this.f16213e = i + zzg2;
                    int a = C2595es.m2532a(str, this.f16210b, this.f16213e, zza());
                    this.f16213e = i;
                    zzb((a - i) - zzg2);
                    this.f16213e = a;
                    return;
                }
                zzb(C2595es.m2533a(str));
                this.f16213e = C2595es.m2532a(str, this.f16210b, this.f16213e, zza());
            } catch (C2598ev e) {
                this.f16213e = i;
                m2296a(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zza(e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzdv
        public final void zza(byte[] bArr, int i, int i2) {
            m2291a(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzb(int i) {
            int i2 = i;
            if (zzen.f16208c) {
                i2 = i;
                if (!C2509br.m2898a()) {
                    i2 = i;
                    if (zza() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.f16210b;
                            int i3 = this.f16213e;
                            this.f16213e = i3 + 1;
                            C2588ep.m2573a(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.f16210b;
                        int i4 = this.f16213e;
                        this.f16213e = i4 + 1;
                        C2588ep.m2573a(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.f16210b;
                            int i6 = this.f16213e;
                            this.f16213e = i6 + 1;
                            C2588ep.m2573a(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.f16210b;
                        int i7 = this.f16213e;
                        this.f16213e = i7 + 1;
                        C2588ep.m2573a(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.f16210b;
                            int i9 = this.f16213e;
                            this.f16213e = i9 + 1;
                            C2588ep.m2573a(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.f16210b;
                        int i10 = this.f16213e;
                        this.f16213e = i10 + 1;
                        C2588ep.m2573a(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.f16210b;
                            int i12 = this.f16213e;
                            this.f16213e = i12 + 1;
                            C2588ep.m2573a(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.f16210b;
                        int i13 = this.f16213e;
                        this.f16213e = i13 + 1;
                        C2588ep.m2573a(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.f16210b;
                        int i14 = this.f16213e;
                        this.f16213e = i14 + 1;
                        C2588ep.m2573a(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f16210b;
                    int i15 = this.f16213e;
                    this.f16213e = i15 + 1;
                    bArr10[i15] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f16213e), Integer.valueOf(this.f16212d), 1), e);
                }
            }
            byte[] bArr11 = this.f16210b;
            int i16 = this.f16213e;
            this.f16213e = i16 + 1;
            bArr11[i16] = (byte) i2;
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzb(int i, int i2) {
            zza(i, 0);
            zza(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzb(int i, zzdu zzduVar) {
            zza(1, 3);
            zzc(2, i);
            zza(3, zzduVar);
            zza(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzc(int i, int i2) {
            zza(i, 0);
            zzb(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzc(int i, long j) {
            zza(i, 1);
            zzc(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzc(long j) {
            try {
                byte[] bArr = this.f16210b;
                int i = this.f16213e;
                this.f16213e = i + 1;
                bArr[i] = (byte) j;
                byte[] bArr2 = this.f16210b;
                int i2 = this.f16213e;
                this.f16213e = i2 + 1;
                bArr2[i2] = (byte) (j >> 8);
                byte[] bArr3 = this.f16210b;
                int i3 = this.f16213e;
                this.f16213e = i3 + 1;
                bArr3[i3] = (byte) (j >> 16);
                byte[] bArr4 = this.f16210b;
                int i4 = this.f16213e;
                this.f16213e = i4 + 1;
                bArr4[i4] = (byte) (j >> 24);
                byte[] bArr5 = this.f16210b;
                int i5 = this.f16213e;
                this.f16213e = i5 + 1;
                bArr5[i5] = (byte) (j >> 32);
                byte[] bArr6 = this.f16210b;
                int i6 = this.f16213e;
                this.f16213e = i6 + 1;
                bArr6[i6] = (byte) (j >> 40);
                byte[] bArr7 = this.f16210b;
                int i7 = this.f16213e;
                this.f16213e = i7 + 1;
                bArr7[i7] = (byte) (j >> 48);
                byte[] bArr8 = this.f16210b;
                int i8 = this.f16213e;
                this.f16213e = i8 + 1;
                bArr8[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f16213e), Integer.valueOf(this.f16212d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zzd(int i) {
            try {
                byte[] bArr = this.f16210b;
                int i2 = this.f16213e;
                this.f16213e = i2 + 1;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.f16210b;
                int i3 = this.f16213e;
                this.f16213e = i3 + 1;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.f16210b;
                int i4 = this.f16213e;
                this.f16213e = i4 + 1;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.f16210b;
                int i5 = this.f16213e;
                this.f16213e = i5 + 1;
                bArr4[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f16213e), Integer.valueOf(this.f16212d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzen
        public final void zze(int i, int i2) {
            zza(i, 5);
            zzd(i2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzen$zza.class */
    public static final class zza extends IOException {
        zza() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        zza(java.lang.String r5, java.lang.Throwable r6) {
            /*
                r4 = this;
                r0 = r5
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r5 = r0
                r0 = r5
                int r0 = r0.length()
                if (r0 == 0) goto L_0x0016
                java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                r1 = r5
                java.lang.String r0 = r0.concat(r1)
                r5 = r0
                goto L_0x0020
            L_0x0016:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                java.lang.String r2 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                r1.<init>(r2)
                r5 = r0
            L_0x0020:
                r0 = r4
                r1 = r5
                r2 = r6
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzen.zza.<init>(java.lang.String, java.lang.Throwable):void");
        }

        zza(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    private zzen() {
    }

    /* synthetic */ zzen(byte b) {
        this();
    }

    /* renamed from: a */
    private static int m2299a(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2297a(zzgo zzgoVar, AbstractC2566du duVar) {
        zzdl zzdlVar = (zzdl) zzgoVar;
        int b = zzdlVar.mo2282b();
        int i = b;
        if (b == -1) {
            i = duVar.mo2735b(zzdlVar);
            zzdlVar.mo2281b(i);
        }
        return zzg(i) + i;
    }

    /* renamed from: a */
    private static long m2298a(long j) {
        return (j >> 63) ^ (j << 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m2295b(int i, zzgo zzgoVar, AbstractC2566du duVar) {
        return zze(i) + m2297a(zzgoVar, duVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    /* renamed from: c */
    public static int m2294c(int i, zzgo zzgoVar, AbstractC2566du duVar) {
        int zze = zze(i);
        zzdl zzdlVar = (zzdl) zzgoVar;
        int b = zzdlVar.mo2282b();
        int i2 = b;
        if (b == -1) {
            i2 = duVar.mo2735b(zzdlVar);
            zzdlVar.mo2281b(i2);
        }
        return (zze << 1) + i2;
    }

    public static int zza(int i, zzft zzftVar) {
        int zze = zze(i);
        int zzb = zzftVar.zzb();
        return zze + zzg(zzb) + zzb;
    }

    public static int zza(zzft zzftVar) {
        int zzb = zzftVar.zzb();
        return zzg(zzb) + zzb;
    }

    public static zzen zza(byte[] bArr) {
        return new C2629a(bArr, bArr.length);
    }

    public static int zzb(double d) {
        return 8;
    }

    public static int zzb(float f) {
        return 4;
    }

    public static int zzb(int i, double d) {
        return zze(i) + 8;
    }

    public static int zzb(int i, float f) {
        return zze(i) + 4;
    }

    public static int zzb(int i, zzft zzftVar) {
        return (zze(1) << 1) + zzg(2, i) + zza(3, zzftVar);
    }

    public static int zzb(int i, zzgo zzgoVar) {
        return (zze(1) << 1) + zzg(2, i) + zze(3) + zzb(zzgoVar);
    }

    public static int zzb(int i, String str) {
        return zze(i) + zzb(str);
    }

    public static int zzb(int i, boolean z) {
        return zze(i) + 1;
    }

    public static int zzb(zzdu zzduVar) {
        int zza2 = zzduVar.zza();
        return zzg(zza2) + zza2;
    }

    public static int zzb(zzgo zzgoVar) {
        int zzbn = zzgoVar.zzbn();
        return zzg(zzbn) + zzbn;
    }

    public static int zzb(String str) {
        int i;
        try {
            i = C2595es.m2533a(str);
        } catch (C2598ev e) {
            i = str.getBytes(zzff.f16286a).length;
        }
        return zzg(i) + i;
    }

    public static int zzb(boolean z) {
        return 1;
    }

    public static int zzb(byte[] bArr) {
        int length = bArr.length;
        return zzg(length) + length;
    }

    public static int zzc(int i, zzdu zzduVar) {
        int zze = zze(i);
        int zza2 = zzduVar.zza();
        return zze + zzg(zza2) + zza2;
    }

    @Deprecated
    public static int zzc(zzgo zzgoVar) {
        return zzgoVar.zzbn();
    }

    public static int zzd(int i, long j) {
        return zze(i) + zze(j);
    }

    public static int zzd(int i, zzdu zzduVar) {
        return (zze(1) << 1) + zzg(2, i) + zzc(3, zzduVar);
    }

    public static int zzd(long j) {
        return zze(j);
    }

    public static int zze(int i) {
        return zzg(i << 3);
    }

    public static int zze(int i, long j) {
        return zze(i) + zze(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zze(long r5) {
        /*
            r0 = -128(0xffffffffffffff80, double:NaN)
            r1 = r5
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000c
            r0 = 1
            return r0
        L_0x000c:
            r0 = r5
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0015
            r0 = 10
            return r0
        L_0x0015:
            r0 = -34359738368(0xfffffff800000000, double:NaN)
            r1 = r5
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x002a
            r0 = 6
            r7 = r0
            r0 = r5
            r1 = 28
            long r0 = r0 >>> r1
            r5 = r0
            goto L_0x002c
        L_0x002a:
            r0 = 2
            r7 = r0
        L_0x002c:
            r0 = r7
            r8 = r0
            r0 = r5
            r9 = r0
            r0 = -2097152(0xffffffffffe00000, double:NaN)
            r1 = r5
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0045
            r0 = r7
            r1 = 2
            int r0 = r0 + r1
            r8 = r0
            r0 = r5
            r1 = 14
            long r0 = r0 >>> r1
            r9 = r0
        L_0x0045:
            r0 = r8
            r7 = r0
            r0 = r9
            r1 = -16384(0xffffffffffffc000, double:NaN)
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0056
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r7 = r0
        L_0x0056:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzen.zze(long):int");
    }

    public static int zzf(int i) {
        if (i >= 0) {
            return zzg(i);
        }
        return 10;
    }

    public static int zzf(int i, int i2) {
        return zze(i) + zzf(i2);
    }

    public static int zzf(int i, long j) {
        return zze(i) + zze(m2298a(j));
    }

    public static int zzf(long j) {
        return zze(m2298a(j));
    }

    public static int zzg(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int zzg(int i, int i2) {
        return zze(i) + zzg(i2);
    }

    public static int zzg(int i, long j) {
        return zze(i) + 8;
    }

    public static int zzg(long j) {
        return 8;
    }

    public static int zzh(int i) {
        return zzg(m2299a(i));
    }

    public static int zzh(int i, int i2) {
        return zze(i) + zzg(m2299a(i2));
    }

    public static int zzh(int i, long j) {
        return zze(i) + 8;
    }

    public static int zzh(long j) {
        return 8;
    }

    public static int zzi(int i) {
        return 4;
    }

    public static int zzi(int i, int i2) {
        return zze(i) + 4;
    }

    public static int zzj(int i) {
        return 4;
    }

    public static int zzj(int i, int i2) {
        return zze(i) + 4;
    }

    public static int zzk(int i) {
        return zzf(i);
    }

    public static int zzk(int i, int i2) {
        return zze(i) + zzf(i2);
    }

    @Deprecated
    public static int zzl(int i) {
        return zzg(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void mo2293a(int i, zzgo zzgoVar, AbstractC2566du duVar);

    /* renamed from: a */
    final void m2296a(String str, C2598ev evVar) {
        f16207b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) evVar);
        byte[] bytes = str.getBytes(zzff.f16286a);
        try {
            zzb(bytes.length);
            zza(bytes, 0, bytes.length);
        } catch (zza e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zza(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void mo2292a(byte[] bArr, int i);

    public abstract int zza();

    public abstract void zza(byte b);

    public final void zza(double d) {
        zzc(Double.doubleToRawLongBits(d));
    }

    public final void zza(float f) {
        zzd(Float.floatToRawIntBits(f));
    }

    public abstract void zza(int i);

    public final void zza(int i, double d) {
        zzc(i, Double.doubleToRawLongBits(d));
    }

    public final void zza(int i, float f) {
        zze(i, Float.floatToRawIntBits(f));
    }

    public abstract void zza(int i, int i2);

    public abstract void zza(int i, long j);

    public abstract void zza(int i, zzdu zzduVar);

    public abstract void zza(int i, zzgo zzgoVar);

    public abstract void zza(int i, String str);

    public abstract void zza(int i, boolean z);

    public abstract void zza(long j);

    public abstract void zza(zzdu zzduVar);

    public abstract void zza(zzgo zzgoVar);

    public abstract void zza(String str);

    public final void zza(boolean z) {
        zza(z ? (byte) 1 : (byte) 0);
    }

    public final void zzb() {
        if (zza() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public abstract void zzb(int i);

    public abstract void zzb(int i, int i2);

    public final void zzb(int i, long j) {
        zza(i, m2298a(j));
    }

    public abstract void zzb(int i, zzdu zzduVar);

    public final void zzb(long j) {
        zza(m2298a(j));
    }

    public final void zzc(int i) {
        zzb(m2299a(i));
    }

    public abstract void zzc(int i, int i2);

    public abstract void zzc(int i, long j);

    public abstract void zzc(long j);

    public abstract void zzd(int i);

    public final void zzd(int i, int i2) {
        zzc(i, m2299a(i2));
    }

    public abstract void zze(int i, int i2);
}
