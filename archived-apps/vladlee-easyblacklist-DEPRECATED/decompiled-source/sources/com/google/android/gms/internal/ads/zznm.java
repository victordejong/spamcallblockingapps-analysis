package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zznm.class */
public final class zznm implements zznl {

    /* renamed from: a */
    private final byte[] f15186a;

    /* renamed from: b */
    private Uri f15187b;

    /* renamed from: c */
    private int f15188c;

    /* renamed from: d */
    private int f15189d;

    public zznm(byte[] bArr) {
        zzoc.checkNotNull(bArr);
        zzoc.checkArgument(bArr.length > 0);
        this.f15186a = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zznl
    public final void close() {
        this.f15187b = null;
    }

    @Override // com.google.android.gms.internal.ads.zznl
    public final Uri getUri() {
        return this.f15187b;
    }

    @Override // com.google.android.gms.internal.ads.zznl
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f15189d;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(this.f15186a, this.f15188c, bArr, i, min);
        this.f15188c += min;
        this.f15189d -= min;
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zznl
    public final long zza(zznq zznqVar) {
        this.f15187b = zznqVar.uri;
        this.f15188c = (int) zznqVar.zzamw;
        this.f15189d = (int) (zznqVar.zzce == -1 ? this.f15186a.length - zznqVar.zzamw : zznqVar.zzce);
        int i = this.f15189d;
        if (i > 0 && this.f15188c + i <= this.f15186a.length) {
            return i;
        }
        int i2 = this.f15188c;
        long j = zznqVar.zzce;
        int length = this.f15186a.length;
        StringBuilder sb = new StringBuilder(77);
        sb.append("Unsatisfiable range: [");
        sb.append(i2);
        sb.append(", ");
        sb.append(j);
        sb.append("], length: ");
        sb.append(length);
        throw new IOException(sb.toString());
    }
}
