package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.instream.InstreamAd;
import com.google.android.gms.ads.instream.InstreamAdView;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahm.class */
public final class zzahm extends InstreamAd {

    /* renamed from: a */
    private final zzahb f10918a;

    /* renamed from: b */
    private final VideoController f10919b = m4405a();

    public zzahm(zzahb zzahbVar) {
        this.f10918a = zzahbVar;
    }

    /* renamed from: a */
    private final VideoController m4405a() {
        VideoController videoController = new VideoController();
        try {
            videoController.zza(this.f10918a.getVideoController());
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
        return videoController;
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final void destroy() {
        try {
            this.f10918a.destroy();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final float getAspectRatio() {
        VideoController videoController = this.f10919b;
        if (videoController == null) {
            return 0.0f;
        }
        return videoController.getAspectRatio();
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final VideoController getVideoController() {
        return this.f10919b;
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final float getVideoCurrentTime() {
        VideoController videoController = this.f10919b;
        if (videoController == null) {
            return 0.0f;
        }
        return videoController.getVideoCurrentTime();
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final float getVideoDuration() {
        VideoController videoController = this.f10919b;
        if (videoController == null) {
            return 0.0f;
        }
        return videoController.getVideoDuration();
    }

    @Override // com.google.android.gms.ads.instream.InstreamAd
    public final void zza(InstreamAdView instreamAdView) {
        if (instreamAdView == null) {
            zzayu.zzex("showInView: parameter view must not be null.");
            return;
        }
        try {
            this.f10918a.zzr(ObjectWrapper.wrap(instreamAdView));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }
}
