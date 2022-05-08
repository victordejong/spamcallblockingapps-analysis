package p081h.p203i.p204a.p224e.p282l.p283j;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.Nullable;
/* renamed from: h.i.a.e.l.j.z */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/j/z.class */
public final class C8905z {
    /* renamed from: a */
    public static <T extends Parcelable> T m16810a(@Nullable Bundle bundle, String str) {
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(C8905z.class.getClassLoader());
        Bundle bundle2 = bundle.getBundle("map_state");
        if (bundle2 == null) {
            return null;
        }
        bundle2.setClassLoader(C8905z.class.getClassLoader());
        return (T) bundle2.getParcelable(str);
    }

    /* renamed from: a */
    public static void m16811a(@Nullable Bundle bundle, @Nullable Bundle bundle2) {
        if (bundle != null && bundle2 != null) {
            Parcelable a = m16810a(bundle, "MapOptions");
            if (a != null) {
                m16809a(bundle2, "MapOptions", a);
            }
            Parcelable a2 = m16810a(bundle, "StreetViewPanoramaOptions");
            if (a2 != null) {
                m16809a(bundle2, "StreetViewPanoramaOptions", a2);
            }
            Parcelable a3 = m16810a(bundle, "camera");
            if (a3 != null) {
                m16809a(bundle2, "camera", a3);
            }
            if (bundle.containsKey("position")) {
                bundle2.putString("position", bundle.getString("position"));
            }
            if (bundle.containsKey("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT")) {
                bundle2.putBoolean("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT", bundle.getBoolean("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT", false));
            }
        }
    }

    /* renamed from: a */
    public static void m16809a(Bundle bundle, String str, Parcelable parcelable) {
        bundle.setClassLoader(C8905z.class.getClassLoader());
        Bundle bundle2 = bundle.getBundle("map_state");
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = new Bundle();
        }
        bundle3.setClassLoader(C8905z.class.getClassLoader());
        bundle3.putParcelable(str, parcelable);
        bundle.putBundle("map_state", bundle3);
    }
}
