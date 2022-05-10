package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
import p131c.p161d.p170b.p224d.p252g.p253a.C3870o8;
import p131c.p161d.p170b.p224d.p252g.p253a.C3944q8;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfd.class */
public final class zzbfd {

    /* renamed from: a */
    public long f24925a;

    /* renamed from: a */
    public final long m15676a(ByteBuffer byteBuffer) {
        zzbr zzbrVar;
        zzbu zzbuVar;
        long j = this.f24925a;
        if (j > 0) {
            return j;
        }
        try {
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.flip();
            Iterator<zzbp> it = new zzbn(new C3870o8(duplicate), C3944q8.f14603c).m12211a().iterator();
            while (true) {
                zzbuVar = null;
                if (!it.hasNext()) {
                    zzbrVar = null;
                    break;
                }
                zzbp next = it.next();
                if (next instanceof zzbr) {
                    zzbrVar = (zzbr) next;
                    break;
                }
            }
            Iterator<zzbp> it2 = zzbrVar.m12211a().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                zzbp next2 = it2.next();
                if (next2 instanceof zzbu) {
                    zzbuVar = (zzbu) next2;
                    break;
                }
            }
            long d = (zzbuVar.m15039d() * 1000) / zzbuVar.m15038e();
            this.f24925a = d;
            return d;
        } catch (IOException | RuntimeException e) {
            return 0L;
        }
    }
}
