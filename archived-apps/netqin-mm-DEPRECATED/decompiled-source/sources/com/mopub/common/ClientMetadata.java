package com.mopub.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.inmobi.ads.C8303s;
import com.inmobi.p497a.C7998l;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.MoPubIdentifier;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/ClientMetadata.class */
public class ClientMetadata {

    /* renamed from: s */
    public static volatile ClientMetadata f33658s;

    /* renamed from: a */
    public String f33659a;

    /* renamed from: b */
    public String f33660b;

    /* renamed from: c */
    public String f33661c;

    /* renamed from: d */
    public String f33662d;

    /* renamed from: e */
    public String f33663e;

    /* renamed from: f */
    public String f33664f;

    /* renamed from: g */
    public String f33665g;

    /* renamed from: h */
    public final MoPubIdentifier f33666h;

    /* renamed from: i */
    public final String f33667i = Build.MANUFACTURER;

    /* renamed from: j */
    public final String f33668j = Build.MODEL;

    /* renamed from: k */
    public final String f33669k = Build.PRODUCT;

    /* renamed from: l */
    public final String f33670l = Build.VERSION.RELEASE;

    /* renamed from: m */
    public final String f33671m = "5.11.1";

    /* renamed from: n */
    public final String f33672n;

    /* renamed from: o */
    public final String f33673o;

    /* renamed from: p */
    public String f33674p;

    /* renamed from: q */
    public final Context f33675q;

    /* renamed from: r */
    public final ConnectivityManager f33676r;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/ClientMetadata$MoPubNetworkType.class */
    public enum MoPubNetworkType {
        UNKNOWN(0),
        ETHERNET(1),
        WIFI(2),
        MOBILE(3),
        GG(4),
        GGG(5),
        GGGG(6);
        
        public final int mId;

        MoPubNetworkType(int i) {
            this.mId = i;
        }

        public int getId() {
            return this.mId;
        }

        @Override // java.lang.Enum
        public String toString() {
            return Integer.toString(this.mId);
        }
    }

    public ClientMetadata(Context context) {
        ApplicationInfo applicationInfo;
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        this.f33675q = applicationContext;
        this.f33676r = (ConnectivityManager) applicationContext.getSystemService("connectivity");
        this.f33672n = m4700a(this.f33675q);
        PackageManager packageManager = this.f33675q.getPackageManager();
        String packageName = this.f33675q.getPackageName();
        this.f33673o = packageName;
        try {
            applicationInfo = packageManager.getApplicationInfo(packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            applicationInfo = null;
        }
        if (applicationInfo != null) {
            this.f33674p = (String) packageManager.getApplicationLabel(applicationInfo);
        }
        TelephonyManager telephonyManager = (TelephonyManager) this.f33675q.getSystemService("phone");
        if (telephonyManager != null) {
            this.f33659a = telephonyManager.getNetworkOperator();
            this.f33660b = telephonyManager.getNetworkOperator();
            if (telephonyManager.getPhoneType() == 2 && telephonyManager.getSimState() == 5) {
                this.f33659a = telephonyManager.getSimOperator();
                this.f33661c = telephonyManager.getSimOperator();
            }
            if (MoPub.canCollectPersonalInformation()) {
                this.f33662d = telephonyManager.getNetworkCountryIso();
                this.f33663e = telephonyManager.getSimCountryIso();
            } else {
                this.f33662d = "";
                this.f33663e = "";
            }
            try {
                this.f33664f = telephonyManager.getNetworkOperatorName();
                if (telephonyManager.getSimState() == 5) {
                    this.f33665g = telephonyManager.getSimOperatorName();
                }
            } catch (SecurityException e2) {
                this.f33664f = null;
                this.f33665g = null;
            }
        }
        this.f33666h = new MoPubIdentifier(this.f33675q);
    }

    /* renamed from: a */
    public static String m4700a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to retrieve PackageInfo#versionName.");
            return null;
        }
    }

    @Deprecated
    @VisibleForTesting
    public static void clearForTesting() {
        f33658s = null;
    }

    public static String getCurrentLanguage(Context context) {
        String trim = Locale.getDefault().getLanguage().trim();
        Locale locale = context.getResources().getConfiguration().locale;
        String str = trim;
        if (locale != null) {
            str = trim;
            if (!locale.getLanguage().trim().isEmpty()) {
                str = locale.getLanguage().trim();
            }
        }
        return str;
    }

    public static ClientMetadata getInstance() {
        ClientMetadata clientMetadata = f33658s;
        ClientMetadata clientMetadata2 = clientMetadata;
        if (clientMetadata == null) {
            synchronized (ClientMetadata.class) {
                try {
                    clientMetadata2 = f33658s;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return clientMetadata2;
    }

    public static ClientMetadata getInstance(Context context) {
        ClientMetadata clientMetadata = f33658s;
        ClientMetadata clientMetadata2 = clientMetadata;
        if (clientMetadata == null) {
            synchronized (ClientMetadata.class) {
                try {
                    ClientMetadata clientMetadata3 = f33658s;
                    clientMetadata2 = clientMetadata3;
                    if (clientMetadata3 == null) {
                        clientMetadata2 = new ClientMetadata(context);
                        f33658s = clientMetadata2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return clientMetadata2;
    }

    @Deprecated
    @VisibleForTesting
    public static void setInstance(ClientMetadata clientMetadata) {
        synchronized (ClientMetadata.class) {
            try {
                f33658s = clientMetadata;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public MoPubNetworkType getActiveNetworkType() {
        if (!DeviceUtils.isPermissionGranted(this.f33675q, "android.permission.ACCESS_NETWORK_STATE")) {
            return MoPubNetworkType.UNKNOWN;
        }
        NetworkInfo activeNetworkInfo = this.f33676r.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return MoPubNetworkType.UNKNOWN;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            for (Network network : this.f33676r.getAllNetworks()) {
                NetworkCapabilities networkCapabilities = this.f33676r.getNetworkCapabilities(network);
                if (networkCapabilities != null && networkCapabilities.hasTransport(3)) {
                    return MoPubNetworkType.ETHERNET;
                }
            }
        } else if (activeNetworkInfo.getType() == 9) {
            return MoPubNetworkType.ETHERNET;
        }
        NetworkInfo networkInfo = this.f33676r.getNetworkInfo(1);
        if (networkInfo != null && networkInfo.isConnected()) {
            return MoPubNetworkType.WIFI;
        }
        NetworkInfo networkInfo2 = this.f33676r.getNetworkInfo(0);
        if (networkInfo2 == null || !networkInfo2.isConnected()) {
            return MoPubNetworkType.UNKNOWN;
        }
        switch (networkInfo2.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return MoPubNetworkType.GG;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
                return MoPubNetworkType.GGG;
            case 13:
            case 15:
                return MoPubNetworkType.GGGG;
            default:
                return MoPubNetworkType.MOBILE;
        }
    }

    public String getAppName() {
        return this.f33674p;
    }

    public String getAppPackageName() {
        return this.f33673o;
    }

    public String getAppVersion() {
        return this.f33672n;
    }

    public float getDensity() {
        return this.f33675q.getResources().getDisplayMetrics().density;
    }

    public Point getDeviceDimensions() {
        return Preconditions.NoThrow.checkNotNull(this.f33675q) ? DeviceUtils.getDeviceDimensions(this.f33675q) : new Point(0, 0);
    }

    public Locale getDeviceLocale() {
        return this.f33675q.getResources().getConfiguration().locale;
    }

    public String getDeviceManufacturer() {
        return this.f33667i;
    }

    public String getDeviceModel() {
        return this.f33668j;
    }

    public String getDeviceOsVersion() {
        return this.f33670l;
    }

    public String getDeviceProduct() {
        return this.f33669k;
    }

    public int getDeviceScreenHeightDip() {
        return Dips.screenHeightAsIntDips(this.f33675q);
    }

    public int getDeviceScreenWidthDip() {
        return Dips.screenWidthAsIntDips(this.f33675q);
    }

    public String getIsoCountryCode() {
        return MoPub.canCollectPersonalInformation() ? this.f33662d : "";
    }

    public MoPubIdentifier getMoPubIdentifier() {
        return this.f33666h;
    }

    public String getNetworkOperator() {
        return this.f33660b;
    }

    public String getNetworkOperatorForUrl() {
        return this.f33659a;
    }

    public String getNetworkOperatorName() {
        return this.f33664f;
    }

    public String getOrientationString() {
        int i = this.f33675q.getResources().getConfiguration().orientation;
        return i == 1 ? "p" : i == 2 ? C7998l.f31218d : i == 3 ? C8303s.f32309d : "u";
    }

    public String getSdkVersion() {
        return this.f33671m;
    }

    public String getSimIsoCountryCode() {
        return MoPub.canCollectPersonalInformation() ? this.f33663e : "";
    }

    public String getSimOperator() {
        return this.f33661c;
    }

    public String getSimOperatorName() {
        return this.f33665g;
    }

    public void repopulateCountryData() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f33675q.getSystemService("phone");
        if (MoPub.canCollectPersonalInformation() && telephonyManager != null) {
            this.f33662d = telephonyManager.getNetworkCountryIso();
            this.f33663e = telephonyManager.getSimCountryIso();
        }
    }
}
