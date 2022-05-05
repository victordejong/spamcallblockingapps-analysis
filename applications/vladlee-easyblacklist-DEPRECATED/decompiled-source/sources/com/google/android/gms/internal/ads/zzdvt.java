package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvt.class */
public class zzdvt {

    /* renamed from: b */
    protected volatile int f14607b = -1;

    public static final byte[] zza(zzdvt zzdvtVar) {
        byte[] bArr = new byte[zzdvtVar.zzazu()];
        try {
            zzdvo zzq = zzdvo.zzq(bArr, 0, bArr.length);
            zzdvtVar.zza(zzq);
            zzq.zzazd();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    /* renamed from: a */
    protected int mo3006a() {
        return 0;
    }

    public String toString() {
        return zzdvw.zzb(this);
    }

    public void zza(zzdvo zzdvoVar) {
    }

    public final int zzazu() {
        int a = mo3006a();
        this.f14607b = a;
        return a;
    }

    /* renamed from: zzbcr */
    public zzdvt clone() {
        return (zzdvt) super.clone();
    }
}
