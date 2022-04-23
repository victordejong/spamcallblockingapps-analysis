package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyt.class */
public final class zzyt extends zzxf {

    /* renamed from: a */
    private final VideoController.VideoLifecycleCallbacks f15693a;

    public zzyt(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        this.f15693a = videoLifecycleCallbacks;
    }

    @Override // com.google.android.gms.internal.ads.zzxg
    public final void onVideoEnd() {
        this.f15693a.onVideoEnd();
    }

    @Override // com.google.android.gms.internal.ads.zzxg
    public final void onVideoMute(boolean z) {
        this.f15693a.onVideoMute(z);
    }

    @Override // com.google.android.gms.internal.ads.zzxg
    public final void onVideoPause() {
        this.f15693a.onVideoPause();
    }

    @Override // com.google.android.gms.internal.ads.zzxg
    public final void onVideoPlay() {
        this.f15693a.onVideoPlay();
    }

    @Override // com.google.android.gms.internal.ads.zzxg
    public final void onVideoStart() {
        this.f15693a.onVideoStart();
    }
}
