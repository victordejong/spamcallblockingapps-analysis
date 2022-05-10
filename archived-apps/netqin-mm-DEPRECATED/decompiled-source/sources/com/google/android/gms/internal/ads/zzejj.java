package com.google.android.gms.internal.ads;

import com.google.protobuf.CodedOutputStream;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p170b.p224d.p252g.p253a.ba0;
import p131c.p161d.p170b.p224d.p252g.p253a.ea0;
import p131c.p161d.p170b.p224d.p252g.p253a.f90;
import p131c.p161d.p170b.p224d.p252g.p253a.ka0;
import p131c.p161d.p170b.p224d.p252g.p253a.m70;
import p131c.p161d.p170b.p224d.p252g.p253a.s60;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejj.class */
public abstract class zzejj extends zzeim {

    /* renamed from: b */
    public static final Logger f28058b = Logger.getLogger(zzejj.class.getName());

    /* renamed from: c */
    public static final boolean f28059c = ba0.m27176a();

    /* renamed from: a */
    public m70 f28060a;

    /* renamed from: com.google.android.gms.internal.ads.zzejj$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejj$a.class */
    public static final class C7262a extends zzejj {

        /* renamed from: d */
        public final byte[] f28061d;

        /* renamed from: e */
        public final int f28062e;

        /* renamed from: f */
        public int f28063f;

        public C7262a(byte[] bArr, int i, int i2) {
            super();
            if (bArr != null) {
                int i3 = i2 + 0;
                if ((i2 | 0 | (bArr.length - i3)) >= 0) {
                    this.f28061d = bArr;
                    this.f28063f = 0;
                    this.f28062e = i3;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)));
            }
            throw new NullPointerException("buffer");
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: a */
        public final int mo12444a() {
            return this.f28062e - this.f28063f;
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: a */
        public final void mo12443a(byte b) throws IOException {
            try {
                byte[] bArr = this.f28061d;
                int i = this.f28063f;
                this.f28063f = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f28063f), Integer.valueOf(this.f28062e), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: a */
        public final void mo12442a(int i) throws IOException {
            if (i >= 0) {
                mo12429b(i);
            } else {
                mo12434a(i);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: a */
        public final void mo12441a(int i, int i2) throws IOException {
            mo12429b((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: a */
        public final void mo12440a(int i, long j) throws IOException {
            mo12441a(i, 0);
            mo12434a(j);
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: a */
        public final void mo12439a(int i, zzeip zzeipVar) throws IOException {
            mo12441a(i, 2);
            mo12433a(zzeipVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: a */
        public final void mo12438a(int i, zzelj zzeljVar) throws IOException {
            mo12441a(1, 3);
            mo12425c(2, i);
            mo12441a(3, 2);
            mo12432a(zzeljVar);
            mo12441a(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: a */
        public final void mo12437a(int i, zzelj zzeljVar, f90 f90Var) throws IOException {
            mo12441a(i, 2);
            zzeif zzeifVar = (zzeif) zzeljVar;
            int a = zzeifVar.mo12415a();
            int i2 = a;
            if (a == -1) {
                i2 = f90Var.mo26416d(zzeifVar);
                zzeifVar.mo12414a(i2);
            }
            mo12429b(i2);
            f90Var.mo26423a((f90) zzeljVar, (ka0) this.f28060a);
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: a */
        public final void mo12436a(int i, String str) throws IOException {
            mo12441a(i, 2);
            mo12431a(str);
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: a */
        public final void mo12435a(int i, boolean z) throws IOException {
            mo12441a(i, 0);
            mo12443a(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3, types: [long] */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo12434a(long r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 249
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzejj.C7262a.mo12434a(long):void");
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: a */
        public final void mo12433a(zzeip zzeipVar) throws IOException {
            mo12429b(zzeipVar.size());
            zzeipVar.zza(this);
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: a */
        public final void mo12432a(zzelj zzeljVar) throws IOException {
            mo12429b(zzeljVar.mo12345k());
            zzeljVar.mo12350a(this);
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: a */
        public final void mo12431a(String str) throws IOException {
            int i = this.f28063f;
            try {
                int g = zzejj.m12461g(str.length() * 3);
                int g2 = zzejj.m12461g(str.length());
                if (g2 == g) {
                    int i2 = i + g2;
                    this.f28063f = i2;
                    int a = ea0.m27042a(str, this.f28061d, i2, mo12444a());
                    this.f28063f = i;
                    mo12429b((a - i) - g2);
                    this.f28063f = a;
                    return;
                }
                mo12429b(ea0.m27043a(str));
                this.f28063f = ea0.m27042a(str, this.f28061d, this.f28063f, mo12444a());
            } catch (zzenj e) {
                this.f28063f = i;
                m12497a(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zza(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzeim
        /* renamed from: a */
        public final void mo12430a(byte[] bArr, int i, int i2) throws IOException {
            m12422c(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: b */
        public final void mo12429b(int i) throws IOException {
            int i2 = i;
            if (zzejj.f28059c) {
                i2 = i;
                if (!s60.m26394a()) {
                    i2 = i;
                    if (mo12444a() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.f28061d;
                            int i3 = this.f28063f;
                            this.f28063f = i3 + 1;
                            ba0.m27164a(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.f28061d;
                        int i4 = this.f28063f;
                        this.f28063f = i4 + 1;
                        ba0.m27164a(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.f28061d;
                            int i6 = this.f28063f;
                            this.f28063f = i6 + 1;
                            ba0.m27164a(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.f28061d;
                        int i7 = this.f28063f;
                        this.f28063f = i7 + 1;
                        ba0.m27164a(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.f28061d;
                            int i9 = this.f28063f;
                            this.f28063f = i9 + 1;
                            ba0.m27164a(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.f28061d;
                        int i10 = this.f28063f;
                        this.f28063f = i10 + 1;
                        ba0.m27164a(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.f28061d;
                            int i12 = this.f28063f;
                            this.f28063f = i12 + 1;
                            ba0.m27164a(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.f28061d;
                        int i13 = this.f28063f;
                        this.f28063f = i13 + 1;
                        ba0.m27164a(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.f28061d;
                        int i14 = this.f28063f;
                        this.f28063f = i14 + 1;
                        ba0.m27164a(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f28061d;
                    int i15 = this.f28063f;
                    this.f28063f = i15 + 1;
                    bArr10[i15] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f28063f), Integer.valueOf(this.f28062e), 1), e);
                }
            }
            byte[] bArr11 = this.f28061d;
            int i16 = this.f28063f;
            this.f28063f = i16 + 1;
            bArr11[i16] = (byte) i2;
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: b */
        public final void mo12428b(int i, int i2) throws IOException {
            mo12441a(i, 0);
            mo12442a(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: b */
        public final void mo12427b(int i, zzeip zzeipVar) throws IOException {
            mo12441a(1, 3);
            mo12425c(2, i);
            mo12439a(3, zzeipVar);
            mo12441a(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: b */
        public final void mo12426b(byte[] bArr, int i, int i2) throws IOException {
            mo12429b(i2);
            m12422c(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: c */
        public final void mo12425c(int i, int i2) throws IOException {
            mo12441a(i, 0);
            mo12429b(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: c */
        public final void mo12424c(int i, long j) throws IOException {
            mo12441a(i, 1);
            mo12423c(j);
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: c */
        public final void mo12423c(long j) throws IOException {
            try {
                byte[] bArr = this.f28061d;
                int i = this.f28063f;
                int i2 = i + 1;
                this.f28063f = i2;
                bArr[i] = (byte) j;
                byte[] bArr2 = this.f28061d;
                int i3 = i2 + 1;
                this.f28063f = i3;
                bArr2[i2] = (byte) (j >> 8);
                byte[] bArr3 = this.f28061d;
                int i4 = i3 + 1;
                this.f28063f = i4;
                bArr3[i3] = (byte) (j >> 16);
                byte[] bArr4 = this.f28061d;
                int i5 = i4 + 1;
                this.f28063f = i5;
                bArr4[i4] = (byte) (j >> 24);
                byte[] bArr5 = this.f28061d;
                int i6 = i5 + 1;
                this.f28063f = i6;
                bArr5[i5] = (byte) (j >> 32);
                byte[] bArr6 = this.f28061d;
                int i7 = i6 + 1;
                this.f28063f = i7;
                bArr6[i6] = (byte) (j >> 40);
                byte[] bArr7 = this.f28061d;
                int i8 = i7 + 1;
                this.f28063f = i8;
                bArr7[i7] = (byte) (j >> 48);
                byte[] bArr8 = this.f28061d;
                this.f28063f = i8 + 1;
                bArr8[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f28063f), Integer.valueOf(this.f28062e), 1), e);
            }
        }

        /* renamed from: c */
        public final void m12422c(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.f28061d, this.f28063f, i2);
                this.f28063f += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f28063f), Integer.valueOf(this.f28062e), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: d */
        public final void mo12421d(int i) throws IOException {
            try {
                byte[] bArr = this.f28061d;
                int i2 = this.f28063f;
                int i3 = i2 + 1;
                this.f28063f = i3;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.f28061d;
                int i4 = i3 + 1;
                this.f28063f = i4;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.f28061d;
                int i5 = i4 + 1;
                this.f28063f = i5;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.f28061d;
                this.f28063f = i5 + 1;
                bArr4[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f28063f), Integer.valueOf(this.f28062e), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzejj
        /* renamed from: e */
        public final void mo12420e(int i, int i2) throws IOException {
            mo12441a(i, 5);
            mo12421d(i2);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejj$zza.class */
    public static final class zza extends IOException {
        public zza() {
            super(CodedOutputStream.OutOfSpaceException.MESSAGE);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public zza(java.lang.String r5, java.lang.Throwable r6) {
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzejj.zza.<init>(java.lang.String, java.lang.Throwable):void");
        }

        public zza(Throwable th) {
            super(CodedOutputStream.OutOfSpaceException.MESSAGE, th);
        }
    }

    public zzejj() {
    }

    /* renamed from: a */
    public static int m12500a(int i, zzeks zzeksVar) {
        int e = m12468e(i);
        int b = zzeksVar.m12354b();
        return e + m12461g(b) + b;
    }

    /* renamed from: a */
    public static int m12499a(zzeks zzeksVar) {
        int b = zzeksVar.m12354b();
        return m12461g(b) + b;
    }

    /* renamed from: a */
    public static int m12498a(zzelj zzeljVar, f90 f90Var) {
        zzeif zzeifVar = (zzeif) zzeljVar;
        int a = zzeifVar.mo12415a();
        int i = a;
        if (a == -1) {
            i = f90Var.mo26416d(zzeifVar);
            zzeifVar.mo12414a(i);
        }
        return m12461g(i) + i;
    }

    /* renamed from: a */
    public static zzejj m12495a(byte[] bArr) {
        return new C7262a(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static int m12493b(double d) {
        return 8;
    }

    /* renamed from: b */
    public static int m12492b(float f) {
        return 4;
    }

    /* renamed from: b */
    public static int m12491b(int i, double d) {
        return m12468e(i) + 8;
    }

    /* renamed from: b */
    public static int m12490b(int i, float f) {
        return m12468e(i) + 4;
    }

    /* renamed from: b */
    public static int m12488b(int i, zzeks zzeksVar) {
        return (m12468e(1) << 1) + m12460g(2, i) + m12500a(3, zzeksVar);
    }

    /* renamed from: b */
    public static int m12487b(int i, zzelj zzeljVar) {
        return (m12468e(1) << 1) + m12460g(2, i) + m12468e(3) + m12481b(zzeljVar);
    }

    /* renamed from: b */
    public static int m12486b(int i, zzelj zzeljVar, f90 f90Var) {
        return m12468e(i) + m12498a(zzeljVar, f90Var);
    }

    /* renamed from: b */
    public static int m12485b(int i, String str) {
        return m12468e(i) + m12480b(str);
    }

    /* renamed from: b */
    public static int m12484b(int i, boolean z) {
        return m12468e(i) + 1;
    }

    /* renamed from: b */
    public static int m12482b(zzeip zzeipVar) {
        int size = zzeipVar.size();
        return m12461g(size) + size;
    }

    /* renamed from: b */
    public static int m12481b(zzelj zzeljVar) {
        int k = zzeljVar.mo12345k();
        return m12461g(k) + k;
    }

    /* renamed from: b */
    public static int m12480b(String str) {
        int i;
        try {
            i = ea0.m27043a(str);
        } catch (zzenj e) {
            i = str.getBytes(zzekb.f28088a).length;
        }
        return m12461g(i) + i;
    }

    /* renamed from: b */
    public static int m12479b(boolean z) {
        return 1;
    }

    /* renamed from: b */
    public static int m12478b(byte[] bArr) {
        int length = bArr.length;
        return m12461g(length) + length;
    }

    /* renamed from: c */
    public static int m12475c(int i, zzeip zzeipVar) {
        int e = m12468e(i);
        int size = zzeipVar.size();
        return e + m12461g(size) + size;
    }

    @Deprecated
    /* renamed from: c */
    public static int m12474c(int i, zzelj zzeljVar, f90 f90Var) {
        int e = m12468e(i);
        zzeif zzeifVar = (zzeif) zzeljVar;
        int a = zzeifVar.mo12415a();
        int i2 = a;
        if (a == -1) {
            i2 = f90Var.mo26416d(zzeifVar);
            zzeifVar.mo12414a(i2);
        }
        return (e << 1) + i2;
    }

    @Deprecated
    /* renamed from: c */
    public static int m12473c(zzelj zzeljVar) {
        return zzeljVar.mo12345k();
    }

    /* renamed from: d */
    public static int m12471d(int i, long j) {
        return m12468e(i) + m12466e(j);
    }

    /* renamed from: d */
    public static int m12470d(int i, zzeip zzeipVar) {
        return (m12468e(1) << 1) + m12460g(2, i) + m12475c(3, zzeipVar);
    }

    /* renamed from: d */
    public static int m12469d(long j) {
        return m12466e(j);
    }

    /* renamed from: e */
    public static int m12468e(int i) {
        return m12461g(i << 3);
    }

    /* renamed from: e */
    public static int m12467e(int i, long j) {
        return m12468e(i) + m12466e(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m12466e(long r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzejj.m12466e(long):int");
    }

    /* renamed from: f */
    public static int m12465f(int i) {
        if (i >= 0) {
            return m12461g(i);
        }
        return 10;
    }

    /* renamed from: f */
    public static int m12464f(int i, int i2) {
        return m12468e(i) + m12465f(i2);
    }

    /* renamed from: f */
    public static int m12463f(int i, long j) {
        return m12468e(i) + m12466e(m12451i(j));
    }

    /* renamed from: f */
    public static int m12462f(long j) {
        return m12466e(m12451i(j));
    }

    /* renamed from: g */
    public static int m12461g(int i) {
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

    /* renamed from: g */
    public static int m12460g(int i, int i2) {
        return m12468e(i) + m12461g(i2);
    }

    /* renamed from: g */
    public static int m12459g(int i, long j) {
        return m12468e(i) + 8;
    }

    /* renamed from: g */
    public static int m12458g(long j) {
        return 8;
    }

    /* renamed from: h */
    public static int m12457h(int i) {
        return m12461g(m12446l(i));
    }

    /* renamed from: h */
    public static int m12456h(int i, int i2) {
        return m12468e(i) + m12461g(m12446l(i2));
    }

    /* renamed from: h */
    public static int m12455h(int i, long j) {
        return m12468e(i) + 8;
    }

    /* renamed from: h */
    public static int m12454h(long j) {
        return 8;
    }

    /* renamed from: i */
    public static int m12453i(int i) {
        return 4;
    }

    /* renamed from: i */
    public static int m12452i(int i, int i2) {
        return m12468e(i) + 4;
    }

    /* renamed from: i */
    public static long m12451i(long j) {
        return (j >> 63) ^ (j << 1);
    }

    /* renamed from: j */
    public static int m12450j(int i) {
        return 4;
    }

    /* renamed from: j */
    public static int m12449j(int i, int i2) {
        return m12468e(i) + 4;
    }

    /* renamed from: k */
    public static int m12448k(int i) {
        return m12465f(i);
    }

    /* renamed from: k */
    public static int m12447k(int i, int i2) {
        return m12468e(i) + m12465f(i2);
    }

    /* renamed from: l */
    public static int m12446l(int i) {
        return (i >> 31) ^ (i << 1);
    }

    @Deprecated
    /* renamed from: m */
    public static int m12445m(int i) {
        return m12461g(i);
    }

    /* renamed from: a */
    public abstract int mo12444a();

    /* renamed from: a */
    public abstract void mo12443a(byte b) throws IOException;

    /* renamed from: a */
    public final void m12504a(double d) throws IOException {
        mo12423c(Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m12503a(float f) throws IOException {
        mo12421d(Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo12442a(int i) throws IOException;

    /* renamed from: a */
    public final void m12502a(int i, double d) throws IOException {
        mo12424c(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m12501a(int i, float f) throws IOException {
        mo12420e(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo12441a(int i, int i2) throws IOException;

    /* renamed from: a */
    public abstract void mo12440a(int i, long j) throws IOException;

    /* renamed from: a */
    public abstract void mo12439a(int i, zzeip zzeipVar) throws IOException;

    /* renamed from: a */
    public abstract void mo12438a(int i, zzelj zzeljVar) throws IOException;

    /* renamed from: a */
    public abstract void mo12437a(int i, zzelj zzeljVar, f90 f90Var) throws IOException;

    /* renamed from: a */
    public abstract void mo12436a(int i, String str) throws IOException;

    /* renamed from: a */
    public abstract void mo12435a(int i, boolean z) throws IOException;

    /* renamed from: a */
    public abstract void mo12434a(long j) throws IOException;

    /* renamed from: a */
    public abstract void mo12433a(zzeip zzeipVar) throws IOException;

    /* renamed from: a */
    public abstract void mo12432a(zzelj zzeljVar) throws IOException;

    /* renamed from: a */
    public abstract void mo12431a(String str) throws IOException;

    /* renamed from: a */
    public final void m12497a(String str, zzenj zzenjVar) throws IOException {
        f28058b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzenjVar);
        byte[] bytes = str.getBytes(zzekb.f28088a);
        try {
            mo12429b(bytes.length);
            mo12430a(bytes, 0, bytes.length);
        } catch (zza e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zza(e2);
        }
    }

    /* renamed from: a */
    public final void m12496a(boolean z) throws IOException {
        mo12443a(z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: b */
    public final void m12494b() {
        if (mo12444a() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* renamed from: b */
    public abstract void mo12429b(int i) throws IOException;

    /* renamed from: b */
    public abstract void mo12428b(int i, int i2) throws IOException;

    /* renamed from: b */
    public final void m12489b(int i, long j) throws IOException {
        mo12440a(i, m12451i(j));
    }

    /* renamed from: b */
    public abstract void mo12427b(int i, zzeip zzeipVar) throws IOException;

    /* renamed from: b */
    public final void m12483b(long j) throws IOException {
        mo12434a(m12451i(j));
    }

    /* renamed from: b */
    public abstract void mo12426b(byte[] bArr, int i, int i2) throws IOException;

    /* renamed from: c */
    public final void m12476c(int i) throws IOException {
        mo12429b(m12446l(i));
    }

    /* renamed from: c */
    public abstract void mo12425c(int i, int i2) throws IOException;

    /* renamed from: c */
    public abstract void mo12424c(int i, long j) throws IOException;

    /* renamed from: c */
    public abstract void mo12423c(long j) throws IOException;

    /* renamed from: d */
    public abstract void mo12421d(int i) throws IOException;

    /* renamed from: d */
    public final void m12472d(int i, int i2) throws IOException {
        mo12425c(i, m12446l(i2));
    }

    /* renamed from: e */
    public abstract void mo12420e(int i, int i2) throws IOException;
}
