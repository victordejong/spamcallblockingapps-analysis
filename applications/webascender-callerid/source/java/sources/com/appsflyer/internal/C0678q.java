package com.appsflyer.internal;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.appsflyer.AndroidUtils;
/* renamed from: com.appsflyer.internal.q */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/q.class */
public final class C0678q {

    /* renamed from: com.appsflyer.internal.q$b */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/q$b.class */
    public static final class C0679b {

        /* renamed from: ǃ */
        public static final C0678q f3065 = new C0678q();
    }

    C0678q() {
    }

    /* renamed from: ɩ */
    private static boolean m4033(Context context, String[] strArr) {
        for (String str : strArr) {
            if (AndroidUtils.isPermissionAvailable(context, str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ι */
    public static Location m4032(Context context) {
        Location location;
        try {
            LocationManager locationManager = (LocationManager) context.getSystemService("location");
            Location lastKnownLocation = m4033(context, new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}) ? locationManager.getLastKnownLocation("network") : null;
            Location lastKnownLocation2 = m4033(context, new String[]{"android.permission.ACCESS_FINE_LOCATION"}) ? locationManager.getLastKnownLocation("gps") : null;
            if (lastKnownLocation2 == null && lastKnownLocation == null) {
                lastKnownLocation2 = null;
            } else if (lastKnownLocation2 == null && lastKnownLocation != null) {
                lastKnownLocation2 = lastKnownLocation;
            } else if (lastKnownLocation != null || lastKnownLocation2 == null) {
                if (60000 < lastKnownLocation.getTime() - lastKnownLocation2.getTime()) {
                    lastKnownLocation2 = lastKnownLocation;
                }
            }
            location = null;
            if (lastKnownLocation2 != null) {
                location = lastKnownLocation2;
            }
        } catch (Throwable th) {
            location = null;
        }
        return location;
    }
}
