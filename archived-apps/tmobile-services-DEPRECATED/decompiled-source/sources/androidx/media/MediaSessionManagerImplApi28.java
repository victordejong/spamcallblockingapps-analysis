package androidx.media;

import android.media.session.MediaSessionManager;
import androidx.annotation.RequiresApi;
import androidx.core.util.ObjectsCompat;
import androidx.media.MediaSessionManager;
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/media/MediaSessionManagerImplApi28.class */
class MediaSessionManagerImplApi28 extends MediaSessionManagerImplApi21 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28.class */
    public static final class RemoteUserInfoImplApi28 implements MediaSessionManager.RemoteUserInfoImpl {

        /* renamed from: a */
        final MediaSessionManager.RemoteUserInfo f4300a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public RemoteUserInfoImplApi28(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            this.f4300a = remoteUserInfo;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public RemoteUserInfoImplApi28(String str, int i, int i2) {
            this.f4300a = new MediaSessionManager.RemoteUserInfo(str, i, i2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RemoteUserInfoImplApi28)) {
                return false;
            }
            return this.f4300a.equals(((RemoteUserInfoImplApi28) obj).f4300a);
        }

        public int hashCode() {
            return ObjectsCompat.m19345b(this.f4300a);
        }
    }
}
