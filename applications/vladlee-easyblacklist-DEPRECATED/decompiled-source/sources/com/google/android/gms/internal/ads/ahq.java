package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ahq.class */
public final class ahq extends zzdqw {

    /* renamed from: e */
    private final byte[] f7374e;

    /* renamed from: f */
    private final boolean f7375f;

    /* renamed from: g */
    private int f7376g;

    /* renamed from: h */
    private int f7377h;

    /* renamed from: i */
    private int f7378i;

    /* renamed from: j */
    private int f7379j;

    /* renamed from: k */
    private int f7380k;

    /* renamed from: l */
    private int f7381l;

    private ahq(byte[] bArr, int i, int i2, boolean z) {
        super((byte) 0);
        this.f7381l = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f7374e = bArr;
        this.f7376g = i2 + i;
        this.f7378i = i;
        this.f7379j = this.f7378i;
        this.f7375f = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ahq(byte[] bArr, int i, int i2, boolean z, byte b) {
        this(bArr, i, i2, z);
    }

    /* renamed from: a */
    private final void m5386a(int i) {
        if (i >= 0) {
            int i2 = this.f7376g;
            int i3 = this.f7378i;
            if (i <= i2 - i3) {
                this.f7378i = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw zzdse.m3346b();
        }
        throw zzdse.m3347a();
    }

    /* renamed from: b */
    private final int m5385b() {
        int i;
        int i2 = this.f7378i;
        int i3 = this.f7376g;
        if (i3 != i2) {
            byte[] bArr = this.f7374e;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f7378i = i4;
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
                this.f7378i = i5;
                return i;
            }
        }
        return (int) mo3394a();
    }

    /* renamed from: c */
    private final long m5384c() {
        long j;
        long j2;
        long j3;
        int i;
        int i2 = this.f7378i;
        int i3 = this.f7376g;
        if (i3 != i2) {
            byte[] bArr = this.f7374e;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f7378i = i4;
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
                        j = i8 ^ 16256;
                        i5 = i7;
                    } else {
                        i5 = i7 + 1;
                        int i9 = i8 ^ (bArr[i7] << 21);
                        if (i9 < 0) {
                            i = i9 ^ (-2080896);
                        } else {
                            long j4 = i9;
                            int i10 = i5 + 1;
                            long j5 = j4 ^ (bArr[i5] << 28);
                            if (j5 >= 0) {
                                j3 = 266354560;
                                i5 = i10;
                            } else {
                                int i11 = i10 + 1;
                                long j6 = j5 ^ (bArr[i10] << 35);
                                if (j6 < 0) {
                                    j2 = -34093383808L;
                                    i5 = i11;
                                } else {
                                    i5 = i11 + 1;
                                    j5 = j6 ^ (bArr[i11] << 42);
                                    if (j5 >= 0) {
                                        j3 = 4363953127296L;
                                    } else {
                                        int i12 = i5 + 1;
                                        j6 = j5 ^ (bArr[i5] << 49);
                                        if (j6 < 0) {
                                            j2 = -558586000294016L;
                                            i5 = i12;
                                        } else {
                                            i5 = i12 + 1;
                                            j = (j6 ^ (bArr[i12] << 56)) ^ 71499008037633920L;
                                            if (j < 0) {
                                                i5++;
                                                if (bArr[i5] >= 0) {
                                                }
                                            }
                                        }
                                    }
                                }
                                j = j6 ^ j2;
                            }
                            j = j5 ^ j3;
                        }
                    }
                    this.f7378i = i5;
                    return j;
                }
                j = i;
                this.f7378i = i5;
                return j;
            }
        }
        return mo3394a();
    }

    /* renamed from: d */
    private final int m5383d() {
        int i = this.f7378i;
        if (this.f7376g - i >= 4) {
            byte[] bArr = this.f7374e;
            this.f7378i = i + 4;
            return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
        }
        throw zzdse.m3347a();
    }

    /* renamed from: e */
    private final long m5382e() {
        int i = this.f7378i;
        if (this.f7376g - i >= 8) {
            byte[] bArr = this.f7374e;
            this.f7378i = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }
        throw zzdse.m3347a();
    }

    /* renamed from: f */
    private final void m5381f() {
        this.f7376g += this.f7377h;
        int i = this.f7376g;
        int i2 = i - this.f7379j;
        int i3 = this.f7381l;
        if (i2 > i3) {
            this.f7377h = i2 - i3;
            this.f7376g = i - this.f7377h;
            return;
        }
        this.f7377h = 0;
    }

    /* renamed from: g */
    private final byte m5380g() {
        int i = this.f7378i;
        if (i != this.f7376g) {
            byte[] bArr = this.f7374e;
            this.f7378i = i + 1;
            return bArr[i];
        }
        throw zzdse.m3347a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdqw
    /* renamed from: a */
    public final long mo3394a() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte g = m5380g();
            j |= (g & Byte.MAX_VALUE) << i;
            if ((g & 128) == 0) {
                return j;
            }
        }
        throw zzdse.m3345c();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final double readDouble() {
        return Double.longBitsToDouble(m5382e());
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final float readFloat() {
        return Float.intBitsToFloat(m5383d());
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final String readString() {
        int b = m5385b();
        if (b > 0) {
            int i = this.f7376g;
            int i2 = this.f7378i;
            if (b <= i - i2) {
                String str = new String(this.f7374e, i2, b, zzdrv.f14562a);
                this.f7378i += b;
                return str;
            }
        }
        if (b == 0) {
            return "";
        }
        if (b < 0) {
            throw zzdse.m3346b();
        }
        throw zzdse.m3347a();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final int zzayc() {
        if (zzays()) {
            this.f7380k = 0;
            return 0;
        }
        this.f7380k = m5385b();
        int i = this.f7380k;
        if ((i >>> 3) != 0) {
            return i;
        }
        throw zzdse.m3344d();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final long zzayd() {
        return m5384c();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final long zzaye() {
        return m5384c();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final int zzayf() {
        return m5385b();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final long zzayg() {
        return m5382e();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final int zzayh() {
        return m5383d();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final boolean zzayi() {
        return m5384c() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final String zzayj() {
        int b = m5385b();
        if (b > 0) {
            int i = this.f7376g;
            int i2 = this.f7378i;
            if (b <= i - i2) {
                String b2 = akl.m4999b(this.f7374e, i2, b);
                this.f7378i += b;
                return b2;
            }
        }
        if (b == 0) {
            return "";
        }
        if (b <= 0) {
            throw zzdse.m3346b();
        }
        throw zzdse.m3347a();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final zzdqk zzayk() {
        byte[] bArr;
        int b = m5385b();
        if (b > 0) {
            int i = this.f7376g;
            int i2 = this.f7378i;
            if (b <= i - i2) {
                zzdqk zzi = zzdqk.zzi(this.f7374e, i2, b);
                this.f7378i += b;
                return zzi;
            }
        }
        if (b == 0) {
            return zzdqk.zzhhx;
        }
        if (b > 0) {
            int i3 = this.f7376g;
            int i4 = this.f7378i;
            if (b <= i3 - i4) {
                this.f7378i = b + i4;
                bArr = Arrays.copyOfRange(this.f7374e, i4, this.f7378i);
                return zzdqk.m3401a(bArr);
            }
        }
        if (b > 0) {
            throw zzdse.m3347a();
        } else if (b == 0) {
            bArr = zzdrv.zzhng;
            return zzdqk.m3401a(bArr);
        } else {
            throw zzdse.m3346b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final int zzayl() {
        return m5385b();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final int zzaym() {
        return m5385b();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final int zzayn() {
        return m5383d();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final long zzayo() {
        return m5382e();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final int zzayp() {
        return zzfl(m5385b());
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final long zzayq() {
        return zzff(m5384c());
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final boolean zzays() {
        return this.f7378i == this.f7376g;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final int zzayt() {
        return this.f7378i - this.f7379j;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final void zzfh(int i) {
        if (this.f7380k != i) {
            throw zzdse.m3343e();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final boolean zzfi(int i) {
        int zzayc;
        int i2 = i & 7;
        if (i2 != 0) {
            if (i2 == 1) {
                m5386a(8);
                return true;
            } else if (i2 == 2) {
                m5386a(m5385b());
                return true;
            } else if (i2 == 3) {
                do {
                    zzayc = zzayc();
                    if (zzayc == 0) {
                        break;
                    }
                } while (zzfi(zzayc));
                zzfh(((i >>> 3) << 3) | 4);
                return true;
            } else if (i2 == 4) {
                return false;
            } else {
                if (i2 == 5) {
                    m5386a(4);
                    return true;
                }
                throw zzdse.m3342f();
            }
        } else if (this.f7376g - this.f7378i >= 10) {
            for (int i3 = 0; i3 < 10; i3++) {
                byte[] bArr = this.f7374e;
                int i4 = this.f7378i;
                this.f7378i = i4 + 1;
                if (bArr[i4] >= 0) {
                    return true;
                }
            }
            throw zzdse.m3345c();
        } else {
            for (int i5 = 0; i5 < 10; i5++) {
                if (m5380g() >= 0) {
                    return true;
                }
            }
            throw zzdse.m3345c();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final int zzfj(int i) {
        if (i >= 0) {
            int zzayt = i + zzayt();
            int i2 = this.f7381l;
            if (zzayt <= i2) {
                this.f7381l = zzayt;
                m5381f();
                return i2;
            }
            throw zzdse.m3347a();
        }
        throw zzdse.m3346b();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final void zzfk(int i) {
        this.f7381l = i;
        m5381f();
    }
}
