package com.criteo.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.criteo.network.NetworkRequest;
import com.criteo.utils.Tracer;
/* loaded from: classes-dex2jar.jar:com/criteo/network/ConnectivityInfoUtils.class */
public class ConnectivityInfoUtils {
    public static final String TAG = "criteo.Stories.ConnectivityInfoUtils";

    /* loaded from: classes-dex2jar.jar:com/criteo/network/ConnectivityInfoUtils$OnConnectivityInfoUtilsListener.class */
    public interface OnConnectivityInfoUtilsListener {
        void onConnectivityInfoUtilsNetworkConnected();

        void onConnectivityInfoUtilsNetworkDisconnected(int i, String str);
    }

    public static NetworkInfo getNetworkInfo(Context context) {
        Tracer.debug(TAG, "ConnectivityInfo.getNetworkInfo()");
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    public static void isConnected(Context context, OnConnectivityInfoUtilsListener onConnectivityInfoUtilsListener) {
        Tracer.debug(TAG, "ConnectivityInfo.isConnected()");
        if (isConnected(context)) {
            onConnectivityInfoUtilsListener.onConnectivityInfoUtilsNetworkConnected();
        } else {
            onConnectivityInfoUtilsListener.onConnectivityInfoUtilsNetworkDisconnected(NetworkRequest.ResponseError.NO_CONNECTION_ERROR.getErrorCode(), NetworkRequest.ResponseError.NO_CONNECTION_ERROR.getMessage());
        }
    }

    public static boolean isConnected(Context context) {
        Tracer.debug(TAG, "ConnectivityInfo.isConnected()");
        NetworkInfo networkInfo = getNetworkInfo(context);
        return networkInfo != null && networkInfo.isConnected();
    }
}
