package p012b.p076s.p118e;

import android.net.Uri;
/* renamed from: b.s.e.v */
/* loaded from: classes-dex2jar.jar:b/s/e/v.class */
public class C1873v {
    /* renamed from: a */
    public static boolean m31848a(Uri uri) {
        String scheme = uri.getScheme();
        boolean z = false;
        if (scheme == null) {
            return false;
        }
        if (scheme.equals("http") || scheme.equals("https") || scheme.equals("rtsp")) {
            z = true;
        }
        return z;
    }
}
