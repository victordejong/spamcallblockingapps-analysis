package zendesk.core;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.annotation.Nullable;
import com.zendesk.logger.Logger;
/* loaded from: classes3-dex2jar.jar:zendesk/core/NetworkUtils.class */
class NetworkUtils {
    private static final String LOG_TAG = "NetworkUtils";

    private NetworkUtils() {
    }

    @Nullable
    static NetworkInfo getActiveNetworkInfo(Context context) {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = getConnectivityManager(context);
        if (!(connectivityManager == null || context == null)) {
            if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
                Logger.m293i(LOG_TAG, "Getting active network information", new Object[0]);
                networkInfo = connectivityManager.getActiveNetworkInfo();
                return networkInfo;
            }
            Logger.m289w(LOG_TAG, "Will not return if network is available because we do not have the permission to do so: ACCESS_NETWORK_STATE", new Object[0]);
        }
        networkInfo = null;
        return networkInfo;
    }

    @Nullable
    static ConnectivityManager getConnectivityManager(Context context) {
        if (context == null) {
            Logger.m289w(LOG_TAG, "Context is null. Cannot get ConnectivityManager", new Object[0]);
            return null;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            Logger.m289w(LOG_TAG, "Connectivity manager is null", new Object[0]);
        }
        return connectivityManager;
    }

    static boolean isConnected(Context context) {
        NetworkInfo activeNetworkInfo = getActiveNetworkInfo(context);
        return activeNetworkInfo != null ? activeNetworkInfo.isConnected() : false;
    }

    static boolean isMobile(Context context) {
        NetworkInfo activeNetworkInfo = getActiveNetworkInfo(context);
        boolean z = false;
        if (activeNetworkInfo != null) {
            z = false;
            if (activeNetworkInfo.getType() == 0) {
                z = true;
            }
        }
        return z;
    }
}
