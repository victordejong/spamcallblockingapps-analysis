package android.support.p001v4.media.session;

import android.media.session.MediaController;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.RequiresApi;
@RequiresApi
/* renamed from: android.support.v4.media.session.MediaControllerCompatApi23 */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompatApi23.class */
class MediaControllerCompatApi23 {

    /* renamed from: android.support.v4.media.session.MediaControllerCompatApi23$TransportControls */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaControllerCompatApi23$TransportControls.class */
    public static class TransportControls {
        private TransportControls() {
        }

        public static void playFromUri(Object obj, Uri uri, Bundle bundle) {
            ((MediaController.TransportControls) obj).playFromUri(uri, bundle);
        }
    }

    private MediaControllerCompatApi23() {
    }
}
