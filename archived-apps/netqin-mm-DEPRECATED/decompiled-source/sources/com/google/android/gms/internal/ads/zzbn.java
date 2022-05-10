package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbn.class */
public class zzbn extends zzeoi implements Closeable {
    static {
        zzeoq.m12204a(zzbn.class);
    }

    public zzbn(zzeok zzeokVar, zzbo zzboVar) throws IOException {
        mo12210a(zzeokVar, zzeokVar.size(), zzboVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeoi, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f28114b.close();
    }

    @Override // com.google.android.gms.internal.ads.zzeoi
    public String toString() {
        String obj = this.f28114b.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 7);
        sb.append("model(");
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
