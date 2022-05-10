package com.google.android.gms.internal.clearcut;

import p131c.p161d.p170b.p224d.p252g.p255c.C4427w;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbk.class */
public abstract class zzbk {
    public zzbk() {
    }

    /* renamed from: a */
    public static int m10833a(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* renamed from: a */
    public static long m10832a(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    /* renamed from: a */
    public static zzbk m10831a(byte[] bArr, int i, int i2, boolean z) {
        C4427w wVar = new C4427w(bArr, 0, i2, false);
        try {
            wVar.m25628b(i2);
            return wVar;
        } catch (zzco e) {
            throw new IllegalArgumentException(e);
        }
    }
}
