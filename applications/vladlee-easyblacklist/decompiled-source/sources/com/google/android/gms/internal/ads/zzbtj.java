package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtj.class */
public final class zzbtj extends zzbrl<VideoController.VideoLifecycleCallbacks> {

    /* renamed from: a */
    private boolean f12380a;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzbtj(Set<zzbsu<VideoController.VideoLifecycleCallbacks>> set) {
        super(set);
    }

    public final void onVideoEnd() {
        m3995a(C2085ng.f10235a);
    }

    public final void onVideoPause() {
        m3995a(C2086nh.f10236a);
    }

    public final void onVideoPlay() {
        synchronized (this) {
            if (!this.f12380a) {
                m3995a(C2087ni.f10237a);
                this.f12380a = true;
            }
            m3995a(C2089nk.f10239a);
        }
    }

    public final void onVideoStart() {
        synchronized (this) {
            m3995a(C2088nj.f10238a);
            this.f12380a = true;
        }
    }
}
