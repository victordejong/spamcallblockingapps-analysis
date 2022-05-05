package android.support.p014v4.media.session;

import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import java.util.List;
/* renamed from: android.support.v4.media.session.c */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/c.class */
final class C0209c {

    /* renamed from: android.support.v4.media.session.c$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/c$a.class */
    public interface AbstractC0210a {
        /* renamed from: a */
        void mo9993a();

        /* renamed from: a */
        void mo9992a(int i, int i2, int i3, int i4, int i5);

        /* renamed from: a */
        void mo9991a(Object obj);

        /* renamed from: a */
        void mo9990a(List<?> list);

        /* renamed from: b */
        void mo9989b();

        /* renamed from: b */
        void mo9988b(Object obj);

        /* renamed from: c */
        void mo9987c();

        /* renamed from: d */
        void mo9986d();
    }

    /* renamed from: android.support.v4.media.session.c$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/c$b.class */
    static final class C0211b<T extends AbstractC0210a> extends MediaController.Callback {

        /* renamed from: a */
        protected final T f485a;

        public C0211b(T t) {
            this.f485a = t;
        }

        @Override // android.media.session.MediaController.Callback
        public final void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
            int i;
            T t = this.f485a;
            int playbackType = playbackInfo.getPlaybackType();
            AudioAttributes audioAttributes = playbackInfo.getAudioAttributes();
            if ((audioAttributes.getFlags() & 1) != 1) {
                if ((audioAttributes.getFlags() & 4) != 4) {
                    switch (audioAttributes.getUsage()) {
                        case 1:
                        case 11:
                        case 12:
                        case 14:
                        default:
                            i = 3;
                            break;
                        case 2:
                            i = 0;
                            break;
                        case 3:
                            i = 8;
                            break;
                        case 4:
                            i = 4;
                            break;
                        case 5:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                            i = 5;
                            break;
                        case 6:
                            i = 2;
                            break;
                        case 13:
                            i = 1;
                            break;
                    }
                } else {
                    i = 6;
                }
            } else {
                i = 7;
            }
            t.mo9992a(playbackType, i, playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume());
        }

        @Override // android.media.session.MediaController.Callback
        public final void onExtrasChanged(Bundle bundle) {
            MediaSessionCompat.m10067a(bundle);
            this.f485a.mo9986d();
        }

        @Override // android.media.session.MediaController.Callback
        public final void onMetadataChanged(MediaMetadata mediaMetadata) {
            this.f485a.mo9988b(mediaMetadata);
        }

        @Override // android.media.session.MediaController.Callback
        public final void onPlaybackStateChanged(PlaybackState playbackState) {
            this.f485a.mo9991a(playbackState);
        }

        @Override // android.media.session.MediaController.Callback
        public final void onQueueChanged(List<MediaSession.QueueItem> list) {
            this.f485a.mo9990a(list);
        }

        @Override // android.media.session.MediaController.Callback
        public final void onQueueTitleChanged(CharSequence charSequence) {
            this.f485a.mo9987c();
        }

        @Override // android.media.session.MediaController.Callback
        public final void onSessionDestroyed() {
            this.f485a.mo9993a();
        }

        @Override // android.media.session.MediaController.Callback
        public final void onSessionEvent(String str, Bundle bundle) {
            MediaSessionCompat.m10067a(bundle);
            this.f485a.mo9989b();
        }
    }
}
