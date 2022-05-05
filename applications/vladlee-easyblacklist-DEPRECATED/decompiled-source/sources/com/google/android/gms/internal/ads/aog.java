package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aog.class */
final class aog implements aof {

    /* renamed from: a */
    private final int f7991a;

    /* renamed from: b */
    private MediaCodecInfo[] f7992b;

    public aog(boolean z) {
        this.f7991a = z ? 1 : 0;
    }

    /* renamed from: c */
    private final void m4816c() {
        if (this.f7992b == null) {
            this.f7992b = new MediaCodecList(this.f7991a).getCodecInfos();
        }
    }

    @Override // com.google.android.gms.internal.ads.aof
    /* renamed from: a */
    public final int mo4820a() {
        m4816c();
        return this.f7992b.length;
    }

    @Override // com.google.android.gms.internal.ads.aof
    /* renamed from: a */
    public final MediaCodecInfo mo4819a(int i) {
        m4816c();
        return this.f7992b[i];
    }

    @Override // com.google.android.gms.internal.ads.aof
    /* renamed from: a */
    public final boolean mo4818a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    @Override // com.google.android.gms.internal.ads.aof
    /* renamed from: b */
    public final boolean mo4817b() {
        return true;
    }
}
