package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apc.class */
final class apc implements MediaCodec.OnFrameRenderedListener {

    /* renamed from: a */
    private final /* synthetic */ zzox f8096a;

    private apc(zzox zzoxVar, MediaCodec mediaCodec) {
        this.f8096a = zzoxVar;
        mediaCodec.setOnFrameRenderedListener(this, new zzddu());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ apc(zzox zzoxVar, MediaCodec mediaCodec, byte b) {
        this(zzoxVar, mediaCodec);
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
        if (this == this.f8096a.f15278b) {
            this.f8096a.m3138g();
        }
    }
}
