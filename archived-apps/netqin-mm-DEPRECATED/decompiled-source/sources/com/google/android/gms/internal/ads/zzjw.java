package com.google.android.gms.internal.ads;

import com.google.common.collect.MapMakerInternalMap;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzjw.class */
public final class zzjw implements zzjy {

    /* renamed from: g */
    public static final byte[] f28430g = new byte[4096];

    /* renamed from: a */
    public final zzom f28431a;

    /* renamed from: b */
    public final long f28432b;

    /* renamed from: c */
    public long f28433c;

    /* renamed from: d */
    public byte[] f28434d = new byte[MapMakerInternalMap.MAX_SEGMENTS];

    /* renamed from: e */
    public int f28435e;

    /* renamed from: f */
    public int f28436f;

    public zzjw(zzom zzomVar, long j, long j2) {
        this.f28431a = zzomVar;
        this.f28433c = j;
        this.f28432b = j2;
    }

    /* renamed from: a */
    public final int m11896a(byte[] bArr, int i, int i2, int i3, boolean z) throws InterruptedException, IOException {
        if (!Thread.interrupted()) {
            int read = this.f28431a.read(bArr, i + i3, i2 - i3);
            if (read != -1) {
                return i3 + read;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedException();
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    /* renamed from: a */
    public final long mo11888a() {
        return this.f28432b;
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    /* renamed from: a */
    public final void mo11887a(int i) throws IOException, InterruptedException {
        m11897a(i, false);
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    /* renamed from: a */
    public final void mo11886a(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        if (m11897a(i2, false)) {
            System.arraycopy(this.f28434d, this.f28435e - i2, bArr, i, i2);
        }
    }

    /* renamed from: a */
    public final boolean m11897a(int i, boolean z) throws IOException, InterruptedException {
        int i2 = this.f28435e + i;
        byte[] bArr = this.f28434d;
        if (i2 > bArr.length) {
            this.f28434d = Arrays.copyOf(this.f28434d, zzpq.m11627a(bArr.length << 1, MapMakerInternalMap.MAX_SEGMENTS + i2, i2 + 524288));
        }
        int min = Math.min(this.f28436f - this.f28435e, i);
        while (min < i) {
            int a = m11896a(this.f28434d, this.f28435e, i, min, false);
            min = a;
            if (a == -1) {
                return false;
            }
        }
        int i3 = this.f28435e + i;
        this.f28435e = i3;
        this.f28436f = Math.max(this.f28436f, i3);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    /* renamed from: a */
    public final boolean mo11885a(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        int b = m11895b(bArr, i, i2);
        while (b < i2 && b != -1) {
            b = m11896a(bArr, i, i2, b, z);
        }
        m11892f(b);
        return b != -1;
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    /* renamed from: b */
    public final int mo11883b(int i) throws IOException, InterruptedException {
        int d = m11894d(i);
        int i2 = d;
        if (d == 0) {
            byte[] bArr = f28430g;
            i2 = m11896a(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        m11892f(i2);
        return i2;
    }

    /* renamed from: b */
    public final int m11895b(byte[] bArr, int i, int i2) {
        int i3 = this.f28436f;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.f28434d, 0, bArr, i, min);
        m11893e(min);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    /* renamed from: b */
    public final void mo11884b() {
        this.f28435e = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    /* renamed from: c */
    public final void mo11882c(int i) throws IOException, InterruptedException {
        int d = m11894d(i);
        while (d < i && d != -1) {
            byte[] bArr = f28430g;
            d = m11896a(bArr, -d, Math.min(i, bArr.length + d), d, false);
        }
        m11892f(d);
    }

    /* renamed from: d */
    public final int m11894d(int i) {
        int min = Math.min(this.f28436f, i);
        m11893e(min);
        return min;
    }

    /* renamed from: e */
    public final void m11893e(int i) {
        int i2 = this.f28436f - i;
        this.f28436f = i2;
        this.f28435e = 0;
        byte[] bArr = this.f28434d;
        byte[] bArr2 = bArr;
        if (i2 < bArr.length - 524288) {
            bArr2 = new byte[i2 + MapMakerInternalMap.MAX_SEGMENTS];
        }
        System.arraycopy(this.f28434d, i, bArr2, 0, this.f28436f);
        this.f28434d = bArr2;
    }

    /* renamed from: f */
    public final void m11892f(int i) {
        if (i != -1) {
            this.f28433c += i;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final long getPosition() {
        return this.f28433c;
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final int read(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        int b = m11895b(bArr, i, i2);
        int i3 = b;
        if (b == 0) {
            i3 = m11896a(bArr, i, i2, 0, true);
        }
        m11892f(i3);
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.zzjy
    public final void readFully(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        mo11885a(bArr, i, i2, false);
    }
}
