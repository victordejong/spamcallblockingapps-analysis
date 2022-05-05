package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amw.class */
final class amw implements zzhm {

    /* renamed from: c */
    private int[] f7716c;

    /* renamed from: d */
    private boolean f7717d;

    /* renamed from: e */
    private int[] f7718e;

    /* renamed from: h */
    private boolean f7721h;

    /* renamed from: f */
    private ByteBuffer f7719f = zzaha;

    /* renamed from: g */
    private ByteBuffer f7720g = zzaha;

    /* renamed from: a */
    private int f7714a = -1;

    /* renamed from: b */
    private int f7715b = -1;

    /* renamed from: a */
    public final void m4887a(int[] iArr) {
        this.f7716c = iArr;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final void flush() {
        this.f7720g = zzaha;
        this.f7721h = false;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final boolean isActive() {
        return this.f7717d;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final void reset() {
        flush();
        this.f7719f = zzaha;
        this.f7714a = -1;
        this.f7715b = -1;
        this.f7718e = null;
        this.f7717d = false;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final boolean zzb(int i, int i2, int i3) {
        boolean z = !Arrays.equals(this.f7716c, this.f7718e);
        this.f7718e = this.f7716c;
        if (this.f7718e == null) {
            this.f7717d = false;
            return z;
        } else if (i3 != 2) {
            throw new zzhp(i, i2, i3);
        } else if (!z && this.f7715b == i && this.f7714a == i2) {
            return false;
        } else {
            this.f7715b = i;
            this.f7714a = i2;
            this.f7717d = i2 != this.f7718e.length;
            int i4 = 0;
            while (true) {
                int[] iArr = this.f7718e;
                if (i4 >= iArr.length) {
                    return true;
                }
                int i5 = iArr[i4];
                if (i5 < i2) {
                    this.f7717d = (i5 != i4) | this.f7717d;
                    i4++;
                } else {
                    throw new zzhp(i, i2, i3);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final boolean zzeu() {
        return this.f7721h && this.f7720g == zzaha;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final int zzez() {
        int[] iArr = this.f7718e;
        return iArr == null ? this.f7714a : iArr.length;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final int zzfa() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final void zzfb() {
        this.f7721h = true;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final ByteBuffer zzfc() {
        ByteBuffer byteBuffer = this.f7720g;
        this.f7720g = zzaha;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzhm
    public final void zzi(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int length = (((limit - position) / (this.f7714a * 2)) * this.f7718e.length) << 1;
        if (this.f7719f.capacity() < length) {
            this.f7719f = ByteBuffer.allocateDirect(length).order(ByteOrder.nativeOrder());
        } else {
            this.f7719f.clear();
        }
        while (position < limit) {
            for (int i : this.f7718e) {
                this.f7719f.putShort(byteBuffer.getShort((i * 2) + position));
            }
            position += this.f7714a << 1;
        }
        byteBuffer.position(limit);
        this.f7719f.flip();
        this.f7720g = this.f7719f;
    }
}
