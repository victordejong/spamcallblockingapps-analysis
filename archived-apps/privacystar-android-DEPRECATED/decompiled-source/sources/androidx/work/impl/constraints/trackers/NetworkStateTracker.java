package androidx.work.impl.constraints.trackers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.p001v4.net.ConnectivityManagerCompat;
import androidx.work.Logger;
import androidx.work.impl.constraints.NetworkState;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/trackers/NetworkStateTracker.class */
public class NetworkStateTracker extends ConstraintTracker<NetworkState> {
    static final String TAG = Logger.tagWithPrefix("NetworkStateTracker");
    private NetworkStateBroadcastReceiver mBroadcastReceiver;
    private final ConnectivityManager mConnectivityManager = (ConnectivityManager) this.mAppContext.getSystemService("connectivity");
    @RequiresApi(24)
    private NetworkStateCallback mNetworkCallback;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver.class */
    private class NetworkStateBroadcastReceiver extends BroadcastReceiver {
        NetworkStateBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null && intent.getAction() != null && intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                Logger.get().debug(NetworkStateTracker.TAG, "Network broadcast received", new Throwable[0]);
                NetworkStateTracker.this.setState(NetworkStateTracker.this.getActiveNetworkState());
            }
        }
    }

    @RequiresApi(24)
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback.class */
    private class NetworkStateCallback extends ConnectivityManager.NetworkCallback {
        NetworkStateCallback() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            Logger.get().debug(NetworkStateTracker.TAG, String.format("Network capabilities changed: %s", networkCapabilities), new Throwable[0]);
            NetworkStateTracker.this.setState(NetworkStateTracker.this.getActiveNetworkState());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            Logger.get().debug(NetworkStateTracker.TAG, "Network connection lost", new Throwable[0]);
            NetworkStateTracker.this.setState(NetworkStateTracker.this.getActiveNetworkState());
        }
    }

    public NetworkStateTracker(Context context) {
        super(context);
        if (isNetworkCallbackSupported()) {
            this.mNetworkCallback = new NetworkStateCallback();
        } else {
            this.mBroadcastReceiver = new NetworkStateBroadcastReceiver();
        }
    }

    private boolean isActiveNetworkValidated() {
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        NetworkCapabilities networkCapabilities = this.mConnectivityManager.getNetworkCapabilities(this.mConnectivityManager.getActiveNetwork());
        boolean z = false;
        if (networkCapabilities != null) {
            z = false;
            if (networkCapabilities.hasCapability(16)) {
                z = true;
            }
        }
        return z;
    }

    private static boolean isNetworkCallbackSupported() {
        return Build.VERSION.SDK_INT >= 24;
    }

    NetworkState getActiveNetworkState() {
        NetworkInfo activeNetworkInfo = this.mConnectivityManager.getActiveNetworkInfo();
        boolean z = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        boolean isActiveNetworkValidated = isActiveNetworkValidated();
        boolean isActiveNetworkMetered = ConnectivityManagerCompat.isActiveNetworkMetered(this.mConnectivityManager);
        boolean z2 = false;
        if (activeNetworkInfo != null) {
            z2 = false;
            if (!activeNetworkInfo.isRoaming()) {
                z2 = true;
            }
        }
        return new NetworkState(z, isActiveNetworkValidated, isActiveNetworkMetered, z2);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public NetworkState getInitialState() {
        return getActiveNetworkState();
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public void startTracking() {
        if (isNetworkCallbackSupported()) {
            Logger.get().debug(TAG, "Registering network callback", new Throwable[0]);
            this.mConnectivityManager.registerDefaultNetworkCallback(this.mNetworkCallback);
            return;
        }
        Logger.get().debug(TAG, "Registering broadcast receiver", new Throwable[0]);
        this.mAppContext.registerReceiver(this.mBroadcastReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public void stopTracking() {
        if (isNetworkCallbackSupported()) {
            try {
                Logger.get().debug(TAG, "Unregistering network callback", new Throwable[0]);
                this.mConnectivityManager.unregisterNetworkCallback(this.mNetworkCallback);
            } catch (IllegalArgumentException e) {
                Logger.get().error(TAG, "Received exception while unregistering network callback", e);
            }
        } else {
            Logger.get().debug(TAG, "Unregistering broadcast receiver", new Throwable[0]);
            this.mAppContext.unregisterReceiver(this.mBroadcastReceiver);
        }
    }
}
