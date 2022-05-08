package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhg.class */
public abstract class zzhg extends zzgo {

    /* renamed from: b */
    private static final Logger f8487b = Logger.getLogger(zzhg.class.getName());

    /* renamed from: c */
    private static final boolean f8488c = zzkx.m12072m();

    /* renamed from: a */
    zzhj f8489a;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhg$zza.class */
    private static final class zza extends zzhg {

        /* renamed from: d */
        private final byte[] f8490d;

        /* renamed from: e */
        private final int f8491e;

        /* renamed from: f */
        private int f8492f;

        zza(byte[] bArr, int i, int i2) {
            super();
            if (bArr == null) {
                throw new NullPointerException("buffer");
            } else if ((i2 | 0 | (bArr.length - i2)) >= 0) {
                this.f8490d = bArr;
                this.f8492f = 0;
                this.f8491e = i2;
            } else {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)));
            }
        }

        /* renamed from: G0 */
        private final void m12504G0(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.f8490d, this.f8492f, i2);
                this.f8492f += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8492f), Integer.valueOf(this.f8491e), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: O */
        public final void mo12503O(int i) throws IOException {
            int i2 = i;
            if (zzhg.f8488c) {
                i2 = i;
                if (!zzgk.m12658b()) {
                    i2 = i;
                    if (mo12495b() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.f8490d;
                            int i3 = this.f8492f;
                            this.f8492f = i3 + 1;
                            zzkx.m12073l(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.f8490d;
                        int i4 = this.f8492f;
                        this.f8492f = i4 + 1;
                        zzkx.m12073l(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.f8490d;
                            int i6 = this.f8492f;
                            this.f8492f = i6 + 1;
                            zzkx.m12073l(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.f8490d;
                        int i7 = this.f8492f;
                        this.f8492f = i7 + 1;
                        zzkx.m12073l(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.f8490d;
                            int i9 = this.f8492f;
                            this.f8492f = i9 + 1;
                            zzkx.m12073l(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.f8490d;
                        int i10 = this.f8492f;
                        this.f8492f = i10 + 1;
                        zzkx.m12073l(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.f8490d;
                            int i12 = this.f8492f;
                            this.f8492f = i12 + 1;
                            zzkx.m12073l(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.f8490d;
                        int i13 = this.f8492f;
                        this.f8492f = i13 + 1;
                        zzkx.m12073l(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.f8490d;
                        int i14 = this.f8492f;
                        this.f8492f = i14 + 1;
                        zzkx.m12073l(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f8490d;
                    int i15 = this.f8492f;
                    this.f8492f = i15 + 1;
                    bArr10[i15] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8492f), Integer.valueOf(this.f8491e), 1), e);
                }
            }
            byte[] bArr11 = this.f8490d;
            int i16 = this.f8492f;
            this.f8492f = i16 + 1;
            bArr11[i16] = (byte) i2;
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: P */
        public final void mo12502P(int i, int i2) throws IOException {
            mo12490m(i, 0);
            mo12492j(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: R */
        public final void mo12501R(int i, zzgr zzgrVar) throws IOException {
            mo12490m(1, 3);
            mo12499Y(2, i);
            mo12488o(3, zzgrVar);
            mo12490m(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: T */
        public final void mo12500T(byte[] bArr, int i, int i2) throws IOException {
            mo12503O(i2);
            m12504G0(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: Y */
        public final void mo12499Y(int i, int i2) throws IOException {
            mo12490m(i, 0);
            mo12503O(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: Z */
        public final void mo12498Z(int i, long j) throws IOException {
            mo12490m(i, 1);
            mo12496a0(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzgo
        /* renamed from: a */
        public final void mo12497a(byte[] bArr, int i, int i2) throws IOException {
            m12504G0(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: a0 */
        public final void mo12496a0(long j) throws IOException {
            try {
                byte[] bArr = this.f8490d;
                int i = this.f8492f;
                int i2 = i + 1;
                this.f8492f = i2;
                bArr[i] = (byte) j;
                byte[] bArr2 = this.f8490d;
                int i3 = i2 + 1;
                this.f8492f = i3;
                bArr2[i2] = (byte) (j >> 8);
                byte[] bArr3 = this.f8490d;
                int i4 = i3 + 1;
                this.f8492f = i4;
                bArr3[i3] = (byte) (j >> 16);
                byte[] bArr4 = this.f8490d;
                int i5 = i4 + 1;
                this.f8492f = i5;
                bArr4[i4] = (byte) (j >> 24);
                byte[] bArr5 = this.f8490d;
                int i6 = i5 + 1;
                this.f8492f = i6;
                bArr5[i5] = (byte) (j >> 32);
                byte[] bArr6 = this.f8490d;
                int i7 = i6 + 1;
                this.f8492f = i7;
                bArr6[i6] = (byte) (j >> 40);
                byte[] bArr7 = this.f8490d;
                int i8 = i7 + 1;
                this.f8492f = i8;
                bArr7[i7] = (byte) (j >> 48);
                byte[] bArr8 = this.f8490d;
                this.f8492f = i8 + 1;
                bArr8[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8492f), Integer.valueOf(this.f8491e), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: b */
        public final int mo12495b() {
            return this.f8491e - this.f8492f;
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: f0 */
        public final void mo12494f0(int i) throws IOException {
            try {
                byte[] bArr = this.f8490d;
                int i2 = this.f8492f;
                int i3 = i2 + 1;
                this.f8492f = i3;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.f8490d;
                int i4 = i3 + 1;
                this.f8492f = i4;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.f8490d;
                int i5 = i4 + 1;
                this.f8492f = i5;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.f8490d;
                this.f8492f = i5 + 1;
                bArr4[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8492f), Integer.valueOf(this.f8491e), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: g */
        public final void mo12493g(byte b) throws IOException {
            try {
                byte[] bArr = this.f8490d;
                int i = this.f8492f;
                this.f8492f = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8492f), Integer.valueOf(this.f8491e), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: j */
        public final void mo12492j(int i) throws IOException {
            if (i >= 0) {
                mo12503O(i);
            } else {
                mo12483t(i);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: k0 */
        public final void mo12491k0(int i, int i2) throws IOException {
            mo12490m(i, 5);
            mo12494f0(i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: m */
        public final void mo12490m(int i, int i2) throws IOException {
            mo12503O((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: n */
        public final void mo12489n(int i, long j) throws IOException {
            mo12490m(i, 0);
            mo12483t(j);
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: o */
        public final void mo12488o(int i, zzgr zzgrVar) throws IOException {
            mo12490m(i, 2);
            mo12482u(zzgrVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: p */
        public final void mo12487p(int i, zzjh zzjhVar) throws IOException {
            mo12490m(1, 3);
            mo12499Y(2, i);
            mo12490m(3, 2);
            mo12481v(zzjhVar);
            mo12490m(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: q */
        final void mo12486q(int i, zzjh zzjhVar, zzjz zzjzVar) throws IOException {
            mo12490m(i, 2);
            zzgh zzghVar = (zzgh) zzjhVar;
            int i2 = zzghVar.mo12434i();
            int i3 = i2;
            if (i2 == -1) {
                i3 = zzjzVar.mo12258e(zzghVar);
                zzghVar.mo12433j(i3);
            }
            mo12503O(i3);
            zzjzVar.mo12255h(zzjhVar, this.f8489a);
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: r */
        public final void mo12485r(int i, String str) throws IOException {
            mo12490m(i, 2);
            mo12480w(str);
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: s */
        public final void mo12484s(int i, boolean z) throws IOException {
            mo12490m(i, 0);
            mo12493g(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3, types: [long] */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: t */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo12483t(long r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzhg.zza.mo12483t(long):void");
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: u */
        public final void mo12482u(zzgr zzgrVar) throws IOException {
            mo12503O(zzgrVar.mo12617d());
            zzgrVar.mo12613p(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: v */
        public final void mo12481v(zzjh zzjhVar) throws IOException {
            mo12503O(zzjhVar.mo12331d());
            zzjhVar.mo12330f(this);
        }

        @Override // com.google.android.gms.internal.measurement.zzhg
        /* renamed from: w */
        public final void mo12480w(String str) throws IOException {
            int i = this.f8492f;
            try {
                int p0 = zzhg.m12518p0(str.length() * 3);
                int p02 = zzhg.m12518p0(str.length());
                if (p02 == p0) {
                    int i2 = i + p02;
                    this.f8492f = i2;
                    int e = zzla.m12042e(str, this.f8490d, i2, mo12495b());
                    this.f8492f = i;
                    mo12503O((e - i) - p02);
                    this.f8492f = e;
                    return;
                }
                mo12503O(zzla.m12043d(str));
                this.f8492f = zzla.m12042e(str, this.f8490d, this.f8492f, mo12495b());
            } catch (zzld e2) {
                this.f8492f = i;
                m12510x(str, e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new zzb(e3);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhg$zzb.class */
    public static final class zzb extends IOException {
        zzb() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        zzb(java.lang.String r5, java.lang.Throwable r6) {
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzhg.zzb.<init>(java.lang.String, java.lang.Throwable):void");
        }

        zzb(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    private zzhg() {
    }

    /* renamed from: A */
    public static int m12564A(float f) {
        return 4;
    }

    /* renamed from: A0 */
    public static int m12563A0(int i) {
        return 4;
    }

    /* renamed from: B */
    public static int m12562B(int i, double d) {
        return m12518p0(i << 3) + 8;
    }

    /* renamed from: B0 */
    public static int m12561B0(int i, int i2) {
        return m12518p0(i << 3) + 4;
    }

    /* renamed from: C */
    public static int m12560C(int i, float f) {
        return m12518p0(i << 3) + 4;
    }

    /* renamed from: C0 */
    public static int m12559C0(int i) {
        return m12522l0(i);
    }

    /* renamed from: D */
    public static int m12558D(int i, zziq zziqVar) {
        return (m12518p0(8) << 1) + m12517q0(2, i) + m12537c(3, zziqVar);
    }

    /* renamed from: D0 */
    public static int m12557D0(int i, int i2) {
        return m12518p0(i << 3) + m12522l0(i2);
    }

    /* renamed from: E */
    public static int m12556E(int i, zzjh zzjhVar) {
        return (m12518p0(8) << 1) + m12517q0(2, i) + m12518p0(24) + m12549J(zzjhVar);
    }

    @Deprecated
    /* renamed from: E0 */
    public static int m12555E0(int i) {
        return m12518p0(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: F */
    public static int m12554F(int i, zzjh zzjhVar, zzjz zzjzVar) {
        return m12518p0(i << 3) + m12533e(zzjhVar, zzjzVar);
    }

    /* renamed from: F0 */
    private static int m12553F0(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* renamed from: G */
    public static int m12552G(int i, String str) {
        return m12518p0(i << 3) + m12548K(str);
    }

    /* renamed from: H */
    public static int m12551H(int i, boolean z) {
        return m12518p0(i << 3) + 1;
    }

    /* renamed from: I */
    public static int m12550I(zzgr zzgrVar) {
        int d = zzgrVar.mo12617d();
        return m12518p0(d) + d;
    }

    /* renamed from: J */
    public static int m12549J(zzjh zzjhVar) {
        int d = zzjhVar.mo12331d();
        return m12518p0(d) + d;
    }

    /* renamed from: K */
    public static int m12548K(String str) {
        int i;
        try {
            i = zzla.m12043d(str);
        } catch (zzld e) {
            i = str.getBytes(zzic.f8533a).length;
        }
        return m12518p0(i) + i;
    }

    /* renamed from: L */
    public static int m12547L(boolean z) {
        return 1;
    }

    /* renamed from: M */
    public static int m12546M(byte[] bArr) {
        int length = bArr.length;
        return m12518p0(length) + length;
    }

    /* renamed from: U */
    public static int m12542U(int i, zzgr zzgrVar) {
        int p0 = m12518p0(i << 3);
        int d = zzgrVar.mo12617d();
        return p0 + m12518p0(d) + d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    /* renamed from: V */
    public static int m12541V(int i, zzjh zzjhVar, zzjz zzjzVar) {
        int p0 = m12518p0(i << 3);
        zzgh zzghVar = (zzgh) zzjhVar;
        int i2 = zzghVar.mo12434i();
        int i3 = i2;
        if (i2 == -1) {
            i3 = zzjzVar.mo12258e(zzghVar);
            zzghVar.mo12433j(i3);
        }
        return (p0 << 1) + i3;
    }

    @Deprecated
    /* renamed from: W */
    public static int m12540W(zzjh zzjhVar) {
        return zzjhVar.mo12331d();
    }

    /* renamed from: c */
    public static int m12537c(int i, zziq zziqVar) {
        int p0 = m12518p0(i << 3);
        int b = zziqVar.m12373b();
        return p0 + m12518p0(b) + b;
    }

    /* renamed from: c0 */
    public static int m12536c0(int i, long j) {
        return m12518p0(i << 3) + m12525j0(j);
    }

    /* renamed from: d */
    public static int m12535d(zziq zziqVar) {
        int b = zziqVar.m12373b();
        return m12518p0(b) + b;
    }

    /* renamed from: d0 */
    public static int m12534d0(int i, zzgr zzgrVar) {
        return (m12518p0(8) << 1) + m12517q0(2, i) + m12542U(3, zzgrVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static int m12533e(zzjh zzjhVar, zzjz zzjzVar) {
        zzgh zzghVar = (zzgh) zzjhVar;
        int i = zzghVar.mo12434i();
        int i2 = i;
        if (i == -1) {
            i2 = zzjzVar.mo12258e(zzghVar);
            zzghVar.mo12433j(i2);
        }
        return m12518p0(i2) + i2;
    }

    /* renamed from: e0 */
    public static int m12532e0(long j) {
        return m12525j0(j);
    }

    /* renamed from: f */
    public static zzhg m12531f(byte[] bArr) {
        return new zza(bArr, 0, bArr.length);
    }

    /* renamed from: h0 */
    public static int m12528h0(int i) {
        return m12518p0(i << 3);
    }

    /* renamed from: i0 */
    public static int m12526i0(int i, long j) {
        return m12518p0(i << 3) + m12525j0(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: j0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m12525j0(long r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzhg.m12525j0(long):int");
    }

    /* renamed from: l0 */
    public static int m12522l0(int i) {
        if (i >= 0) {
            return m12518p0(i);
        }
        return 10;
    }

    /* renamed from: m0 */
    public static int m12521m0(int i, int i2) {
        return m12518p0(i << 3) + m12522l0(i2);
    }

    /* renamed from: n0 */
    public static int m12520n0(int i, long j) {
        return m12518p0(i << 3) + m12525j0(m12505z0(j));
    }

    /* renamed from: o0 */
    public static int m12519o0(long j) {
        return m12525j0(m12505z0(j));
    }

    /* renamed from: p0 */
    public static int m12518p0(int i) {
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

    /* renamed from: q0 */
    public static int m12517q0(int i, int i2) {
        return m12518p0(i << 3) + m12518p0(i2);
    }

    /* renamed from: r0 */
    public static int m12516r0(int i, long j) {
        return m12518p0(i << 3) + 8;
    }

    /* renamed from: s0 */
    public static int m12515s0(long j) {
        return 8;
    }

    /* renamed from: t0 */
    public static int m12514t0(int i) {
        return m12518p0(m12553F0(i));
    }

    /* renamed from: u0 */
    public static int m12513u0(int i, int i2) {
        return m12518p0(i << 3) + m12518p0(m12553F0(i2));
    }

    /* renamed from: v0 */
    public static int m12512v0(int i, long j) {
        return m12518p0(i << 3) + 8;
    }

    /* renamed from: w0 */
    public static int m12511w0(long j) {
        return 8;
    }

    /* renamed from: x0 */
    public static int m12509x0(int i) {
        return 4;
    }

    /* renamed from: y0 */
    public static int m12507y0(int i, int i2) {
        return m12518p0(i << 3) + 4;
    }

    /* renamed from: z */
    public static int m12506z(double d) {
        return 8;
    }

    /* renamed from: z0 */
    private static long m12505z0(long j) {
        return (j >> 63) ^ (j << 1);
    }

    /* renamed from: N */
    public final void m12545N() {
        if (mo12495b() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* renamed from: O */
    public abstract void mo12503O(int i) throws IOException;

    /* renamed from: P */
    public abstract void mo12502P(int i, int i2) throws IOException;

    /* renamed from: Q */
    public final void m12544Q(int i, long j) throws IOException {
        mo12489n(i, m12505z0(j));
    }

    /* renamed from: R */
    public abstract void mo12501R(int i, zzgr zzgrVar) throws IOException;

    /* renamed from: S */
    public final void m12543S(long j) throws IOException {
        mo12483t(m12505z0(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: T */
    public abstract void mo12500T(byte[] bArr, int i, int i2) throws IOException;

    /* renamed from: X */
    public final void m12539X(int i) throws IOException {
        mo12503O(m12553F0(i));
    }

    /* renamed from: Y */
    public abstract void mo12499Y(int i, int i2) throws IOException;

    /* renamed from: Z */
    public abstract void mo12498Z(int i, long j) throws IOException;

    /* renamed from: a0 */
    public abstract void mo12496a0(long j) throws IOException;

    /* renamed from: b */
    public abstract int mo12495b();

    /* renamed from: f0 */
    public abstract void mo12494f0(int i) throws IOException;

    /* renamed from: g */
    public abstract void mo12493g(byte b) throws IOException;

    /* renamed from: g0 */
    public final void m12530g0(int i, int i2) throws IOException {
        mo12499Y(i, m12553F0(i2));
    }

    /* renamed from: h */
    public final void m12529h(double d) throws IOException {
        mo12496a0(Double.doubleToRawLongBits(d));
    }

    /* renamed from: i */
    public final void m12527i(float f) throws IOException {
        mo12494f0(Float.floatToRawIntBits(f));
    }

    /* renamed from: j */
    public abstract void mo12492j(int i) throws IOException;

    /* renamed from: k */
    public final void m12524k(int i, double d) throws IOException {
        mo12498Z(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: k0 */
    public abstract void mo12491k0(int i, int i2) throws IOException;

    /* renamed from: l */
    public final void m12523l(int i, float f) throws IOException {
        mo12491k0(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: m */
    public abstract void mo12490m(int i, int i2) throws IOException;

    /* renamed from: n */
    public abstract void mo12489n(int i, long j) throws IOException;

    /* renamed from: o */
    public abstract void mo12488o(int i, zzgr zzgrVar) throws IOException;

    /* renamed from: p */
    public abstract void mo12487p(int i, zzjh zzjhVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public abstract void mo12486q(int i, zzjh zzjhVar, zzjz zzjzVar) throws IOException;

    /* renamed from: r */
    public abstract void mo12485r(int i, String str) throws IOException;

    /* renamed from: s */
    public abstract void mo12484s(int i, boolean z) throws IOException;

    /* renamed from: t */
    public abstract void mo12483t(long j) throws IOException;

    /* renamed from: u */
    public abstract void mo12482u(zzgr zzgrVar) throws IOException;

    /* renamed from: v */
    public abstract void mo12481v(zzjh zzjhVar) throws IOException;

    /* renamed from: w */
    public abstract void mo12480w(String str) throws IOException;

    /* renamed from: x */
    final void m12510x(String str, zzld zzldVar) throws IOException {
        f8487b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzldVar);
        byte[] bytes = str.getBytes(zzic.f8533a);
        try {
            mo12503O(bytes.length);
            mo12497a(bytes, 0, bytes.length);
        } catch (zzb e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzb(e2);
        }
    }

    /* renamed from: y */
    public final void m12508y(boolean z) throws IOException {
        mo12493g(z ? (byte) 1 : (byte) 0);
    }
}
