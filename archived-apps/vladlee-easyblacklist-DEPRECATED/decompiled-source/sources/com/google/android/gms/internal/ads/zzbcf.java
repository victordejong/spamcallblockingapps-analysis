package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbcf.class */
public final class zzbcf {

    /* renamed from: a */
    private long f11705a;

    public final long zzl(ByteBuffer byteBuffer) {
        zzbh zzbhVar;
        zzbk zzbkVar;
        long j = this.f11705a;
        if (j > 0) {
            return j;
        }
        try {
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.flip();
            Iterator<zzbf> it = new zzbd(new C1940hx(duplicate), C1942hz.f8587a).zzbdl().iterator();
            while (true) {
                zzbkVar = null;
                if (!it.hasNext()) {
                    zzbhVar = null;
                    break;
                }
                zzbf next = it.next();
                if (next instanceof zzbh) {
                    zzbhVar = (zzbh) next;
                    break;
                }
            }
            Iterator<zzbf> it2 = zzbhVar.zzbdl().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                zzbf next2 = it2.next();
                if (next2 instanceof zzbk) {
                    zzbkVar = (zzbk) next2;
                    break;
                }
            }
            this.f11705a = (zzbkVar.getDuration() * 1000) / zzbkVar.zzr();
            return this.f11705a;
        } catch (IOException | RuntimeException e) {
            return 0L;
        }
    }
}
