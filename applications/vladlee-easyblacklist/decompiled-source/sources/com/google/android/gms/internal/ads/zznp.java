package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zznp.class */
public final class zznp implements zznj {

    /* renamed from: a */
    private final boolean f15191a;

    /* renamed from: b */
    private final int f15192b;

    /* renamed from: c */
    private final byte[] f15193c;

    /* renamed from: d */
    private final zznk[] f15194d;

    /* renamed from: e */
    private int f15195e;

    /* renamed from: f */
    private int f15196f;

    /* renamed from: g */
    private int f15197g;

    /* renamed from: h */
    private zznk[] f15198h;

    private zznp() {
        zzoc.checkArgument(true);
        zzoc.checkArgument(true);
        this.f15191a = true;
        this.f15192b = 65536;
        this.f15197g = 0;
        this.f15198h = new zznk[100];
        this.f15193c = null;
        this.f15194d = new zznk[1];
    }

    public zznp(boolean z, int i) {
        this();
    }

    public final void reset() {
        synchronized (this) {
            if (this.f15191a) {
                zzba(0);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zznj
    public final void zza(zznk zznkVar) {
        synchronized (this) {
            this.f15194d[0] = zznkVar;
            zza(this.f15194d);
        }
    }

    @Override // com.google.android.gms.internal.ads.zznj
    public final void zza(zznk[] zznkVarArr) {
        boolean z;
        synchronized (this) {
            if (this.f15197g + zznkVarArr.length >= this.f15198h.length) {
                this.f15198h = (zznk[]) Arrays.copyOf(this.f15198h, Math.max(this.f15198h.length << 1, this.f15197g + zznkVarArr.length));
            }
            for (zznk zznkVar : zznkVarArr) {
                if (!(zznkVar.data == null || zznkVar.data.length == this.f15192b)) {
                    z = false;
                    zzoc.checkArgument(z);
                    zznk[] zznkVarArr2 = this.f15198h;
                    int i = this.f15197g;
                    this.f15197g = i + 1;
                    zznkVarArr2[i] = zznkVar;
                }
                z = true;
                zzoc.checkArgument(z);
                zznk[] zznkVarArr22 = this.f15198h;
                int i2 = this.f15197g;
                this.f15197g = i2 + 1;
                zznkVarArr22[i2] = zznkVar;
            }
            this.f15196f -= zznkVarArr.length;
            notifyAll();
        }
    }

    public final void zzba(int i) {
        synchronized (this) {
            boolean z = i < this.f15195e;
            this.f15195e = i;
            if (z) {
                zzm();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zznj
    public final zznk zzif() {
        zznk zznkVar;
        synchronized (this) {
            this.f15196f++;
            if (this.f15197g > 0) {
                zznk[] zznkVarArr = this.f15198h;
                int i = this.f15197g - 1;
                this.f15197g = i;
                zznkVar = zznkVarArr[i];
                this.f15198h[this.f15197g] = null;
            } else {
                zznkVar = new zznk(new byte[this.f15192b], 0);
            }
        }
        return zznkVar;
    }

    @Override // com.google.android.gms.internal.ads.zznj
    public final int zzig() {
        return this.f15192b;
    }

    public final int zzii() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f15196f;
            i2 = this.f15192b;
        }
        return i * i2;
    }

    @Override // com.google.android.gms.internal.ads.zznj
    public final void zzm() {
        synchronized (this) {
            int max = Math.max(0, zzoq.zzf(this.f15195e, this.f15192b) - this.f15196f);
            if (max < this.f15197g) {
                Arrays.fill(this.f15198h, max, this.f15197g, (Object) null);
                this.f15197g = max;
            }
        }
    }
}
