package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdws.class */
public interface zzdws extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    long position();

    int read(ByteBuffer byteBuffer);

    long size();

    void zzfc(long j);

    ByteBuffer zzh(long j, long j2);
}
