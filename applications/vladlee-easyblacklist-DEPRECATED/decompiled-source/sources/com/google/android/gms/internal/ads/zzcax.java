package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcax.class */
public final class zzcax extends VideoController.VideoLifecycleCallbacks {

    /* renamed from: a */
    private final zzbws f12845a;

    public zzcax(zzbws zzbwsVar) {
        this.f12845a = zzbwsVar;
    }

    /* renamed from: a */
    private static zzxg m3818a(zzbws zzbwsVar) {
        zzxb videoController = zzbwsVar.getVideoController();
        if (videoController == null) {
            return null;
        }
        try {
            return videoController.zzpm();
        } catch (RemoteException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoEnd() {
        zzxg a = m3818a(this.f12845a);
        if (a != null) {
            try {
                a.onVideoEnd();
            } catch (RemoteException e) {
                zzavs.zzd("Unable to call onVideoEnd()", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoPause() {
        zzxg a = m3818a(this.f12845a);
        if (a != null) {
            try {
                a.onVideoPause();
            } catch (RemoteException e) {
                zzavs.zzd("Unable to call onVideoEnd()", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks
    public final void onVideoStart() {
        zzxg a = m3818a(this.f12845a);
        if (a != null) {
            try {
                a.onVideoStart();
            } catch (RemoteException e) {
                zzavs.zzd("Unable to call onVideoEnd()", e);
            }
        }
    }
}
