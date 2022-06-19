package android.support.p001v4.media.session;

import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import java.util.List;
/* renamed from: android.support.v4.media.session.e */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/e.class */
class C0026e {

    /* renamed from: android.support.v4.media.session.e$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/e$a.class */
    public interface AbstractC0027a {
        /* renamed from: a */
        void m7018a(Object obj);

        /* renamed from: b */
        void m7017b(int i, int i2, int i3, int i4, int i5);

        /* renamed from: c */
        void m7016c(Object obj);

        /* renamed from: d */
        void m7015d(String str, Bundle bundle);

        /* renamed from: m */
        void m7014m(Bundle bundle);

        /* renamed from: p */
        void m7013p(List<?> list);

        /* renamed from: t */
        void m7012t(CharSequence charSequence);

        /* renamed from: u */
        void m7011u();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.media.session.e$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/e$b.class */
    public static class C0028b<T extends AbstractC0027a> extends MediaController.Callback {

        /* renamed from: a */
        protected final T f60a;

        public C0028b(T t) {
            this.f60a = t;
        }

        @Override // android.media.session.MediaController.Callback
        public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
            this.f60a.m7017b(playbackInfo.getPlaybackType(), C0029c.m7009b(playbackInfo), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume());
        }

        @Override // android.media.session.MediaController.Callback
        public void onExtrasChanged(Bundle bundle) {
            MediaSessionCompat.m7062a(bundle);
            this.f60a.m7014m(bundle);
        }

        @Override // android.media.session.MediaController.Callback
        public void onMetadataChanged(MediaMetadata mediaMetadata) {
            this.f60a.m7018a(mediaMetadata);
        }

        @Override // android.media.session.MediaController.Callback
        public void onPlaybackStateChanged(PlaybackState playbackState) {
            this.f60a.m7016c(playbackState);
        }

        @Override // android.media.session.MediaController.Callback
        public void onQueueChanged(List<MediaSession.QueueItem> list) {
            this.f60a.m7013p(list);
        }

        @Override // android.media.session.MediaController.Callback
        public void onQueueTitleChanged(CharSequence charSequence) {
            this.f60a.m7012t(charSequence);
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionDestroyed() {
            this.f60a.m7011u();
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionEvent(String str, Bundle bundle) {
            MediaSessionCompat.m7062a(bundle);
            this.f60a.m7015d(str, bundle);
        }
    }

    /* renamed from: android.support.v4.media.session.e$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/e$c.class */
    public static class C0029c {
        /* renamed from: a */
        public static AudioAttributes m7010a(Object obj) {
            return ((MediaController.PlaybackInfo) obj).getAudioAttributes();
        }

        /* renamed from: b */
        public static int m7009b(Object obj) {
            return m7008c(m7010a(obj));
        }

        /* renamed from: c */
        private static int m7008c(AudioAttributes audioAttributes) {
            if ((audioAttributes.getFlags() & 1) == 1) {
                return 7;
            }
            if ((audioAttributes.getFlags() & 4) == 4) {
                return 6;
            }
            int usage = audioAttributes.getUsage();
            if (usage == 13) {
                return 1;
            }
            switch (usage) {
                case 2:
                    return 0;
                case 3:
                    return 8;
                case 4:
                    return 4;
                case 5:
                case 7:
                case 8:
                case 9:
                case 10:
                    return 5;
                case 6:
                    return 2;
                default:
                    return 3;
            }
        }
    }

    /* renamed from: a */
    public static Object m7019a(AbstractC0027a abstractC0027a) {
        return new C0028b(abstractC0027a);
    }
}
