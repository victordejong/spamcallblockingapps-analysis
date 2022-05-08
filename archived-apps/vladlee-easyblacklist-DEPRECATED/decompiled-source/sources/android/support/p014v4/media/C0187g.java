package android.support.p014v4.media;

import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.support.p014v4.media.C0182f;
import android.support.p014v4.media.session.MediaSessionCompat;
import java.util.List;
/* renamed from: android.support.v4.media.g */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/g.class */
final class C0187g {

    /* renamed from: android.support.v4.media.g$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/g$a.class */
    interface AbstractC0188a extends C0182f.AbstractC0185c {
        /* renamed from: b */
        void mo10072b(List<?> list);
    }

    /* renamed from: android.support.v4.media.g$b */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/g$b.class */
    static final class C0189b<T extends AbstractC0188a> extends C0182f.C0186d<T> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public C0189b(T t) {
            super(t);
        }

        @Override // android.media.browse.MediaBrowser.SubscriptionCallback
        public final void onChildrenLoaded(String str, List<MediaBrowser.MediaItem> list, Bundle bundle) {
            MediaSessionCompat.m10067a(bundle);
            ((AbstractC0188a) this.f432a).mo10072b(list);
        }

        @Override // android.media.browse.MediaBrowser.SubscriptionCallback
        public final void onError(String str, Bundle bundle) {
            MediaSessionCompat.m10067a(bundle);
        }
    }
}
