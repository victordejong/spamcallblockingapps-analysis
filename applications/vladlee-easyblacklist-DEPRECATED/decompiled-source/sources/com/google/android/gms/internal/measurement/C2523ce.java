package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.ce */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ce.class */
public final class C2523ce extends zzeg {

    /* renamed from: d */
    private final byte[] f15913d;

    /* renamed from: e */
    private final boolean f15914e;

    /* renamed from: f */
    private int f15915f;

    /* renamed from: g */
    private int f15916g;

    /* renamed from: h */
    private int f15917h;

    /* renamed from: i */
    private int f15918i;

    /* renamed from: j */
    private int f15919j;

    /* renamed from: k */
    private int f15920k;

    private C2523ce(byte[] bArr, int i) {
        super((byte) 0);
        this.f15920k = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f15913d = bArr;
        this.f15915f = i + 0;
        this.f15917h = 0;
        this.f15918i = this.f15917h;
        this.f15914e = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2523ce(byte[] bArr, int i, byte b) {
        this(bArr, i);
    }

    /* renamed from: a */
    private final void m2887a(int i) {
        if (i >= 0) {
            int i2 = this.f15915f;
            int i3 = this.f15917h;
            if (i <= i2 - i3) {
                this.f15917h = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw zzfo.m2266b();
        }
        throw zzfo.m2267a();
    }

    /* renamed from: b */
    private final int m2886b() {
        int i;
        int i2 = this.f15917h;
        int i3 = this.f15915f;
        if (i3 != i2) {
            byte[] bArr = this.f15913d;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f15917h = i4;
                return b;
            } else if (i3 - i4 >= 9) {
                int i5 = i4 + 1;
                int i6 = b ^ (bArr[i4] << 7);
                if (i6 < 0) {
                    i = i6 ^ (-128);
                } else {
                    int i7 = i5 + 1;
                    int i8 = i6 ^ (bArr[i5] << 14);
                    if (i8 >= 0) {
                        i = i8 ^ 16256;
                        i5 = i7;
                    } else {
                        i5 = i7 + 1;
                        int i9 = i8 ^ (bArr[i7] << 21);
                        if (i9 < 0) {
                            i = i9 ^ (-2080896);
                        } else {
                            int i10 = i5 + 1;
                            byte b2 = bArr[i5];
                            int i11 = (i9 ^ (b2 << 28)) ^ 266354560;
                            i = i11;
                            i5 = i10;
                            if (b2 < 0) {
                                int i12 = i10 + 1;
                                i = i11;
                                i5 = i12;
                                if (bArr[i10] < 0) {
                                    int i13 = i12 + 1;
                                    i = i11;
                                    i5 = i13;
                                    if (bArr[i12] < 0) {
                                        int i14 = i13 + 1;
                                        i = i11;
                                        i5 = i14;
                                        if (bArr[i13] < 0) {
                                            int i15 = i14 + 1;
                                            i = i11;
                                            i5 = i15;
                                            if (bArr[i14] < 0) {
                                                i5 = i15 + 1;
                                                if (bArr[i15] >= 0) {
                                                    i = i11;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                this.f15917h = i5;
                return i;
            }
        }
        return (int) mo2302a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0156, code lost:
        if (r0[r0] >= 0) goto L_0x015f;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long m2885c() {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2523ce.m2885c():long");
    }

    /* renamed from: d */
    private final int m2884d() {
        int i = this.f15917h;
        if (this.f15915f - i >= 4) {
            byte[] bArr = this.f15913d;
            this.f15917h = i + 4;
            return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
        }
        throw zzfo.m2267a();
    }

    /* renamed from: e */
    private final long m2883e() {
        int i = this.f15917h;
        if (this.f15915f - i >= 8) {
            byte[] bArr = this.f15913d;
            this.f15917h = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }
        throw zzfo.m2267a();
    }

    /* renamed from: f */
    private final void m2882f() {
        this.f15915f += this.f15916g;
        int i = this.f15915f;
        int i2 = i - this.f15918i;
        int i3 = this.f15920k;
        if (i2 > i3) {
            this.f15916g = i2 - i3;
            this.f15915f = i - this.f15916g;
            return;
        }
        this.f15916g = 0;
    }

    /* renamed from: g */
    private final byte m2881g() {
        int i = this.f15917h;
        if (i != this.f15915f) {
            byte[] bArr = this.f15913d;
            this.f15917h = i + 1;
            return bArr[i];
        }
        throw zzfo.m2267a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzeg
    /* renamed from: a */
    public final long mo2302a() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte g = m2881g();
            j |= (g & Byte.MAX_VALUE) << i;
            if ((g & 128) == 0) {
                return j;
            }
        }
        throw zzfo.m2265c();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zza() {
        if (zzt()) {
            this.f15919j = 0;
            return 0;
        }
        this.f15919j = m2886b();
        int i = this.f15919j;
        if ((i >>> 3) != 0) {
            return i;
        }
        throw zzfo.m2264d();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final void zza(int i) {
        if (this.f15919j != i) {
            throw zzfo.m2263e();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final double zzb() {
        return Double.longBitsToDouble(m2883e());
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final boolean zzb(int i) {
        int zza;
        int i2 = i & 7;
        if (i2 != 0) {
            if (i2 == 1) {
                m2887a(8);
                return true;
            } else if (i2 == 2) {
                m2887a(m2886b());
                return true;
            } else if (i2 == 3) {
                do {
                    zza = zza();
                    if (zza == 0) {
                        break;
                    }
                } while (zzb(zza));
                zza(((i >>> 3) << 3) | 4);
                return true;
            } else if (i2 == 4) {
                return false;
            } else {
                if (i2 == 5) {
                    m2887a(4);
                    return true;
                }
                throw zzfo.m2262f();
            }
        } else if (this.f15915f - this.f15917h >= 10) {
            for (int i3 = 0; i3 < 10; i3++) {
                byte[] bArr = this.f15913d;
                int i4 = this.f15917h;
                this.f15917h = i4 + 1;
                if (bArr[i4] >= 0) {
                    return true;
                }
            }
            throw zzfo.m2265c();
        } else {
            for (int i5 = 0; i5 < 10; i5++) {
                if (m2881g() >= 0) {
                    return true;
                }
            }
            throw zzfo.m2265c();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final float zzc() {
        return Float.intBitsToFloat(m2884d());
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzc(int i) {
        if (i >= 0) {
            int zzu = i + zzu();
            int i2 = this.f15920k;
            if (zzu <= i2) {
                this.f15920k = zzu;
                m2882f();
                return i2;
            }
            throw zzfo.m2267a();
        }
        throw zzfo.m2266b();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final long zzd() {
        return m2885c();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final void zzd(int i) {
        this.f15920k = i;
        m2882f();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final long zze() {
        return m2885c();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzf() {
        return m2886b();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final long zzg() {
        return m2883e();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzh() {
        return m2884d();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final boolean zzi() {
        return m2885c() != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final String zzj() {
        int b = m2886b();
        if (b > 0) {
            int i = this.f15915f;
            int i2 = this.f15917h;
            if (b <= i - i2) {
                String str = new String(this.f15913d, i2, b, zzff.f16286a);
                this.f15917h += b;
                return str;
            }
        }
        if (b == 0) {
            return "";
        }
        if (b < 0) {
            throw zzfo.m2266b();
        }
        throw zzfo.m2267a();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final String zzk() {
        int b = m2886b();
        if (b > 0) {
            int i = this.f15915f;
            int i2 = this.f15917h;
            if (b <= i - i2) {
                String b2 = C2595es.m2526b(this.f15913d, i2, b);
                this.f15917h += b;
                return b2;
            }
        }
        if (b == 0) {
            return "";
        }
        if (b <= 0) {
            throw zzfo.m2266b();
        }
        throw zzfo.m2267a();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final zzdu zzl() {
        byte[] bArr;
        int b = m2886b();
        if (b > 0) {
            int i = this.f15915f;
            int i2 = this.f15917h;
            if (b <= i - i2) {
                zzdu zza = zzdu.zza(this.f15913d, i2, b);
                this.f15917h += b;
                return zza;
            }
        }
        if (b == 0) {
            return zzdu.zza;
        }
        if (b > 0) {
            int i3 = this.f15915f;
            int i4 = this.f15917h;
            if (b <= i3 - i4) {
                this.f15917h = b + i4;
                bArr = Arrays.copyOfRange(this.f15913d, i4, this.f15917h);
                return zzdu.m2304a(bArr);
            }
        }
        if (b > 0) {
            throw zzfo.m2267a();
        } else if (b == 0) {
            bArr = zzff.zzb;
            return zzdu.m2304a(bArr);
        } else {
            throw zzfo.m2266b();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzm() {
        return m2886b();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzn() {
        return m2886b();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzo() {
        return m2884d();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final long zzp() {
        return m2883e();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzq() {
        return zze(m2886b());
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final long zzr() {
        return zza(m2885c());
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final boolean zzt() {
        return this.f15917h == this.f15915f;
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzu() {
        return this.f15917h - this.f15918i;
    }
}
