package android.support.p001v4.media.session;

import android.os.Bundle;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.p001v4.media.session.AbstractC0022b;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.Log;
import androidx.core.app.C0181e;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
/* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21 */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21.class */
class MediaControllerCompat$MediaControllerImplApi21 {

    /* renamed from: a */
    final Object f24a;

    /* renamed from: b */
    private final List<AbstractC0023c> f25b;

    /* renamed from: c */
    private HashMap<AbstractC0023c, a> f26c;

    /* renamed from: d */
    final MediaSessionCompat.Token f27d;

    /* renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver.class */
    private static class ExtraBinderRequestResultReceiver extends ResultReceiver {

        /* renamed from: f */
        private WeakReference<MediaControllerCompat$MediaControllerImplApi21> f28f;

        @Override // android.os.ResultReceiver
        protected void onReceiveResult(int i, Bundle bundle) {
            MediaControllerCompat$MediaControllerImplApi21 mediaControllerCompat$MediaControllerImplApi21 = this.f28f.get();
            if (mediaControllerCompat$MediaControllerImplApi21 == null || bundle == null) {
                return;
            }
            synchronized (mediaControllerCompat$MediaControllerImplApi21.f24a) {
                mediaControllerCompat$MediaControllerImplApi21.f27d.m7054b(AbstractC0022b.a.q(C0181e.m6181a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                mediaControllerCompat$MediaControllerImplApi21.f27d.m7053c(bundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"));
                mediaControllerCompat$MediaControllerImplApi21.m7063a();
            }
        }
    }

    /* renamed from: a */
    void m7063a() {
        if (this.f27d.m7055a() == null) {
            return;
        }
        for (AbstractC0023c abstractC0023c : this.f25b) {
            AbstractC0021a aVar = new a(abstractC0023c);
            this.f26c.put(abstractC0023c, aVar);
            abstractC0023c.f59c = aVar;
            try {
                this.f27d.m7055a().m7029O(aVar);
                abstractC0023c.m7020i(13, null, null);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in registerCallback.", e);
            }
        }
        this.f25b.clear();
    }
}
