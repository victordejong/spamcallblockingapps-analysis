package com.google.android.gms.internal.ads;

import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.gms.common.api.Api;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ahp.class */
final class ahp extends zzdqw {

    /* renamed from: e */
    private final InputStream f7365e;

    /* renamed from: f */
    private final byte[] f7366f;

    /* renamed from: g */
    private int f7367g;

    /* renamed from: h */
    private int f7368h;

    /* renamed from: i */
    private int f7369i;

    /* renamed from: j */
    private int f7370j;

    /* renamed from: k */
    private int f7371k;

    /* renamed from: l */
    private int f7372l;

    /* renamed from: m */
    private ahs f7373m;

    private ahp(InputStream inputStream) {
        super((byte) 0);
        this.f7372l = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f7373m = null;
        zzdrv.m3349a(inputStream, "input");
        this.f7365e = inputStream;
        this.f7366f = new byte[CodedOutputStream.DEFAULT_BUFFER_SIZE];
        this.f7367g = 0;
        this.f7369i = 0;
        this.f7371k = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ahp(InputStream inputStream, byte b) {
        this(inputStream);
    }

    /* renamed from: a */
    private final void m5398a(int i) {
        if (m5396b(i)) {
            return;
        }
        if (i > (this.f14468c - this.f7371k) - this.f7369i) {
            throw zzdse.m3341g();
        }
        throw zzdse.m3347a();
    }

    /* renamed from: b */
    private final int m5397b() {
        int i;
        int i2 = this.f7369i;
        int i3 = this.f7367g;
        if (i3 != i2) {
            byte[] bArr = this.f7366f;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f7369i = i4;
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
                this.f7369i = i5;
                return i;
            }
        }
        return (int) mo3394a();
    }

    /* renamed from: b */
    private final boolean m5396b(int i) {
        while (this.f7369i + i > this.f7367g) {
            int i2 = this.f14468c;
            int i3 = this.f7371k;
            int i4 = this.f7369i;
            if (i > (i2 - i3) - i4 || i3 + i4 + i > this.f7372l) {
                return false;
            }
            if (i4 > 0) {
                int i5 = this.f7367g;
                if (i5 > i4) {
                    byte[] bArr = this.f7366f;
                    System.arraycopy(bArr, i4, bArr, 0, i5 - i4);
                }
                this.f7371k += i4;
                this.f7367g -= i4;
                this.f7369i = 0;
            }
            InputStream inputStream = this.f7365e;
            byte[] bArr2 = this.f7366f;
            int i6 = this.f7367g;
            int read = inputStream.read(bArr2, i6, Math.min(bArr2.length - i6, (this.f14468c - this.f7371k) - this.f7367g));
            if (read == 0 || read < -1 || read > this.f7366f.length) {
                String valueOf = String.valueOf(this.f7365e.getClass());
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 91);
                sb.append(valueOf);
                sb.append("#read(byte[]) returned invalid result: ");
                sb.append(read);
                sb.append("\nThe InputStream implementation is buggy.");
                throw new IllegalStateException(sb.toString());
            } else if (read <= 0) {
                return false;
            } else {
                this.f7367g += read;
                m5389f();
                if (this.f7367g >= i) {
                    return true;
                }
            }
        }
        StringBuilder sb2 = new StringBuilder(77);
        sb2.append("refillBuffer() called when ");
        sb2.append(i);
        sb2.append(" bytes were already available in buffer");
        throw new IllegalStateException(sb2.toString());
    }

    /* renamed from: c */
    private final long m5395c() {
        long j;
        long j2;
        long j3;
        int i;
        int i2 = this.f7369i;
        int i3 = this.f7367g;
        if (i3 != i2) {
            byte[] bArr = this.f7366f;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f7369i = i4;
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
                    this.f7369i = i5;
                    return j;
                }
                j = i;
                this.f7369i = i5;
                return j;
            }
        }
        return mo3394a();
    }

    /* renamed from: c */
    private final byte[] m5394c(int i) {
        byte[] d = m5392d(i);
        if (d != null) {
            return d;
        }
        int i2 = this.f7369i;
        int i3 = this.f7367g;
        int i4 = i3 - i2;
        this.f7371k += i3;
        this.f7369i = 0;
        this.f7367g = 0;
        List<byte[]> e = m5390e(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.f7366f, i2, bArr, 0, i4);
        int i5 = i4;
        for (byte[] bArr2 : e) {
            System.arraycopy(bArr2, 0, bArr, i5, bArr2.length);
            i5 += bArr2.length;
        }
        return bArr;
    }

    /* renamed from: d */
    private final int m5393d() {
        int i = this.f7369i;
        int i2 = i;
        if (this.f7367g - i < 4) {
            m5398a(4);
            i2 = this.f7369i;
        }
        byte[] bArr = this.f7366f;
        this.f7369i = i2 + 4;
        return (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24);
    }

    /* renamed from: d */
    private final byte[] m5392d(int i) {
        if (i == 0) {
            return zzdrv.zzhng;
        }
        if (i >= 0) {
            int i2 = this.f7371k + this.f7369i + i;
            if (i2 - this.f14468c <= 0) {
                int i3 = this.f7372l;
                if (i2 <= i3) {
                    int i4 = this.f7367g - this.f7369i;
                    int i5 = i - i4;
                    if (i5 >= 4096 && i5 > this.f7365e.available()) {
                        return null;
                    }
                    byte[] bArr = new byte[i];
                    System.arraycopy(this.f7366f, this.f7369i, bArr, 0, i4);
                    this.f7371k += this.f7367g;
                    this.f7369i = 0;
                    this.f7367g = 0;
                    while (i4 < bArr.length) {
                        int read = this.f7365e.read(bArr, i4, i - i4);
                        if (read != -1) {
                            this.f7371k += read;
                            i4 += read;
                        } else {
                            throw zzdse.m3347a();
                        }
                    }
                    return bArr;
                }
                m5388f((i3 - this.f7371k) - this.f7369i);
                throw zzdse.m3347a();
            }
            throw zzdse.m3341g();
        }
        throw zzdse.m3346b();
    }

    /* renamed from: e */
    private final long m5391e() {
        int i = this.f7369i;
        int i2 = i;
        if (this.f7367g - i < 8) {
            m5398a(8);
            i2 = this.f7369i;
        }
        byte[] bArr = this.f7366f;
        this.f7369i = i2 + 8;
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    /* renamed from: e */
    private final List<byte[]> m5390e(int i) {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            byte[] bArr = new byte[Math.min(i, (int) CodedOutputStream.DEFAULT_BUFFER_SIZE)];
            int i2 = 0;
            while (i2 < bArr.length) {
                int read = this.f7365e.read(bArr, i2, bArr.length - i2);
                if (read != -1) {
                    this.f7371k += read;
                    i2 += read;
                } else {
                    throw zzdse.m3347a();
                }
            }
            i -= bArr.length;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    /* renamed from: f */
    private final void m5389f() {
        this.f7367g += this.f7368h;
        int i = this.f7371k;
        int i2 = this.f7367g;
        int i3 = i + i2;
        int i4 = this.f7372l;
        if (i3 > i4) {
            this.f7368h = i3 - i4;
            this.f7367g = i2 - this.f7368h;
            return;
        }
        this.f7368h = 0;
    }

    /* renamed from: f */
    private final void m5388f(int i) {
        int i2 = this.f7367g;
        int i3 = this.f7369i;
        if (i <= i2 - i3 && i >= 0) {
            this.f7369i = i3 + i;
        } else if (i >= 0) {
            int i4 = this.f7371k;
            int i5 = this.f7369i;
            int i6 = this.f7372l;
            if (i4 + i5 + i <= i6) {
                this.f7371k = i4 + i5;
                int i7 = this.f7367g - i5;
                this.f7367g = 0;
                this.f7369i = 0;
                while (i7 < i) {
                    try {
                        long j = i - i7;
                        long skip = this.f7365e.skip(j);
                        int i8 = (skip > 0L ? 1 : (skip == 0L ? 0 : -1));
                        if (i8 >= 0 && skip <= j) {
                            if (i8 == 0) {
                                break;
                            }
                            i7 += (int) skip;
                        } else {
                            String valueOf = String.valueOf(this.f7365e.getClass());
                            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 92);
                            sb.append(valueOf);
                            sb.append("#skip returned invalid result: ");
                            sb.append(skip);
                            sb.append("\nThe InputStream implementation is buggy.");
                            throw new IllegalStateException(sb.toString());
                        }
                    } finally {
                        this.f7371k += i7;
                        m5389f();
                    }
                }
                if (i7 < i) {
                    int i9 = this.f7367g;
                    int i10 = i9 - this.f7369i;
                    this.f7369i = i9;
                    while (true) {
                        m5398a(1);
                        int i11 = i - i10;
                        int i12 = this.f7367g;
                        if (i11 > i12) {
                            i10 += i12;
                            this.f7369i = i12;
                        } else {
                            this.f7369i = i11;
                            return;
                        }
                    }
                }
            } else {
                m5388f((i6 - i4) - i5);
                throw zzdse.m3347a();
            }
        } else {
            throw zzdse.m3346b();
        }
    }

    /* renamed from: g */
    private final byte m5387g() {
        if (this.f7369i == this.f7367g) {
            m5398a(1);
        }
        byte[] bArr = this.f7366f;
        int i = this.f7369i;
        this.f7369i = i + 1;
        return bArr[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdqw
    /* renamed from: a */
    public final long mo3394a() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte g = m5387g();
            j |= (g & Byte.MAX_VALUE) << i;
            if ((g & 128) == 0) {
                return j;
            }
        }
        throw zzdse.m3345c();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final double readDouble() {
        return Double.longBitsToDouble(m5391e());
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final float readFloat() {
        return Float.intBitsToFloat(m5393d());
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final String readString() {
        int b = m5397b();
        if (b > 0) {
            int i = this.f7367g;
            int i2 = this.f7369i;
            if (b <= i - i2) {
                String str = new String(this.f7366f, i2, b, zzdrv.f14562a);
                this.f7369i += b;
                return str;
            }
        }
        if (b == 0) {
            return "";
        }
        if (b > this.f7367g) {
            return new String(m5394c(b), zzdrv.f14562a);
        }
        m5398a(b);
        String str2 = new String(this.f7366f, this.f7369i, b, zzdrv.f14562a);
        this.f7369i += b;
        return str2;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final int zzayc() {
        if (zzays()) {
            this.f7370j = 0;
            return 0;
        }
        this.f7370j = m5397b();
        int i = this.f7370j;
        if ((i >>> 3) != 0) {
            return i;
        }
        throw zzdse.m3344d();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final long zzayd() {
        return m5395c();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final long zzaye() {
        return m5395c();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final int zzayf() {
        return m5397b();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final long zzayg() {
        return m5391e();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final int zzayh() {
        return m5393d();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final boolean zzayi() {
        return m5395c() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final String zzayj() {
        byte[] bArr;
        int b = m5397b();
        int i = this.f7369i;
        int i2 = 0;
        if (b <= this.f7367g - i && b > 0) {
            bArr = this.f7366f;
            this.f7369i = i + b;
            i2 = i;
        } else if (b == 0) {
            return "";
        } else {
            if (b <= this.f7367g) {
                m5398a(b);
                bArr = this.f7366f;
                this.f7369i = b;
            } else {
                bArr = m5394c(b);
            }
        }
        return akl.m4999b(bArr, i2, b);
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final zzdqk zzayk() {
        int b = m5397b();
        int i = this.f7367g;
        int i2 = this.f7369i;
        if (b <= i - i2 && b > 0) {
            zzdqk zzi = zzdqk.zzi(this.f7366f, i2, b);
            this.f7369i += b;
            return zzi;
        } else if (b == 0) {
            return zzdqk.zzhhx;
        } else {
            byte[] d = m5392d(b);
            if (d != null) {
                return zzdqk.zzu(d);
            }
            int i3 = this.f7369i;
            int i4 = this.f7367g;
            int i5 = i4 - i3;
            this.f7371k += i4;
            this.f7369i = 0;
            this.f7367g = 0;
            List<byte[]> e = m5390e(b - i5);
            byte[] bArr = new byte[b];
            System.arraycopy(this.f7366f, i3, bArr, 0, i5);
            for (byte[] bArr2 : e) {
                System.arraycopy(bArr2, 0, bArr, i5, bArr2.length);
                i5 += bArr2.length;
            }
            return zzdqk.m3401a(bArr);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final int zzayl() {
        return m5397b();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final int zzaym() {
        return m5397b();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final int zzayn() {
        return m5393d();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final long zzayo() {
        return m5391e();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final int zzayp() {
        return zzfl(m5397b());
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final long zzayq() {
        return zzff(m5395c());
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final boolean zzays() {
        return this.f7369i == this.f7367g && !m5396b(1);
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final int zzayt() {
        return this.f7371k + this.f7369i;
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final void zzfh(int i) {
        if (this.f7370j != i) {
            throw zzdse.m3343e();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final boolean zzfi(int i) {
        int zzayc;
        int i2 = i & 7;
        if (i2 != 0) {
            if (i2 == 1) {
                m5388f(8);
                return true;
            } else if (i2 == 2) {
                m5388f(m5397b());
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
                    m5388f(4);
                    return true;
                }
                throw zzdse.m3342f();
            }
        } else if (this.f7367g - this.f7369i >= 10) {
            for (int i3 = 0; i3 < 10; i3++) {
                byte[] bArr = this.f7366f;
                int i4 = this.f7369i;
                this.f7369i = i4 + 1;
                if (bArr[i4] >= 0) {
                    return true;
                }
            }
            throw zzdse.m3345c();
        } else {
            for (int i5 = 0; i5 < 10; i5++) {
                if (m5387g() >= 0) {
                    return true;
                }
            }
            throw zzdse.m3345c();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final int zzfj(int i) {
        if (i >= 0) {
            int i2 = i + this.f7371k + this.f7369i;
            int i3 = this.f7372l;
            if (i2 <= i3) {
                this.f7372l = i2;
                m5389f();
                return i3;
            }
            throw zzdse.m3347a();
        }
        throw zzdse.m3346b();
    }

    @Override // com.google.android.gms.internal.ads.zzdqw
    public final void zzfk(int i) {
        this.f7372l = i;
        m5389f();
    }
}
