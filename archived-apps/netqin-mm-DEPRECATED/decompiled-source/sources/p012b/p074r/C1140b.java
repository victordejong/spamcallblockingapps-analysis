package p012b.p074r;

import android.os.Bundle;
/* renamed from: b.r.b */
/* loaded from: classes-dex2jar.jar:b/r/b.class */
public class C1140b {
    /* renamed from: a */
    public static boolean m34587a(Bundle bundle, Bundle bundle2) {
        boolean z = true;
        boolean z2 = true;
        boolean z3 = true;
        if (bundle == bundle2) {
            return true;
        }
        if (bundle == null) {
            if (!(bundle2.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1)) {
                z3 = false;
            }
            return z3;
        } else if (bundle2 == null) {
            if (bundle.getInt("android.media.browse.extra.PAGE", -1) != -1 || bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) != -1) {
                z = false;
            }
            return z;
        } else {
            if (bundle.getInt("android.media.browse.extra.PAGE", -1) != bundle2.getInt("android.media.browse.extra.PAGE", -1) || bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) != bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1)) {
                z2 = false;
            }
            return z2;
        }
    }
}
