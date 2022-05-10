package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzgp;
import com.google.android.gms.internal.measurement.zzhb;
import com.google.android.gms.internal.measurement.zzia;
import com.google.android.gms.internal.measurement.zzij;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: c.d.b.d.g.f.s2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/s2.class */
public final class C4586s2 extends zzhb {

    /* renamed from: d */
    public final byte[] f16872d;

    /* renamed from: e */
    public int f16873e;

    /* renamed from: f */
    public int f16874f;

    /* renamed from: g */
    public int f16875g;

    /* renamed from: h */
    public int f16876h;

    /* renamed from: i */
    public int f16877i;

    /* renamed from: j */
    public int f16878j;

    public C4586s2(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.f16878j = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        this.f16872d = bArr;
        this.f16873e = i2 + i;
        this.f16875g = i;
        this.f16876h = i;
    }

    /* renamed from: A */
    public final void m25248A() {
        int i = this.f16873e + this.f16874f;
        this.f16873e = i;
        int i2 = i - this.f16876h;
        int i3 = this.f16878j;
        if (i2 > i3) {
            int i4 = i2 - i3;
            this.f16874f = i4;
            this.f16873e = i - i4;
            return;
        }
        this.f16874f = 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: a */
    public final int mo9788a() throws IOException {
        if (mo9763s()) {
            this.f16877i = 0;
            return 0;
        }
        int w = m25244w();
        this.f16877i = w;
        if ((w >>> 3) != 0) {
            return w;
        }
        throw zzij.zzd();
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: a */
    public final void mo9787a(int i) throws zzij {
        if (this.f16877i != i) {
            throw zzij.zze();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: b */
    public final double mo9784b() throws IOException {
        return Double.longBitsToDouble(m25241z());
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: b */
    public final boolean mo9783b(int i) throws IOException {
        int a;
        int i2 = i & 7;
        if (i2 != 0) {
            if (i2 == 1) {
                m25247f(8);
                return true;
            } else if (i2 == 2) {
                m25247f(m25244w());
                return true;
            } else if (i2 == 3) {
                do {
                    a = mo9788a();
                    if (a == 0) {
                        break;
                    }
                } while (mo9783b(a));
                mo9787a(((i >>> 3) << 3) | 4);
                return true;
            } else if (i2 == 4) {
                return false;
            } else {
                if (i2 == 5) {
                    m25247f(4);
                    return true;
                }
                throw zzij.zzf();
            }
        } else if (this.f16873e - this.f16875g >= 10) {
            for (int i3 = 0; i3 < 10; i3++) {
                byte[] bArr = this.f16872d;
                int i4 = this.f16875g;
                this.f16875g = i4 + 1;
                if (bArr[i4] >= 0) {
                    return true;
                }
            }
            throw zzij.zzc();
        } else {
            for (int i5 = 0; i5 < 10; i5++) {
                if (m25246u() >= 0) {
                    return true;
                }
            }
            throw zzij.zzc();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: c */
    public final float mo9782c() throws IOException {
        return Float.intBitsToFloat(m25242y());
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: c */
    public final int mo9781c(int i) throws zzij {
        if (i >= 0) {
            int t = i + mo9762t();
            int i2 = this.f16878j;
            if (t <= i2) {
                this.f16878j = t;
                m25248A();
                return i2;
            }
            throw zzij.zza();
        }
        throw zzij.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: d */
    public final long mo9780d() throws IOException {
        return m25243x();
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: d */
    public final void mo9779d(int i) {
        this.f16878j = i;
        m25248A();
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: e */
    public final long mo9778e() throws IOException {
        return m25243x();
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: f */
    public final int mo9776f() throws IOException {
        return m25244w();
    }

    /* renamed from: f */
    public final void m25247f(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.f16873e;
            int i3 = this.f16875g;
            if (i <= i2 - i3) {
                this.f16875g = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw zzij.zzb();
        }
        throw zzij.zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: g */
    public final long mo9775g() throws IOException {
        return m25241z();
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: h */
    public final int mo9774h() throws IOException {
        return m25242y();
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: i */
    public final boolean mo9773i() throws IOException {
        return m25243x() != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: j */
    public final String mo9772j() throws IOException {
        int w = m25244w();
        if (w > 0 && w <= this.f16873e - this.f16875g) {
            String str = new String(this.f16872d, this.f16875g, w, zzia.f29511a);
            this.f16875g += w;
            return str;
        } else if (w == 0) {
            return "";
        } else {
            if (w < 0) {
                throw zzij.zzb();
            }
            throw zzij.zza();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: k */
    public final String mo9771k() throws IOException {
        int w = m25244w();
        if (w > 0) {
            int i = this.f16873e;
            int i2 = this.f16875g;
            if (w <= i - i2) {
                String b = C4547m5.m25358b(this.f16872d, i2, w);
                this.f16875g += w;
                return b;
            }
        }
        if (w == 0) {
            return "";
        }
        if (w <= 0) {
            throw zzij.zzb();
        }
        throw zzij.zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: l */
    public final zzgp mo9770l() throws IOException {
        byte[] bArr;
        int w = m25244w();
        if (w > 0) {
            int i = this.f16873e;
            int i2 = this.f16875g;
            if (w <= i - i2) {
                zzgp zza = zzgp.zza(this.f16872d, i2, w);
                this.f16875g += w;
                return zza;
            }
        }
        if (w == 0) {
            return zzgp.zza;
        }
        if (w > 0) {
            int i3 = this.f16873e;
            int i4 = this.f16875g;
            if (w <= i3 - i4) {
                int i5 = w + i4;
                this.f16875g = i5;
                bArr = Arrays.copyOfRange(this.f16872d, i4, i5);
                return zzgp.zza(bArr);
            }
        }
        if (w > 0) {
            throw zzij.zza();
        } else if (w == 0) {
            bArr = zzia.f29512b;
            return zzgp.zza(bArr);
        } else {
            throw zzij.zzb();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: m */
    public final int mo9769m() throws IOException {
        return m25244w();
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: n */
    public final int mo9768n() throws IOException {
        return m25244w();
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: o */
    public final int mo9767o() throws IOException {
        return m25242y();
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: p */
    public final long mo9766p() throws IOException {
        return m25241z();
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: q */
    public final int mo9765q() throws IOException {
        return zzhb.m9777e(m25244w());
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: r */
    public final long mo9764r() throws IOException {
        return zzhb.m9786a(m25243x());
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: s */
    public final boolean mo9763s() throws IOException {
        return this.f16875g == this.f16873e;
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: t */
    public final int mo9762t() {
        return this.f16875g - this.f16876h;
    }

    /* renamed from: u */
    public final byte m25246u() throws IOException {
        int i = this.f16875g;
        if (i != this.f16873e) {
            byte[] bArr = this.f16872d;
            this.f16875g = i + 1;
            return bArr[i];
        }
        throw zzij.zza();
    }

    /* renamed from: v */
    public final long m25245v() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte u = m25246u();
            j |= (u & Byte.MAX_VALUE) << i;
            if ((u & 128) == 0) {
                return j;
            }
        }
        throw zzij.zzc();
    }

    /* renamed from: w */
    public final int m25244w() throws IOException {
        int i;
        int i2 = this.f16875g;
        int i3 = this.f16873e;
        if (i3 != i2) {
            byte[] bArr = this.f16872d;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f16875g = i4;
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
                this.f16875g = i5;
                return i;
            }
        }
        return (int) m25245v();
    }

    /* renamed from: x */
    public final long m25243x() throws IOException {
        long j;
        long j2;
        long j3;
        int i;
        int i2 = this.f16875g;
        int i3 = this.f16873e;
        if (i3 != i2) {
            byte[] bArr = this.f16872d;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f16875g = i4;
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
                                i5 = i10 + 1;
                                long j6 = j5 ^ (bArr[i10] << 35);
                                if (j6 < 0) {
                                    j2 = -34093383808L;
                                } else {
                                    int i11 = i5 + 1;
                                    j5 = j6 ^ (bArr[i5] << 42);
                                    if (j5 >= 0) {
                                        j3 = 4363953127296L;
                                        i5 = i11;
                                    } else {
                                        int i12 = i11 + 1;
                                        j6 = j5 ^ (bArr[i11] << 49);
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
                            j = j3 ^ j5;
                        }
                    }
                    this.f16875g = i5;
                    return j;
                }
                j = i;
                this.f16875g = i5;
                return j;
            }
        }
        return m25245v();
    }

    /* renamed from: y */
    public final int m25242y() throws IOException {
        int i = this.f16875g;
        if (this.f16873e - i >= 4) {
            byte[] bArr = this.f16872d;
            this.f16875g = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }
        throw zzij.zza();
    }

    /* renamed from: z */
    public final long m25241z() throws IOException {
        int i = this.f16875g;
        if (this.f16873e - i >= 8) {
            byte[] bArr = this.f16872d;
            this.f16875g = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }
        throw zzij.zza();
    }
}
