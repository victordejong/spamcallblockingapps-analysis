package com.mopub.common;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.os.SystemClock;
import com.mopub.common.MoPub;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import java.math.BigDecimal;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/LocationService.class */
public class LocationService {

    /* renamed from: f */
    public static volatile LocationService f33738f;
    @VisibleForTesting

    /* renamed from: a */
    public Location f33739a;
    @VisibleForTesting

    /* renamed from: b */
    public long f33740b;

    /* renamed from: c */
    public volatile MoPub.LocationAwareness f33741c = MoPub.LocationAwareness.NORMAL;

    /* renamed from: d */
    public volatile int f33742d = 6;

    /* renamed from: e */
    public volatile long f33743e = 600000;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/LocationService$LocationAwareness.class */
    public enum LocationAwareness {
        NORMAL,
        TRUNCATED,
        DISABLED;

        @Deprecated
        public static LocationAwareness fromMoPubLocationAwareness(MoPub.LocationAwareness locationAwareness) {
            return locationAwareness == MoPub.LocationAwareness.DISABLED ? DISABLED : locationAwareness == MoPub.LocationAwareness.TRUNCATED ? TRUNCATED : NORMAL;
        }

        @Deprecated
        public MoPub.LocationAwareness getNewLocationAwareness() {
            return this == TRUNCATED ? MoPub.LocationAwareness.TRUNCATED : this == DISABLED ? MoPub.LocationAwareness.DISABLED : MoPub.LocationAwareness.NORMAL;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/LocationService$ValidLocationProvider.class */
    public enum ValidLocationProvider {
        NETWORK("network"),
        GPS("gps");
        
        public final String name;

        ValidLocationProvider(String str) {
            this.name = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasRequiredPermissions(Context context) {
            int i = C8700a.f33744a[ordinal()];
            boolean z = false;
            if (i == 1) {
                if (DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_FINE_LOCATION") || DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_COARSE_LOCATION")) {
                    z = true;
                }
                return z;
            } else if (i != 2) {
                return false;
            } else {
                return DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_FINE_LOCATION");
            }
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.name;
        }
    }

    /* renamed from: com.mopub.common.LocationService$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/LocationService$a.class */
    public static /* synthetic */ class C8700a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f33744a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ValidLocationProvider.values().length];
            f33744a = iArr;
            try {
                iArr[ValidLocationProvider.NETWORK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33744a[ValidLocationProvider.GPS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static Location m4639a(Context context, ValidLocationProvider validLocationProvider) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(validLocationProvider);
        if (!MoPub.canCollectPersonalInformation() || !validLocationProvider.hasRequiredPermissions(context)) {
            return null;
        }
        try {
            return ((LocationManager) context.getSystemService("location")).getLastKnownLocation(validLocationProvider.toString());
        } catch (IllegalArgumentException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Failed to retrieve location: device has no " + validLocationProvider.toString() + " location provider.");
            return null;
        } catch (NullPointerException e2) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, "Failed to retrieve location: device has no " + validLocationProvider.toString() + " location provider.");
            return null;
        } catch (SecurityException e3) {
            MoPubLog.SdkLogEvent sdkLogEvent3 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent3, "Failed to retrieve location from " + validLocationProvider.toString() + " provider: access appears to be disabled.");
            return null;
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static void m4638a(Location location, int i) {
        if (location != null && i >= 0) {
            location.setLatitude(BigDecimal.valueOf(location.getLatitude()).setScale(i, 5).doubleValue());
            location.setLongitude(BigDecimal.valueOf(location.getLongitude()).setScale(i, 5).doubleValue());
        }
    }

    @Deprecated
    @VisibleForTesting
    public static void clearLastKnownLocation() {
        m4634d().f33739a = null;
    }

    @VisibleForTesting
    /* renamed from: d */
    public static LocationService m4634d() {
        LocationService locationService = f33738f;
        LocationService locationService2 = locationService;
        if (locationService == null) {
            synchronized (LocationService.class) {
                try {
                    LocationService locationService3 = f33738f;
                    locationService2 = locationService3;
                    if (locationService3 == null) {
                        locationService2 = new LocationService();
                        f33738f = locationService2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return locationService2;
    }

    /* renamed from: e */
    public static boolean m4633e() {
        LocationService d = m4634d();
        boolean z = false;
        if (d.f33739a == null) {
            return false;
        }
        if (SystemClock.elapsedRealtime() - d.f33740b <= MoPub.getMinimumLocationRefreshTimeMillis()) {
            z = true;
        }
        return z;
    }

    public static Location getLastKnownLocation(Context context, int i, MoPub.LocationAwareness locationAwareness) {
        if (!MoPub.canCollectPersonalInformation()) {
            return null;
        }
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(locationAwareness);
        if (locationAwareness == MoPub.LocationAwareness.DISABLED) {
            return null;
        }
        LocationService d = m4634d();
        if (m4633e()) {
            return d.f33739a;
        }
        Location a = m4639a(context, ValidLocationProvider.GPS);
        Location location = a;
        if (a == null) {
            location = m4639a(context, ValidLocationProvider.NETWORK);
        }
        if (locationAwareness == MoPub.LocationAwareness.TRUNCATED) {
            m4638a(location, i);
        }
        if (location != null) {
            d.f33739a = location;
            d.f33740b = SystemClock.elapsedRealtime();
        }
        return d.f33739a;
    }

    /* renamed from: a */
    public MoPub.LocationAwareness m4642a() {
        return this.f33741c;
    }

    /* renamed from: a */
    public void m4641a(int i) {
        this.f33742d = Math.min(Math.max(0, i), 6);
    }

    /* renamed from: a */
    public void m4640a(long j) {
        this.f33743e = j;
    }

    /* renamed from: a */
    public void m4637a(MoPub.LocationAwareness locationAwareness) {
        Preconditions.checkNotNull(locationAwareness);
        this.f33741c = locationAwareness;
    }

    /* renamed from: b */
    public int m4636b() {
        return this.f33742d;
    }

    /* renamed from: c */
    public long m4635c() {
        return this.f33743e;
    }
}
