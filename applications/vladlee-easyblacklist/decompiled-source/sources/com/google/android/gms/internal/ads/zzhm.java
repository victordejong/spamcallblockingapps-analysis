package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzhm.class */
public interface zzhm {
    public static final ByteBuffer zzaha = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    void flush();

    boolean isActive();

    void reset();

    boolean zzb(int i, int i2, int i3);

    boolean zzeu();

    int zzez();

    int zzfa();

    void zzfb();

    ByteBuffer zzfc();

    void zzi(ByteBuffer byteBuffer);
}
