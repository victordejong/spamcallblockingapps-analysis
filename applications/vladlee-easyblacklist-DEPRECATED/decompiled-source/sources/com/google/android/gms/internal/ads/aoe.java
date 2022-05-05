package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aoe.class */
final class aoe implements aof {
    private aoe() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ aoe(byte b) {
        this();
    }

    @Override // com.google.android.gms.internal.ads.aof
    /* renamed from: a */
    public final int mo4820a() {
        return MediaCodecList.getCodecCount();
    }

    @Override // com.google.android.gms.internal.ads.aof
    /* renamed from: a */
    public final MediaCodecInfo mo4819a(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // com.google.android.gms.internal.ads.aof
    /* renamed from: a */
    public final boolean mo4818a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "video/avc".equals(str);
    }

    @Override // com.google.android.gms.internal.ads.aof
    /* renamed from: b */
    public final boolean mo4817b() {
        return false;
    }
}
