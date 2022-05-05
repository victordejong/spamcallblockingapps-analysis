package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzom.class */
public final class zzom {

    /* renamed from: a */
    private byte[] f15249a;

    /* renamed from: b */
    private int f15250b;

    /* renamed from: c */
    private int f15251c;

    /* renamed from: d */
    private int f15252d = 0;

    public zzom(byte[] bArr, int i, int i2) {
        this.f15249a = bArr;
        this.f15251c = i;
        this.f15250b = i2;
        m3163b();
    }

    /* renamed from: a */
    private final int m3165a() {
        int i = 0;
        int i2 = 0;
        while (!zziu()) {
            i2++;
        }
        if (i2 > 0) {
            i = zzbh(i2);
        }
        return ((1 << i2) - 1) + i;
    }

    /* renamed from: a */
    private final boolean m3164a(int i) {
        if (2 > i || i >= this.f15250b) {
            return false;
        }
        byte[] bArr = this.f15249a;
        return bArr[i] == 3 && bArr[i - 2] == 0 && bArr[i - 1] == 0;
    }

    /* renamed from: b */
    private final void m3163b() {
        int i;
        int i2;
        int i3 = this.f15251c;
        zzoc.checkState(i3 >= 0 && (i = this.f15252d) >= 0 && i < 8 && (i3 < (i2 = this.f15250b) || (i3 == i2 && i == 0)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v50 */
    public final int zzbh(int i) {
        boolean z;
        if (i == 0) {
            return 0;
        }
        int i2 = i / 8;
        int i3 = 0;
        int i4 = i;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = m3164a(this.f15251c + 1) ? this.f15251c + 2 : this.f15251c + 1;
            int i7 = this.f15252d;
            if (i7 != 0) {
                byte[] bArr = this.f15249a;
                z = ((bArr[i6] & 255) >>> (8 - i7)) | ((bArr[this.f15251c] & 255) << i7);
            } else {
                z = this.f15249a[this.f15251c];
            }
            i4 -= 8;
            int i8 = z == true ? 1 : 0;
            char c = z == true ? 1 : 0;
            i3 |= (255 & i8) << i4;
            this.f15251c = i6;
        }
        int i9 = i3;
        if (i4 > 0) {
            int i10 = this.f15252d + i4;
            byte b = (byte) (255 >> (8 - i4));
            int i11 = m3164a(this.f15251c + 1) ? this.f15251c + 2 : this.f15251c + 1;
            byte[] bArr2 = this.f15249a;
            int i12 = this.f15251c;
            if (i10 > 8) {
                i9 = (b & (((255 & bArr2[i11]) >> (16 - i10)) | ((bArr2[i12] & 255) << (i10 - 8)))) | i3;
            } else {
                int i13 = (b & ((255 & bArr2[i12]) >> (8 - i10))) | i3;
                i9 = i13;
                if (i10 == 8) {
                    i9 = i13;
                }
                this.f15252d = i10 % 8;
            }
            this.f15251c = i11;
            this.f15252d = i10 % 8;
        }
        m3163b();
        return i9;
    }

    public final void zzbi(int i) {
        int i2 = this.f15251c;
        this.f15251c = (i / 8) + i2;
        this.f15252d += i % 8;
        int i3 = this.f15252d;
        int i4 = i2;
        if (i3 > 7) {
            this.f15251c++;
            this.f15252d = i3 - 8;
            i4 = i2;
        }
        while (true) {
            int i5 = i4 + 1;
            if (i5 <= this.f15251c) {
                i4 = i5;
                if (m3164a(i5)) {
                    this.f15251c++;
                    i4 = i5 + 2;
                }
            } else {
                m3163b();
                return;
            }
        }
    }

    public final boolean zziu() {
        return zzbh(1) == 1;
    }

    public final int zziv() {
        return m3165a();
    }

    public final int zziw() {
        int a = m3165a();
        return (a % 2 == 0 ? -1 : 1) * ((a + 1) / 2);
    }
}
