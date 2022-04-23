package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.PushbackInputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aqn.class */
final class aqn extends PushbackInputStream {

    /* renamed from: a */
    private final /* synthetic */ aqi f8179a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aqn(aqi aqiVar, InputStream inputStream) {
        super(inputStream, 1);
        this.f8179a = aqiVar;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            zzse.m3077a(this.f8179a.f8167a);
            super.close();
        }
    }
}
