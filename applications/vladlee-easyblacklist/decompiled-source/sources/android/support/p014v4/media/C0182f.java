package android.support.p014v4.media;

import android.media.browse.MediaBrowser;
import java.util.List;
/* renamed from: android.support.v4.media.f */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/f.class */
final class C0182f {

    /* renamed from: android.support.v4.media.f$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/f$a.class */
    interface AbstractC0183a {
        /* renamed from: a */
        void mo10076a();

        /* renamed from: b */
        void mo10075b();

        /* renamed from: c */
        void mo10074c();
    }

    /* renamed from: android.support.v4.media.f$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/f$b.class */
    static final class C0184b<T extends AbstractC0183a> extends MediaBrowser.ConnectionCallback {

        /* renamed from: a */
        protected final T f431a;

        public C0184b(T t) {
            this.f431a = t;
        }

        @Override // android.media.browse.MediaBrowser.ConnectionCallback
        public final void onConnected() {
            this.f431a.mo10076a();
        }

        @Override // android.media.browse.MediaBrowser.ConnectionCallback
        public final void onConnectionFailed() {
            this.f431a.mo10074c();
        }

        @Override // android.media.browse.MediaBrowser.ConnectionCallback
        public final void onConnectionSuspended() {
            this.f431a.mo10075b();
        }
    }

    /* renamed from: android.support.v4.media.f$c */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/f$c.class */
    interface AbstractC0185c {
        /* renamed from: a */
        void mo10073a(List<?> list);
    }

    /* renamed from: android.support.v4.media.f$d */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/f$d.class */
    static class C0186d<T extends AbstractC0185c> extends MediaBrowser.SubscriptionCallback {

        /* renamed from: a */
        protected final T f432a;

        public C0186d(T t) {
            this.f432a = t;
        }

        @Override // android.media.browse.MediaBrowser.SubscriptionCallback
        public void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list) {
            this.f432a.mo10073a(list);
        }

        @Override // android.media.browse.MediaBrowser.SubscriptionCallback
        public void onError(String str) {
        }
    }
}
