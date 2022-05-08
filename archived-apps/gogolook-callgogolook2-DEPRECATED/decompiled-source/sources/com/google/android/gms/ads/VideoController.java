package com.google.android.gms.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7354p0;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5;
import p081h.p203i.p204a.p224e.p259j.p260a.BinderC7385r6;
import p081h.p203i.p204a.p224e.p259j.p260a.C7452x1;
@AbstractC7354p0
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/VideoController.class */
public final class VideoController {
    public static final int PLAYBACK_STATE_ENDED = 3;
    public static final int PLAYBACK_STATE_PAUSED = 2;
    public static final int PLAYBACK_STATE_PLAYING = 1;
    public static final int PLAYBACK_STATE_READY = 5;
    public static final int PLAYBACK_STATE_UNKNOWN = 0;
    public final Object mLock = new Object();
    @Nullable
    @GuardedBy("mLock")
    public AbstractC7359p5 zzvj;
    @Nullable
    @GuardedBy("mLock")
    public VideoLifecycleCallbacks zzvk;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/VideoController$VideoLifecycleCallbacks.class */
    public static class VideoLifecycleCallbacks {
        public void onVideoEnd() {
        }

        public void onVideoMute(boolean z) {
        }

        public void onVideoPause() {
        }

        public void onVideoPlay() {
        }

        public void onVideoStart() {
        }
    }

    public final float getAspectRatio() {
        synchronized (this.mLock) {
            if (this.zzvj == null) {
                return 0.0f;
            }
            try {
                return this.zzvj.getAspectRatio();
            } catch (RemoteException e) {
                C7452x1.m20571b("Unable to call getAspectRatio on video controller.", e);
                return 0.0f;
            }
        }
    }

    public final int getPlaybackState() {
        synchronized (this.mLock) {
            if (this.zzvj == null) {
                return 0;
            }
            try {
                return this.zzvj.getPlaybackState();
            } catch (RemoteException e) {
                C7452x1.m20571b("Unable to call getPlaybackState on video controller.", e);
                return 0;
            }
        }
    }

    @Nullable
    public final VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this.mLock) {
            videoLifecycleCallbacks = this.zzvk;
        }
        return videoLifecycleCallbacks;
    }

    public final boolean hasVideoContent() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzvj != null;
        }
        return z;
    }

    public final boolean isClickToExpandEnabled() {
        synchronized (this.mLock) {
            if (this.zzvj == null) {
                return false;
            }
            try {
                return this.zzvj.mo20674J();
            } catch (RemoteException e) {
                C7452x1.m20571b("Unable to call isClickToExpandEnabled.", e);
                return false;
            }
        }
    }

    public final boolean isCustomControlsEnabled() {
        synchronized (this.mLock) {
            if (this.zzvj == null) {
                return false;
            }
            try {
                return this.zzvj.mo20668z0();
            } catch (RemoteException e) {
                C7452x1.m20571b("Unable to call isUsingCustomPlayerControls.", e);
                return false;
            }
        }
    }

    public final boolean isMuted() {
        synchronized (this.mLock) {
            if (this.zzvj == null) {
                return true;
            }
            try {
                return this.zzvj.mo20670m0();
            } catch (RemoteException e) {
                C7452x1.m20571b("Unable to call isMuted on video controller.", e);
                return true;
            }
        }
    }

    public final void mute(boolean z) {
        synchronized (this.mLock) {
            if (this.zzvj != null) {
                try {
                    this.zzvj.mo20672c(z);
                } catch (RemoteException e) {
                    C7452x1.m20571b("Unable to call mute on video controller.", e);
                }
            }
        }
    }

    public final void pause() {
        synchronized (this.mLock) {
            if (this.zzvj != null) {
                try {
                    this.zzvj.pause();
                } catch (RemoteException e) {
                    C7452x1.m20571b("Unable to call pause on video controller.", e);
                }
            }
        }
    }

    public final void play() {
        synchronized (this.mLock) {
            if (this.zzvj != null) {
                try {
                    this.zzvj.play();
                } catch (RemoteException e) {
                    C7452x1.m20571b("Unable to call play on video controller.", e);
                }
            }
        }
    }

    public final void setVideoLifecycleCallbacks(VideoLifecycleCallbacks videoLifecycleCallbacks) {
        C7021t.m21289a(videoLifecycleCallbacks, "VideoLifecycleCallbacks may not be null.");
        synchronized (this.mLock) {
            this.zzvk = videoLifecycleCallbacks;
            if (this.zzvj != null) {
                try {
                    this.zzvj.mo20673a(new BinderC7385r6(videoLifecycleCallbacks));
                } catch (RemoteException e) {
                    C7452x1.m20571b("Unable to call setVideoLifecycleCallbacks on video controller.", e);
                }
            }
        }
    }

    public final void zza(AbstractC7359p5 p5Var) {
        synchronized (this.mLock) {
            this.zzvj = p5Var;
            if (this.zzvk != null) {
                setVideoLifecycleCallbacks(this.zzvk);
            }
        }
    }

    public final AbstractC7359p5 zzbb() {
        AbstractC7359p5 p5Var;
        synchronized (this.mLock) {
            p5Var = this.zzvj;
        }
        return p5Var;
    }
}
