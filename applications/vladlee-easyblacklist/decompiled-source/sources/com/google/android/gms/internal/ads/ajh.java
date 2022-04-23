package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.nio.charset.Charset;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajh.class */
public final class ajh extends zzdqk {

    /* renamed from: a */
    static final int[] f7472a = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Api.BaseClientBuilder.API_PRIORITY_OTHER};

    /* renamed from: b */
    private final int f7473b;

    /* renamed from: c */
    private final zzdqk f7474c;

    /* renamed from: d */
    private final zzdqk f7475d;

    /* renamed from: e */
    private final int f7476e;

    /* renamed from: f */
    private final int f7477f;

    private ajh(zzdqk zzdqkVar, zzdqk zzdqkVar2) {
        this.f7474c = zzdqkVar;
        this.f7475d = zzdqkVar2;
        this.f7476e = zzdqkVar.size();
        this.f7473b = this.f7476e + zzdqkVar2.size();
        this.f7477f = Math.max(zzdqkVar.mo3409a(), zzdqkVar2.mo3409a()) + 1;
    }

    public /* synthetic */ ajh(zzdqk zzdqkVar, zzdqk zzdqkVar2, byte b) {
        this(zzdqkVar, zzdqkVar2);
    }

    /* renamed from: a */
    public static /* synthetic */ zzdqk m5239a(ajh ajhVar) {
        return ajhVar.f7474c;
    }

    /* renamed from: a */
    public static zzdqk m5238a(zzdqk zzdqkVar, zzdqk zzdqkVar2) {
        if (zzdqkVar2.size() == 0) {
            return zzdqkVar;
        }
        if (zzdqkVar.size() == 0) {
            return zzdqkVar2;
        }
        int size = zzdqkVar.size() + zzdqkVar2.size();
        if (size < 128) {
            return m5236b(zzdqkVar, zzdqkVar2);
        }
        if (zzdqkVar instanceof ajh) {
            ajh ajhVar = (ajh) zzdqkVar;
            if (ajhVar.f7475d.size() + zzdqkVar2.size() < 128) {
                return new ajh(ajhVar.f7474c, m5236b(ajhVar.f7475d, zzdqkVar2));
            } else if (ajhVar.f7474c.mo3409a() > ajhVar.f7475d.mo3409a() && ajhVar.mo3409a() > zzdqkVar2.mo3409a()) {
                return new ajh(ajhVar.f7474c, new ajh(ajhVar.f7475d, zzdqkVar2));
            }
        }
        return size >= f7472a[Math.max(zzdqkVar.mo3409a(), zzdqkVar2.mo3409a()) + 1] ? new ajh(zzdqkVar, zzdqkVar2) : ajj.m5192a(new ajj((byte) 0), zzdqkVar, zzdqkVar2);
    }

    /* renamed from: b */
    public static /* synthetic */ zzdqk m5237b(ajh ajhVar) {
        return ajhVar.f7475d;
    }

    /* renamed from: b */
    private static zzdqk m5236b(zzdqk zzdqkVar, zzdqk zzdqkVar2) {
        int size = zzdqkVar.size();
        int size2 = zzdqkVar2.size();
        byte[] bArr = new byte[size + size2];
        zzdqkVar.zza(bArr, 0, 0, size);
        zzdqkVar2.zza(bArr, 0, size, size2);
        return zzdqk.m3401a(bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    /* renamed from: a */
    public final byte mo3407a(int i) {
        zzdqk zzdqkVar;
        int i2 = this.f7476e;
        if (i < i2) {
            zzdqkVar = this.f7474c;
        } else {
            zzdqkVar = this.f7475d;
            i -= i2;
        }
        return zzdqkVar.mo3407a(i);
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    /* renamed from: a */
    public final int mo3409a() {
        return this.f7477f;
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    /* renamed from: a */
    public final int mo3405a(int i, int i2, int i3) {
        zzdqk zzdqkVar;
        int i4 = this.f7476e;
        if (i2 + i3 <= i4) {
            zzdqkVar = this.f7474c;
        } else if (i2 >= i4) {
            zzdqkVar = this.f7475d;
            i2 -= i4;
        } else {
            int i5 = i4 - i2;
            i = this.f7474c.mo3405a(i, i2, i5);
            zzdqkVar = this.f7475d;
            i2 = 0;
            i3 -= i5;
        }
        return zzdqkVar.mo3405a(i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    /* renamed from: a */
    protected final String mo3403a(Charset charset) {
        return new String(toByteArray(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    /* renamed from: a */
    public final void mo3404a(zzdqh zzdqhVar) {
        this.f7474c.mo3404a(zzdqhVar);
        this.f7475d.mo3404a(zzdqhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    /* renamed from: a */
    public final void mo3400a(byte[] bArr, int i, int i2, int i3) {
        zzdqk zzdqkVar;
        int i4 = this.f7476e;
        if (i + i3 <= i4) {
            zzdqkVar = this.f7474c;
        } else if (i >= i4) {
            zzdqkVar = this.f7475d;
            i -= i4;
        } else {
            int i5 = i4 - i;
            this.f7474c.mo3400a(bArr, i, i2, i5);
            zzdqkVar = this.f7475d;
            i = 0;
            i2 += i5;
            i3 -= i5;
        }
        zzdqkVar.mo3400a(bArr, i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    /* renamed from: b */
    public final int mo3397b(int i, int i2, int i3) {
        zzdqk zzdqkVar;
        int i4 = this.f7476e;
        if (i2 + i3 <= i4) {
            zzdqkVar = this.f7474c;
        } else if (i2 >= i4) {
            zzdqkVar = this.f7475d;
            i2 -= i4;
        } else {
            int i5 = i4 - i2;
            i = this.f7474c.mo3397b(i, i2, i5);
            zzdqkVar = this.f7475d;
            i2 = 0;
            i3 -= i5;
        }
        return zzdqkVar.mo3397b(i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    /* renamed from: b */
    public final boolean mo3399b() {
        return this.f7473b >= f7472a[this.f7477f];
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdqk)) {
            return false;
        }
        zzdqk zzdqkVar = (zzdqk) obj;
        if (this.f7473b != zzdqkVar.size()) {
            return false;
        }
        if (this.f7473b == 0) {
            return true;
        }
        int c = m3396c();
        int c2 = zzdqkVar.m3396c();
        if (c != 0 && c2 != 0 && c != c2) {
            return false;
        }
        ajm ajmVar = new ajm(this, (byte) 0);
        ahl next = ajmVar.next();
        ajm ajmVar2 = new ajm(zzdqkVar, (byte) 0);
        ahl next2 = ajmVar2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int size = next.size() - i;
            int size2 = next2.size() - i2;
            int min = Math.min(size, size2);
            if (!(i == 0 ? next.mo5400a(next2, i2, min) : next2.mo5400a(next, i, min))) {
                return false;
            }
            i3 += min;
            int i4 = this.f7473b;
            if (i3 < i4) {
                if (min == size) {
                    i = 0;
                    next = ajmVar.next();
                } else {
                    i += min;
                    next = next;
                }
                if (min == size2) {
                    next2 = ajmVar2.next();
                    i2 = 0;
                } else {
                    i2 += min;
                }
            } else if (i3 == i4) {
                return true;
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqk, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final int size() {
        return this.f7473b;
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final zzdqp zzaxs() {
        return new ajk(this);
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final boolean zzaxu() {
        int a = this.f7474c.mo3405a(0, 0, this.f7476e);
        zzdqk zzdqkVar = this.f7475d;
        return zzdqkVar.mo3405a(a, 0, zzdqkVar.size()) == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final zzdqw zzaxv() {
        return new ahp(new ajl(this), (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final byte zzfe(int i) {
        m3406a(i, this.f7473b);
        return mo3407a(i);
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final zzdqk zzy(int i, int i2) {
        zzdqk zzdqkVar;
        int c = m3395c(i, i2, this.f7473b);
        if (c == 0) {
            return zzdqk.zzhhx;
        }
        if (c == this.f7473b) {
            return this;
        }
        int i3 = this.f7476e;
        if (i2 <= i3) {
            zzdqkVar = this.f7474c;
        } else if (i >= i3) {
            zzdqkVar = this.f7475d;
            i -= i3;
            i2 -= i3;
        } else {
            zzdqk zzdqkVar2 = this.f7474c;
            return new ajh(zzdqkVar2.zzy(i, zzdqkVar2.size()), this.f7475d.zzy(0, i2 - this.f7476e));
        }
        return zzdqkVar.zzy(i, i2);
    }
}
