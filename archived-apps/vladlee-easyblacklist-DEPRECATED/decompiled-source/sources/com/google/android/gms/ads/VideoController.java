package com.google.android.gms.ads;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzxb;
import com.google.android.gms.internal.ads.zzyt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/VideoController.class */
public final class VideoController {
    public static final int PLAYBACK_STATE_ENDED = 3;
    public static final int PLAYBACK_STATE_PAUSED = 2;
    public static final int PLAYBACK_STATE_PLAYING = 1;
    public static final int PLAYBACK_STATE_READY = 5;
    public static final int PLAYBACK_STATE_UNKNOWN = 0;

    /* renamed from: a */
    private final Object f5837a = new Object();

    /* renamed from: b */
    private zzxb f5838b;

    /* renamed from: c */
    private VideoLifecycleCallbacks f5839c;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/VideoController$VideoLifecycleCallbacks.class */
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
        synchronized (this.f5837a) {
            if (this.f5838b == null) {
                return 0.0f;
            }
            try {
                return this.f5838b.getAspectRatio();
            } catch (RemoteException e) {
                zzayu.zzc("Unable to call getAspectRatio on video controller.", e);
                return 0.0f;
            }
        }
    }

    public final int getPlaybackState() {
        synchronized (this.f5837a) {
            if (this.f5838b == null) {
                return 0;
            }
            try {
                return this.f5838b.getPlaybackState();
            } catch (RemoteException e) {
                zzayu.zzc("Unable to call getPlaybackState on video controller.", e);
                return 0;
            }
        }
    }

    public final float getVideoCurrentTime() {
        synchronized (this.f5837a) {
            if (this.f5838b == null) {
                return 0.0f;
            }
            try {
                return this.f5838b.zzpl();
            } catch (RemoteException e) {
                zzayu.zzc("Unable to call getCurrentTime on video controller.", e);
                return 0.0f;
            }
        }
    }

    public final float getVideoDuration() {
        synchronized (this.f5837a) {
            if (this.f5838b == null) {
                return 0.0f;
            }
            try {
                return this.f5838b.zzpk();
            } catch (RemoteException e) {
                zzayu.zzc("Unable to call getDuration on video controller.", e);
                return 0.0f;
            }
        }
    }

    public final VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this.f5837a) {
            videoLifecycleCallbacks = this.f5839c;
        }
        return videoLifecycleCallbacks;
    }

    public final boolean hasVideoContent() {
        boolean z;
        synchronized (this.f5837a) {
            z = this.f5838b != null;
        }
        return z;
    }

    public final boolean isClickToExpandEnabled() {
        synchronized (this.f5837a) {
            if (this.f5838b == null) {
                return false;
            }
            try {
                return this.f5838b.isClickToExpandEnabled();
            } catch (RemoteException e) {
                zzayu.zzc("Unable to call isClickToExpandEnabled.", e);
                return false;
            }
        }
    }

    public final boolean isCustomControlsEnabled() {
        synchronized (this.f5837a) {
            if (this.f5838b == null) {
                return false;
            }
            try {
                return this.f5838b.isCustomControlsEnabled();
            } catch (RemoteException e) {
                zzayu.zzc("Unable to call isUsingCustomPlayerControls.", e);
                return false;
            }
        }
    }

    public final boolean isMuted() {
        synchronized (this.f5837a) {
            if (this.f5838b == null) {
                return true;
            }
            try {
                return this.f5838b.isMuted();
            } catch (RemoteException e) {
                zzayu.zzc("Unable to call isMuted on video controller.", e);
                return true;
            }
        }
    }

    public final void mute(boolean z) {
        synchronized (this.f5837a) {
            if (this.f5838b != null) {
                try {
                    this.f5838b.mute(z);
                } catch (RemoteException e) {
                    zzayu.zzc("Unable to call mute on video controller.", e);
                }
            }
        }
    }

    public final void pause() {
        synchronized (this.f5837a) {
            if (this.f5838b != null) {
                try {
                    this.f5838b.pause();
                } catch (RemoteException e) {
                    zzayu.zzc("Unable to call pause on video controller.", e);
                }
            }
        }
    }

    public final void play() {
        synchronized (this.f5837a) {
            if (this.f5838b != null) {
                try {
                    this.f5838b.play();
                } catch (RemoteException e) {
                    zzayu.zzc("Unable to call play on video controller.", e);
                }
            }
        }
    }

    public final void setVideoLifecycleCallbacks(VideoLifecycleCallbacks videoLifecycleCallbacks) {
        Preconditions.checkNotNull(videoLifecycleCallbacks, "VideoLifecycleCallbacks may not be null.");
        synchronized (this.f5837a) {
            this.f5839c = videoLifecycleCallbacks;
            if (this.f5838b != null) {
                try {
                    this.f5838b.zza(new zzyt(videoLifecycleCallbacks));
                } catch (RemoteException e) {
                    zzayu.zzc("Unable to call setVideoLifecycleCallbacks on video controller.", e);
                }
            }
        }
    }

    public final void stop() {
        synchronized (this.f5837a) {
            if (this.f5838b != null) {
                try {
                    this.f5838b.stop();
                } catch (RemoteException e) {
                    zzayu.zzc("Unable to call stop on video controller.", e);
                }
            }
        }
    }

    public final void zza(zzxb zzxbVar) {
        synchronized (this.f5837a) {
            this.f5838b = zzxbVar;
            if (this.f5839c != null) {
                setVideoLifecycleCallbacks(this.f5839c);
            }
        }
    }

    public final zzxb zzdl() {
        zzxb zzxbVar;
        synchronized (this.f5837a) {
            zzxbVar = this.f5838b;
        }
        return zzxbVar;
    }
}
