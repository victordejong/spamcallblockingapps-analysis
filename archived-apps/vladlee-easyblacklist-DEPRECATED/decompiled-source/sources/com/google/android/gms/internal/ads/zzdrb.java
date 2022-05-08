package com.google.android.gms.internal.ads;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrb.class */
public abstract class zzdrb extends zzdqh {

    /* renamed from: b */
    private static final Logger f14471b = Logger.getLogger(zzdrb.class.getName());

    /* renamed from: c */
    private static final boolean f14472c = akj.m5071a();

    /* renamed from: a */
    ahv f14473a;

    /* renamed from: com.google.android.gms.internal.ads.zzdrb$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrb$a.class */
    static class C2445a extends zzdrb {

        /* renamed from: b */
        private final byte[] f14474b;

        /* renamed from: c */
        private final int f14475c;

        /* renamed from: d */
        private final int f14476d;

        /* renamed from: e */
        private int f14477e;

        C2445a(byte[] bArr, int i, int i2) {
            super((byte) 0);
            if (bArr != null) {
                int i3 = i + i2;
                if ((i | i2 | (bArr.length - i3)) >= 0) {
                    this.f14474b = bArr;
                    this.f14475c = i;
                    this.f14477e = i;
                    this.f14476d = i3;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            throw new NullPointerException("buffer");
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        /* renamed from: a */
        final void mo3382a(int i, zzdte zzdteVar, ajo ajoVar) {
            zzaa(i, 2);
            zzdqa zzdqaVar = (zzdqa) zzdteVar;
            int b = zzdqaVar.mo3362b();
            int i2 = b;
            if (b == -1) {
                i2 = ajoVar.mo5178b(zzdqaVar);
                zzdqaVar.mo3377a(i2);
            }
            zzfw(i2);
            ajoVar.mo5181a((ajo) zzdteVar, (aku) this.f14473a);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        /* renamed from: a */
        final void mo3381a(zzdte zzdteVar, ajo ajoVar) {
            zzdqa zzdqaVar = (zzdqa) zzdteVar;
            int b = zzdqaVar.mo3362b();
            int i = b;
            if (b == -1) {
                i = ajoVar.mo5178b(zzdqaVar);
                zzdqaVar.mo3377a(i);
            }
            zzfw(i);
            ajoVar.mo5181a((ajo) zzdteVar, (aku) this.f14473a);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        /* renamed from: a */
        public final void mo3379a(byte[] bArr, int i) {
            zzfw(i);
            write(bArr, 0, i);
        }

        /* renamed from: b */
        public final int m3384b() {
            return this.f14477e - this.f14475c;
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public void flush() {
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void write(byte[] bArr, int i, int i2) {
            try {
                System.arraycopy(bArr, i, this.f14474b, this.f14477e, i2);
                this.f14477e += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f14477e), Integer.valueOf(this.f14476d), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zza(int i, zzdqk zzdqkVar) {
            zzaa(i, 2);
            zzbe(zzdqkVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zza(int i, zzdte zzdteVar) {
            zzaa(i, 2);
            zzg(zzdteVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzaa(int i, int i2) {
            zzfw((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzab(int i, int i2) {
            zzaa(i, 0);
            zzfv(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzac(int i, int i2) {
            zzaa(i, 0);
            zzfw(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzae(int i, int i2) {
            zzaa(i, 5);
            zzfy(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final int zzazc() {
            return this.f14476d - this.f14477e;
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzb(int i, zzdqk zzdqkVar) {
            zzaa(1, 3);
            zzac(2, i);
            zza(3, zzdqkVar);
            zzaa(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzb(int i, zzdte zzdteVar) {
            zzaa(1, 3);
            zzac(2, i);
            zza(3, zzdteVar);
            zzaa(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzbe(zzdqk zzdqkVar) {
            zzfw(zzdqkVar.size());
            zzdqkVar.mo3404a(this);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzd(byte b) {
            try {
                byte[] bArr = this.f14474b;
                int i = this.f14477e;
                this.f14477e = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f14477e), Integer.valueOf(this.f14476d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzf(int i, String str) {
            zzaa(i, 2);
            zzhg(str);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3, types: [long] */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.ads.zzdrb
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void zzfg(long r9) {
            /*
                Method dump skipped, instructions count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdrb.C2445a.zzfg(long):void");
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzfi(long j) {
            try {
                byte[] bArr = this.f14474b;
                int i = this.f14477e;
                this.f14477e = i + 1;
                bArr[i] = (byte) j;
                byte[] bArr2 = this.f14474b;
                int i2 = this.f14477e;
                this.f14477e = i2 + 1;
                bArr2[i2] = (byte) (j >> 8);
                byte[] bArr3 = this.f14474b;
                int i3 = this.f14477e;
                this.f14477e = i3 + 1;
                bArr3[i3] = (byte) (j >> 16);
                byte[] bArr4 = this.f14474b;
                int i4 = this.f14477e;
                this.f14477e = i4 + 1;
                bArr4[i4] = (byte) (j >> 24);
                byte[] bArr5 = this.f14474b;
                int i5 = this.f14477e;
                this.f14477e = i5 + 1;
                bArr5[i5] = (byte) (j >> 32);
                byte[] bArr6 = this.f14474b;
                int i6 = this.f14477e;
                this.f14477e = i6 + 1;
                bArr6[i6] = (byte) (j >> 40);
                byte[] bArr7 = this.f14474b;
                int i7 = this.f14477e;
                this.f14477e = i7 + 1;
                bArr7[i7] = (byte) (j >> 48);
                byte[] bArr8 = this.f14474b;
                int i8 = this.f14477e;
                this.f14477e = i8 + 1;
                bArr8[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f14477e), Integer.valueOf(this.f14476d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzfv(int i) {
            if (i >= 0) {
                zzfw(i);
            } else {
                zzfg(i);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzfw(int i) {
            int i2 = i;
            if (zzdrb.f14472c) {
                i2 = i;
                if (!aha.m5427a()) {
                    i2 = i;
                    if (zzazc() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.f14474b;
                            int i3 = this.f14477e;
                            this.f14477e = i3 + 1;
                            akj.m5057a(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.f14474b;
                        int i4 = this.f14477e;
                        this.f14477e = i4 + 1;
                        akj.m5057a(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.f14474b;
                            int i6 = this.f14477e;
                            this.f14477e = i6 + 1;
                            akj.m5057a(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.f14474b;
                        int i7 = this.f14477e;
                        this.f14477e = i7 + 1;
                        akj.m5057a(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.f14474b;
                            int i9 = this.f14477e;
                            this.f14477e = i9 + 1;
                            akj.m5057a(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.f14474b;
                        int i10 = this.f14477e;
                        this.f14477e = i10 + 1;
                        akj.m5057a(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.f14474b;
                            int i12 = this.f14477e;
                            this.f14477e = i12 + 1;
                            akj.m5057a(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.f14474b;
                        int i13 = this.f14477e;
                        this.f14477e = i13 + 1;
                        akj.m5057a(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.f14474b;
                        int i14 = this.f14477e;
                        this.f14477e = i14 + 1;
                        akj.m5057a(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f14474b;
                    int i15 = this.f14477e;
                    this.f14477e = i15 + 1;
                    bArr10[i15] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f14477e), Integer.valueOf(this.f14476d), 1), e);
                }
            }
            byte[] bArr11 = this.f14474b;
            int i16 = this.f14477e;
            this.f14477e = i16 + 1;
            bArr11[i16] = (byte) i2;
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzfy(int i) {
            try {
                byte[] bArr = this.f14474b;
                int i2 = this.f14477e;
                this.f14477e = i2 + 1;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.f14474b;
                int i3 = this.f14477e;
                this.f14477e = i3 + 1;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.f14474b;
                int i4 = this.f14477e;
                this.f14477e = i4 + 1;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.f14474b;
                int i5 = this.f14477e;
                this.f14477e = i5 + 1;
                bArr4[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f14477e), Integer.valueOf(this.f14476d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzg(int i, long j) {
            zzaa(i, 0);
            zzfg(j);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzg(zzdte zzdteVar) {
            zzfw(zzdteVar.zzazu());
            zzdteVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzh(int i, boolean z) {
            zzaa(i, 0);
            zzd(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.ads.zzdqh
        public final void zzh(byte[] bArr, int i, int i2) {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzhg(String str) {
            int i = this.f14477e;
            try {
                int zzgb = zzgb(str.length() * 3);
                int zzgb2 = zzgb(str.length());
                if (zzgb2 == zzgb) {
                    this.f14477e = i + zzgb2;
                    int a = akl.m5005a(str, this.f14474b, this.f14477e, zzazc());
                    this.f14477e = i;
                    zzfw((a - i) - zzgb2);
                    this.f14477e = a;
                    return;
                }
                zzfw(akl.m5007a(str));
                this.f14477e = akl.m5005a(str, this.f14474b, this.f14477e, zzazc());
            } catch (akp e) {
                this.f14477e = i;
                m3388a(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzb(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzi(int i, long j) {
            zzaa(i, 1);
            zzfi(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.zzdrb$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrb$b.class */
    public static final class C2446b extends C2445a {

        /* renamed from: b */
        private final ByteBuffer f14478b;

        /* renamed from: c */
        private int f14479c;

        C2446b(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.f14478b = byteBuffer;
            this.f14479c = byteBuffer.position();
        }

        @Override // com.google.android.gms.internal.ads.zzdrb.C2445a, com.google.android.gms.internal.ads.zzdrb
        public final void flush() {
            this.f14478b.position(this.f14479c + m3384b());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.zzdrb$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrb$c.class */
    public static final class C2447c extends zzdrb {

        /* renamed from: b */
        private final ByteBuffer f14480b;

        /* renamed from: c */
        private final ByteBuffer f14481c;

        /* renamed from: d */
        private final long f14482d;

        /* renamed from: e */
        private final long f14483e;

        /* renamed from: f */
        private final long f14484f;

        /* renamed from: g */
        private final long f14485g;

        /* renamed from: h */
        private long f14486h;

        C2447c(ByteBuffer byteBuffer) {
            super((byte) 0);
            this.f14480b = byteBuffer;
            this.f14481c = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.f14482d = akj.m5059a(byteBuffer);
            this.f14483e = this.f14482d + byteBuffer.position();
            this.f14484f = this.f14482d + byteBuffer.limit();
            this.f14485g = this.f14484f - 10;
            this.f14486h = this.f14483e;
        }

        /* renamed from: a */
        private final void m3383a(long j) {
            this.f14481c.position((int) (j - this.f14482d));
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        /* renamed from: a */
        final void mo3382a(int i, zzdte zzdteVar, ajo ajoVar) {
            zzaa(i, 2);
            mo3381a(zzdteVar, ajoVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        /* renamed from: a */
        final void mo3381a(zzdte zzdteVar, ajo ajoVar) {
            zzdqa zzdqaVar = (zzdqa) zzdteVar;
            int b = zzdqaVar.mo3362b();
            int i = b;
            if (b == -1) {
                i = ajoVar.mo5178b(zzdqaVar);
                zzdqaVar.mo3377a(i);
            }
            zzfw(i);
            ajoVar.mo5181a((ajo) zzdteVar, (aku) this.f14473a);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        /* renamed from: a */
        public final void mo3379a(byte[] bArr, int i) {
            zzfw(i);
            write(bArr, 0, i);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void flush() {
            this.f14480b.position((int) (this.f14486h - this.f14482d));
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void write(byte[] bArr, int i, int i2) {
            if (bArr != null && i >= 0 && i2 >= 0 && bArr.length - i2 >= i) {
                long j = this.f14484f;
                long j2 = i2;
                long j3 = this.f14486h;
                if (j - j2 >= j3) {
                    akj.m5056a(bArr, i, j3, j2);
                    this.f14486h += j2;
                    return;
                }
            }
            if (bArr == null) {
                throw new NullPointerException(AppMeasurementSdk.ConditionalUserProperty.VALUE);
            }
            throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f14486h), Long.valueOf(this.f14484f), Integer.valueOf(i2)));
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zza(int i, zzdqk zzdqkVar) {
            zzaa(i, 2);
            zzbe(zzdqkVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zza(int i, zzdte zzdteVar) {
            zzaa(i, 2);
            zzg(zzdteVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzaa(int i, int i2) {
            zzfw((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzab(int i, int i2) {
            zzaa(i, 0);
            zzfv(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzac(int i, int i2) {
            zzaa(i, 0);
            zzfw(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzae(int i, int i2) {
            zzaa(i, 5);
            zzfy(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final int zzazc() {
            return (int) (this.f14484f - this.f14486h);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzb(int i, zzdqk zzdqkVar) {
            zzaa(1, 3);
            zzac(2, i);
            zza(3, zzdqkVar);
            zzaa(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzb(int i, zzdte zzdteVar) {
            zzaa(1, 3);
            zzac(2, i);
            zza(3, zzdteVar);
            zzaa(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzbe(zzdqk zzdqkVar) {
            zzfw(zzdqkVar.size());
            zzdqkVar.mo3404a(this);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzd(byte b) {
            long j = this.f14486h;
            if (j < this.f14484f) {
                this.f14486h = 1 + j;
                akj.m5070a(j, b);
                return;
            }
            throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j), Long.valueOf(this.f14484f), 1));
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzf(int i, String str) {
            zzaa(i, 2);
            zzhg(str);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v0, types: [long] */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.ads.zzdrb
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void zzfg(long r10) {
            /*
                Method dump skipped, instructions count: 187
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdrb.C2447c.zzfg(long):void");
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzfi(long j) {
            this.f14481c.putLong((int) (this.f14486h - this.f14482d), j);
            this.f14486h += 8;
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzfv(int i) {
            if (i >= 0) {
                zzfw(i);
            } else {
                zzfg(i);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzfw(int i) {
            long j;
            int i2 = i;
            if (this.f14486h <= this.f14485g) {
                while (true) {
                    j = this.f14486h;
                    if ((i & (-128)) == 0) {
                        break;
                    }
                    this.f14486h = j + 1;
                    akj.m5070a(j, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
            } else {
                while (true) {
                    j = this.f14486h;
                    if (j >= this.f14484f) {
                        throw new zzb(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j), Long.valueOf(this.f14484f), 1));
                    } else if ((i2 & (-128)) == 0) {
                        i = i2;
                        break;
                    } else {
                        this.f14486h = j + 1;
                        akj.m5070a(j, (byte) ((i2 & 127) | 128));
                        i2 >>>= 7;
                    }
                }
            }
            this.f14486h = 1 + j;
            akj.m5070a(j, (byte) i);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzfy(int i) {
            this.f14481c.putInt((int) (this.f14486h - this.f14482d), i);
            this.f14486h += 4;
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzg(int i, long j) {
            zzaa(i, 0);
            zzfg(j);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzg(zzdte zzdteVar) {
            zzfw(zzdteVar.zzazu());
            zzdteVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzh(int i, boolean z) {
            zzaa(i, 0);
            zzd(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.ads.zzdqh
        public final void zzh(byte[] bArr, int i, int i2) {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzhg(String str) {
            long j = this.f14486h;
            try {
                int zzgb = zzgb(str.length() * 3);
                int zzgb2 = zzgb(str.length());
                if (zzgb2 == zzgb) {
                    int i = ((int) (this.f14486h - this.f14482d)) + zzgb2;
                    this.f14481c.position(i);
                    akl.m5006a(str, this.f14481c);
                    int position = this.f14481c.position() - i;
                    zzfw(position);
                    this.f14486h += position;
                    return;
                }
                int a = akl.m5007a(str);
                zzfw(a);
                m3383a(this.f14486h);
                akl.m5006a(str, this.f14481c);
                this.f14486h += a;
            } catch (akp e) {
                this.f14486h = j;
                m3383a(this.f14486h);
                m3388a(str, e);
            } catch (IllegalArgumentException e2) {
                throw new zzb(e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new zzb(e3);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzi(int i, long j) {
            zzaa(i, 1);
            zzfi(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.zzdrb$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrb$d.class */
    public static final class C2448d extends zzdrb {

        /* renamed from: b */
        private final ByteBuffer f14487b;

        /* renamed from: c */
        private final ByteBuffer f14488c;

        /* renamed from: d */
        private final int f14489d;

        C2448d(ByteBuffer byteBuffer) {
            super((byte) 0);
            this.f14487b = byteBuffer;
            this.f14488c = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.f14489d = byteBuffer.position();
        }

        /* renamed from: a */
        private final void m3380a(String str) {
            try {
                akl.m5006a(str, this.f14488c);
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        /* renamed from: a */
        final void mo3382a(int i, zzdte zzdteVar, ajo ajoVar) {
            zzaa(i, 2);
            mo3381a(zzdteVar, ajoVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        /* renamed from: a */
        final void mo3381a(zzdte zzdteVar, ajo ajoVar) {
            zzdqa zzdqaVar = (zzdqa) zzdteVar;
            int b = zzdqaVar.mo3362b();
            int i = b;
            if (b == -1) {
                i = ajoVar.mo5178b(zzdqaVar);
                zzdqaVar.mo3377a(i);
            }
            zzfw(i);
            ajoVar.mo5181a((ajo) zzdteVar, (aku) this.f14473a);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        /* renamed from: a */
        public final void mo3379a(byte[] bArr, int i) {
            zzfw(i);
            write(bArr, 0, i);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void flush() {
            this.f14487b.position(this.f14488c.position());
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void write(byte[] bArr, int i, int i2) {
            try {
                this.f14488c.put(bArr, i, i2);
            } catch (IndexOutOfBoundsException e) {
                throw new zzb(e);
            } catch (BufferOverflowException e2) {
                throw new zzb(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zza(int i, zzdqk zzdqkVar) {
            zzaa(i, 2);
            zzbe(zzdqkVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zza(int i, zzdte zzdteVar) {
            zzaa(i, 2);
            zzg(zzdteVar);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzaa(int i, int i2) {
            zzfw((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzab(int i, int i2) {
            zzaa(i, 0);
            zzfv(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzac(int i, int i2) {
            zzaa(i, 0);
            zzfw(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzae(int i, int i2) {
            zzaa(i, 5);
            zzfy(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final int zzazc() {
            return this.f14488c.remaining();
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzb(int i, zzdqk zzdqkVar) {
            zzaa(1, 3);
            zzac(2, i);
            zza(3, zzdqkVar);
            zzaa(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzb(int i, zzdte zzdteVar) {
            zzaa(1, 3);
            zzac(2, i);
            zza(3, zzdteVar);
            zzaa(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzbe(zzdqk zzdqkVar) {
            zzfw(zzdqkVar.size());
            zzdqkVar.mo3404a(this);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzd(byte b) {
            try {
                this.f14488c.put(b);
            } catch (BufferOverflowException e) {
                throw new zzb(e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzf(int i, String str) {
            zzaa(i, 2);
            zzhg(str);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzfg(long j) {
            while (((-128) & j) != 0) {
                try {
                    this.f14488c.put((byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new zzb(e);
                }
            }
            this.f14488c.put((byte) j);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzfi(long j) {
            try {
                this.f14488c.putLong(j);
            } catch (BufferOverflowException e) {
                throw new zzb(e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzfv(int i) {
            if (i >= 0) {
                zzfw(i);
            } else {
                zzfg(i);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzfw(int i) {
            while ((i & (-128)) != 0) {
                try {
                    this.f14488c.put((byte) ((i & 127) | 128));
                    i >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new zzb(e);
                }
            }
            this.f14488c.put((byte) i);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzfy(int i) {
            try {
                this.f14488c.putInt(i);
            } catch (BufferOverflowException e) {
                throw new zzb(e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzg(int i, long j) {
            zzaa(i, 0);
            zzfg(j);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzg(zzdte zzdteVar) {
            zzfw(zzdteVar.zzazu());
            zzdteVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzh(int i, boolean z) {
            zzaa(i, 0);
            zzd(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.ads.zzdqh
        public final void zzh(byte[] bArr, int i, int i2) {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzhg(String str) {
            int position = this.f14488c.position();
            try {
                int zzgb = zzgb(str.length() * 3);
                int zzgb2 = zzgb(str.length());
                if (zzgb2 == zzgb) {
                    int position2 = this.f14488c.position() + zzgb2;
                    this.f14488c.position(position2);
                    m3380a(str);
                    int position3 = this.f14488c.position();
                    this.f14488c.position(position);
                    zzfw(position3 - position2);
                    this.f14488c.position(position3);
                    return;
                }
                zzfw(akl.m5007a(str));
                m3380a(str);
            } catch (akp e) {
                this.f14488c.position(position);
                m3388a(str, e);
            } catch (IllegalArgumentException e2) {
                throw new zzb(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdrb
        public final void zzi(int i, long j) {
            zzaa(i, 1);
            zzfi(j);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrb$zzb.class */
    public static final class zzb extends IOException {
        zzb() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        zzb(java.lang.String r5) {
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
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdrb.zzb.<init>(java.lang.String):void");
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdrb.zzb.<init>(java.lang.String, java.lang.Throwable):void");
        }

        zzb(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    private zzdrb() {
    }

    /* synthetic */ zzdrb(byte b) {
        this();
    }

    /* renamed from: a */
    private static int m3390a(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* renamed from: a */
    private static long m3389a(long j) {
        return (j >> 63) ^ (j << 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m3387b(int i, zzdte zzdteVar, ajo ajoVar) {
        return zzfz(i) + m3386b(zzdteVar, ajoVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m3386b(zzdte zzdteVar, ajo ajoVar) {
        zzdqa zzdqaVar = (zzdqa) zzdteVar;
        int b = zzdqaVar.mo3362b();
        int i = b;
        if (b == -1) {
            i = ajoVar.mo5178b(zzdqaVar);
            zzdqaVar.mo3377a(i);
        }
        return zzgb(i) + i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    /* renamed from: c */
    public static int m3385c(int i, zzdte zzdteVar, ajo ajoVar) {
        int zzfz = zzfz(i);
        zzdqa zzdqaVar = (zzdqa) zzdteVar;
        int b = zzdqaVar.mo3362b();
        int i2 = b;
        if (b == -1) {
            i2 = ajoVar.mo5178b(zzdqaVar);
            zzdqaVar.mo3377a(i2);
        }
        return (zzfz << 1) + i2;
    }

    public static int zza(int i, zzdsj zzdsjVar) {
        int zzfz = zzfz(i);
        int zzazu = zzdsjVar.zzazu();
        return zzfz + zzgb(zzazu) + zzazu;
    }

    public static int zza(zzdsj zzdsjVar) {
        int zzazu = zzdsjVar.zzazu();
        return zzgb(zzazu) + zzazu;
    }

    public static int zzaf(int i, int i2) {
        return zzfz(i) + zzga(i2);
    }

    public static int zzag(int i, int i2) {
        return zzfz(i) + zzgb(i2);
    }

    public static int zzah(int i, int i2) {
        return zzfz(i) + zzgb(m3390a(i2));
    }

    public static int zzai(int i, int i2) {
        return zzfz(i) + 4;
    }

    public static int zzaj(int i, int i2) {
        return zzfz(i) + 4;
    }

    public static int zzak(int i, int i2) {
        return zzfz(i) + zzga(i2);
    }

    public static int zzb(int i, float f) {
        return zzfz(i) + 4;
    }

    public static int zzb(int i, zzdsj zzdsjVar) {
        return (zzfz(1) << 1) + zzag(2, i) + zza(3, zzdsjVar);
    }

    public static int zzbf(zzdqk zzdqkVar) {
        int size = zzdqkVar.size();
        return zzgb(size) + size;
    }

    public static int zzbo(boolean z) {
        return 1;
    }

    public static int zzc(double d) {
        return 8;
    }

    public static int zzc(int i, double d) {
        return zzfz(i) + 8;
    }

    public static int zzc(int i, zzdqk zzdqkVar) {
        int zzfz = zzfz(i);
        int size = zzdqkVar.size();
        return zzfz + zzgb(size) + size;
    }

    public static int zzc(int i, zzdte zzdteVar) {
        return zzfz(i) + zzh(zzdteVar);
    }

    public static int zzd(int i, zzdqk zzdqkVar) {
        return (zzfz(1) << 1) + zzag(2, i) + zzc(3, zzdqkVar);
    }

    public static int zzd(int i, zzdte zzdteVar) {
        return (zzfz(1) << 1) + zzag(2, i) + zzc(3, zzdteVar);
    }

    public static int zzfj(long j) {
        return zzfk(j);
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
    public static int zzfk(long r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdrb.zzfk(long):int");
    }

    public static int zzfl(long j) {
        return zzfk(m3389a(j));
    }

    public static int zzfm(long j) {
        return 8;
    }

    public static int zzfn(long j) {
        return 8;
    }

    public static int zzfz(int i) {
        return zzgb(i << 3);
    }

    public static int zzg(float f) {
        return 4;
    }

    public static int zzg(int i, String str) {
        return zzfz(i) + zzhh(str);
    }

    public static int zzga(int i) {
        if (i >= 0) {
            return zzgb(i);
        }
        return 10;
    }

    public static int zzgb(int i) {
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

    public static int zzgc(int i) {
        return zzgb(m3390a(i));
    }

    public static int zzgd(int i) {
        return 4;
    }

    public static int zzge(int i) {
        return 4;
    }

    public static int zzgf(int i) {
        return zzga(i);
    }

    @Deprecated
    public static int zzgh(int i) {
        return zzgb(i);
    }

    public static int zzh(zzdte zzdteVar) {
        int zzazu = zzdteVar.zzazu();
        return zzgb(zzazu) + zzazu;
    }

    public static int zzhh(String str) {
        int i;
        try {
            i = akl.m5007a(str);
        } catch (akp e) {
            i = str.getBytes(zzdrv.f14562a).length;
        }
        return zzgb(i) + i;
    }

    public static int zzi(int i, boolean z) {
        return zzfz(i) + 1;
    }

    @Deprecated
    public static int zzi(zzdte zzdteVar) {
        return zzdteVar.zzazu();
    }

    public static int zzj(int i, long j) {
        return zzfz(i) + zzfk(j);
    }

    public static int zzk(int i, long j) {
        return zzfz(i) + zzfk(j);
    }

    public static int zzl(int i, long j) {
        return zzfz(i) + zzfk(m3389a(j));
    }

    public static int zzm(int i, long j) {
        return zzfz(i) + 8;
    }

    public static zzdrb zzm(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return new C2446b(byteBuffer);
        }
        if (byteBuffer.isDirect() && !byteBuffer.isReadOnly()) {
            return akj.m5055b() ? new C2447c(byteBuffer) : new C2448d(byteBuffer);
        }
        throw new IllegalArgumentException("ByteBuffer is read-only");
    }

    public static int zzn(int i, long j) {
        return zzfz(i) + 8;
    }

    public static zzdrb zzw(byte[] bArr) {
        return new C2445a(bArr, 0, bArr.length);
    }

    public static int zzx(byte[] bArr) {
        int length = bArr.length;
        return zzgb(length) + length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void mo3382a(int i, zzdte zzdteVar, ajo ajoVar);

    /* renamed from: a */
    abstract void mo3381a(zzdte zzdteVar, ajo ajoVar);

    /* renamed from: a */
    final void m3388a(String str, akp akpVar) {
        f14471b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) akpVar);
        byte[] bytes = str.getBytes(zzdrv.f14562a);
        try {
            zzfw(bytes.length);
            zzh(bytes, 0, bytes.length);
        } catch (zzb e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzb(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void mo3379a(byte[] bArr, int i);

    public abstract void flush();

    public abstract void write(byte[] bArr, int i, int i2);

    public final void zza(int i, float f) {
        zzae(i, Float.floatToRawIntBits(f));
    }

    public abstract void zza(int i, zzdqk zzdqkVar);

    public abstract void zza(int i, zzdte zzdteVar);

    public abstract void zzaa(int i, int i2);

    public abstract void zzab(int i, int i2);

    public abstract void zzac(int i, int i2);

    public final void zzad(int i, int i2) {
        zzac(i, m3390a(i2));
    }

    public abstract void zzae(int i, int i2);

    public abstract int zzazc();

    public final void zzazd() {
        if (zzazc() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void zzb(double d) {
        zzfi(Double.doubleToRawLongBits(d));
    }

    public final void zzb(int i, double d) {
        zzi(i, Double.doubleToRawLongBits(d));
    }

    public abstract void zzb(int i, zzdqk zzdqkVar);

    public abstract void zzb(int i, zzdte zzdteVar);

    public abstract void zzbe(zzdqk zzdqkVar);

    public final void zzbn(boolean z) {
        zzd(z ? (byte) 1 : (byte) 0);
    }

    public abstract void zzd(byte b);

    public final void zzf(float f) {
        zzfy(Float.floatToRawIntBits(f));
    }

    public abstract void zzf(int i, String str);

    public abstract void zzfg(long j);

    public final void zzfh(long j) {
        zzfg(m3389a(j));
    }

    public abstract void zzfi(long j);

    public abstract void zzfv(int i);

    public abstract void zzfw(int i);

    public final void zzfx(int i) {
        zzfw(m3390a(i));
    }

    public abstract void zzfy(int i);

    public abstract void zzg(int i, long j);

    public abstract void zzg(zzdte zzdteVar);

    public final void zzh(int i, long j) {
        zzg(i, m3389a(j));
    }

    public abstract void zzh(int i, boolean z);

    public abstract void zzhg(String str);

    public abstract void zzi(int i, long j);
}
