package com.google.android.gms.internal.ads;

import com.google.common.collect.MapMakerInternalMap;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzoq.class */
public final class zzoq implements zzok {

    /* renamed from: a */
    public final boolean f28746a;

    /* renamed from: b */
    public final int f28747b;

    /* renamed from: c */
    public final zzoh[] f28748c;

    /* renamed from: d */
    public int f28749d;

    /* renamed from: e */
    public int f28750e;

    /* renamed from: f */
    public int f28751f;

    /* renamed from: g */
    public zzoh[] f28752g;

    public zzoq(boolean z, int i) {
        this(true, MapMakerInternalMap.MAX_SEGMENTS, 0);
    }

    public zzoq(boolean z, int i, int i2) {
        zzoz.m11696a(true);
        zzoz.m11696a(true);
        this.f28746a = true;
        this.f28747b = MapMakerInternalMap.MAX_SEGMENTS;
        this.f28751f = 0;
        this.f28752g = new zzoh[100];
        this.f28748c = new zzoh[1];
    }

    @Override // com.google.android.gms.internal.ads.zzok
    /* renamed from: a */
    public final int mo11723a() {
        return this.f28747b;
    }

    /* renamed from: a */
    public final void m11722a(int i) {
        synchronized (this) {
            boolean z = i < this.f28749d;
            this.f28749d = i;
            if (z) {
                mo11716u();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzok
    /* renamed from: a */
    public final void mo11721a(zzoh zzohVar) {
        synchronized (this) {
            this.f28748c[0] = zzohVar;
            mo11720a(this.f28748c);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzok
    /* renamed from: a */
    public final void mo11720a(zzoh[] zzohVarArr) {
        boolean z;
        synchronized (this) {
            if (this.f28751f + zzohVarArr.length >= this.f28752g.length) {
                this.f28752g = (zzoh[]) Arrays.copyOf(this.f28752g, Math.max(this.f28752g.length << 1, this.f28751f + zzohVarArr.length));
            }
            for (zzoh zzohVar : zzohVarArr) {
                if (!(zzohVar.f28713a == null || zzohVar.f28713a.length == this.f28747b)) {
                    z = false;
                    zzoz.m11696a(z);
                    zzoh[] zzohVarArr2 = this.f28752g;
                    int i = this.f28751f;
                    this.f28751f = i + 1;
                    zzohVarArr2[i] = zzohVar;
                }
                z = true;
                zzoz.m11696a(z);
                zzoh[] zzohVarArr22 = this.f28752g;
                int i2 = this.f28751f;
                this.f28751f = i2 + 1;
                zzohVarArr22[i2] = zzohVar;
            }
            this.f28750e -= zzohVarArr.length;
            notifyAll();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzok
    /* renamed from: b */
    public final zzoh mo11719b() {
        zzoh zzohVar;
        synchronized (this) {
            this.f28750e++;
            if (this.f28751f > 0) {
                zzoh[] zzohVarArr = this.f28752g;
                int i = this.f28751f - 1;
                this.f28751f = i;
                zzohVar = zzohVarArr[i];
                this.f28752g[i] = null;
            } else {
                zzohVar = new zzoh(new byte[this.f28747b], 0);
            }
        }
        return zzohVar;
    }

    /* renamed from: c */
    public final void m11718c() {
        synchronized (this) {
            if (this.f28746a) {
                m11722a(0);
            }
        }
    }

    /* renamed from: d */
    public final int m11717d() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f28750e;
            i2 = this.f28747b;
        }
        return i * i2;
    }

    @Override // com.google.android.gms.internal.ads.zzok
    /* renamed from: u */
    public final void mo11716u() {
        synchronized (this) {
            int max = Math.max(0, zzpq.m11628a(this.f28749d, this.f28747b) - this.f28750e);
            if (max < this.f28751f) {
                Arrays.fill(this.f28752g, max, this.f28751f, (Object) null);
                this.f28751f = max;
            }
        }
    }
}
