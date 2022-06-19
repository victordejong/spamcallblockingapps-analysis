package com.google.android.gms.maps.p028g;

import android.os.Bundle;
import android.os.Parcelable;
/* renamed from: com.google.android.gms.maps.g.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/maps/g/j.class */
public final class C1453j {
    private C1453j() {
    }

    /* renamed from: a */
    private static <T extends Parcelable> T m1749a(Bundle bundle, String str) {
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(C1453j.class.getClassLoader());
        Bundle bundle2 = bundle.getBundle("map_state");
        if (bundle2 == null) {
            return null;
        }
        bundle2.setClassLoader(C1453j.class.getClassLoader());
        return (T) bundle2.getParcelable(str);
    }

    /* renamed from: b */
    public static void m1748b(Bundle bundle, Bundle bundle2) {
        if (bundle == null || bundle2 == null) {
            return;
        }
        Parcelable m1749a = m1749a(bundle, "MapOptions");
        if (m1749a != null) {
            m1747c(bundle2, "MapOptions", m1749a);
        }
        Parcelable m1749a2 = m1749a(bundle, "StreetViewPanoramaOptions");
        if (m1749a2 != null) {
            m1747c(bundle2, "StreetViewPanoramaOptions", m1749a2);
        }
        Parcelable m1749a3 = m1749a(bundle, "camera");
        if (m1749a3 != null) {
            m1747c(bundle2, "camera", m1749a3);
        }
        if (bundle.containsKey("position")) {
            bundle2.putString("position", bundle.getString("position"));
        }
        if (!bundle.containsKey("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT")) {
            return;
        }
        bundle2.putBoolean("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT", bundle.getBoolean("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT", false));
    }

    /* renamed from: c */
    public static void m1747c(Bundle bundle, String str, Parcelable parcelable) {
        bundle.setClassLoader(C1453j.class.getClassLoader());
        Bundle bundle2 = bundle.getBundle("map_state");
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = new Bundle();
        }
        bundle3.setClassLoader(C1453j.class.getClassLoader());
        bundle3.putParcelable(str, parcelable);
        bundle.putBundle("map_state", bundle3);
    }
}
