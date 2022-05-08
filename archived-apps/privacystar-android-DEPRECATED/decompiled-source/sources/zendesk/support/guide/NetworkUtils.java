package zendesk.support.guide;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import com.zendesk.logger.Logger;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/NetworkUtils.class */
class NetworkUtils {
    private static final String LOG_TAG = "NetworkUtils";

    private NetworkUtils() {
    }

    @SuppressLint({"MissingPermission"})
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isConnectedOrConnecting(Context context) {
        NetworkInfo activeNetworkInfo = getActiveNetworkInfo(context);
        return activeNetworkInfo != null ? activeNetworkInfo.isConnectedOrConnecting() : false;
    }
}
