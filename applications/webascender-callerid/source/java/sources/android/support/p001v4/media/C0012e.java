package android.support.p001v4.media;

import android.media.MediaDescription;
import android.net.Uri;
/* renamed from: android.support.v4.media.e */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/e.class */
class C0012e {

    /* renamed from: android.support.v4.media.e$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/e$a.class */
    static class C0013a {
        /* renamed from: a */
        public static void m7065a(Object obj, Uri uri) {
            ((MediaDescription.Builder) obj).setMediaUri(uri);
        }
    }

    /* renamed from: a */
    public static Uri m7066a(Object obj) {
        return ((MediaDescription) obj).getMediaUri();
    }
}
