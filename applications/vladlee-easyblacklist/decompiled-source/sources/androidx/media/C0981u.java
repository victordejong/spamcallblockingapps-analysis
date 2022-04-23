package androidx.media;

import android.media.session.MediaSessionManager;
import androidx.core.p036f.C0681c;
import androidx.media.C0976s;
/* renamed from: androidx.media.u */
/* loaded from: classes-dex2jar.jar:androidx/media/u.class */
final class C0981u extends C0980t {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media.u$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/u$a.class */
    public static final class C0982a implements C0976s.AbstractC0978b {

        /* renamed from: a */
        final MediaSessionManager.RemoteUserInfo f4017a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0982a(String str, int i, int i2) {
            this.f4017a = new MediaSessionManager.RemoteUserInfo(str, i, i2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0982a)) {
                return false;
            }
            return this.f4017a.equals(((C0982a) obj).f4017a);
        }

        public final int hashCode() {
            return C0681c.m8553a(this.f4017a);
        }
    }
}
