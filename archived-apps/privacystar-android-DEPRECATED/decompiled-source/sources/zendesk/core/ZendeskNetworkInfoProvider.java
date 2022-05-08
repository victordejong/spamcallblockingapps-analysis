package zendesk.core;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import com.zendesk.logger.Logger;
import com.zendesk.util.CollectionUtils;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkInfoProvider.class */
class ZendeskNetworkInfoProvider implements NetworkInfoProvider, NetworkAware {
    private static final String LOG_TAG = "ZendeskNetworkInfoProvider";
    private final ConnectivityManager connectivityManager;
    private final Context context;
    private ConnectivityManager.NetworkCallback networkCallback;
    private final BroadcastReceiver broadcastReceiver = new NetworkAvailabilityBroadcastReceiver();
    private final Map<Integer, WeakReference<NetworkAware>> listeners = new HashMap();
    private final Map<Integer, WeakReference<RetryAction>> retryActions = new HashMap();
    private CurrentState currentState = null;
    private boolean isBroadcastReceiverRegistered = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkInfoProvider$CurrentState.class */
    public enum CurrentState {
        CONNECTED,
        DISCONNECTED
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkInfoProvider$NetworkAvailabilityBroadcastReceiver.class */
    class NetworkAvailabilityBroadcastReceiver extends BroadcastReceiver {
        private final String LOG_TAG = "NetAvailabilityReceiver";

        NetworkAvailabilityBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !"android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                Logger.m289w("NetAvailabilityReceiver", "onReceive: intent was null or getAction() was mismatched", new Object[0]);
            } else if (intent.getBooleanExtra("noConnectivity", false)) {
                ZendeskNetworkInfoProvider.this.onNetworkUnavailable();
            } else {
                ZendeskNetworkInfoProvider.this.onNetworkAvailable();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskNetworkInfoProvider(@NonNull Context context, @NonNull ConnectivityManager connectivityManager) {
        this.context = context;
        this.connectivityManager = connectivityManager;
    }

    private static boolean isConnectedOrConnecting(ConnectivityManager connectivityManager) {
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }

    private void registerForNetworkCallbacks() {
        if (Build.VERSION.SDK_INT < 21) {
            Logger.m298d(LOG_TAG, "Adding pre-Lollipop network callbacks...", new Object[0]);
            if (!this.isBroadcastReceiverRegistered) {
                this.context.registerReceiver(this.broadcastReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                this.isBroadcastReceiverRegistered = true;
                return;
            }
            return;
        }
        Logger.m298d(LOG_TAG, "Adding Lollipop network callbacks...", new Object[0]);
        final Handler handler = new Handler(Looper.getMainLooper());
        this.networkCallback = new ConnectivityManager.NetworkCallback() { // from class: zendesk.core.ZendeskNetworkInfoProvider.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                handler.post(new Runnable() { // from class: zendesk.core.ZendeskNetworkInfoProvider.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ZendeskNetworkInfoProvider.this.onNetworkAvailable();
                    }
                });
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                handler.post(new Runnable() { // from class: zendesk.core.ZendeskNetworkInfoProvider.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ZendeskNetworkInfoProvider.this.onNetworkUnavailable();
                    }
                });
            }
        };
        this.connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().build(), this.networkCallback);
    }

    @TargetApi(21)
    private void unregisterForNetworkCallbacks() {
        if (this.isBroadcastReceiverRegistered) {
            this.context.unregisterReceiver(this.broadcastReceiver);
            this.isBroadcastReceiverRegistered = false;
        }
        if (Build.VERSION.SDK_INT >= 21 && this.networkCallback != null) {
            this.connectivityManager.unregisterNetworkCallback(this.networkCallback);
            this.networkCallback = null;
        }
    }

    @Override // zendesk.core.NetworkInfoProvider
    public void addNetworkAwareListener(@NonNull Integer num, @NonNull NetworkAware networkAware) {
        if (num != null && networkAware != null) {
            this.listeners.put(num, new WeakReference<>(networkAware));
        }
    }

    @Override // zendesk.core.NetworkInfoProvider
    public void addRetryAction(@NonNull Integer num, @NonNull RetryAction retryAction) {
        if (num != null && retryAction != null) {
            this.retryActions.put(num, new WeakReference<>(retryAction));
        }
    }

    @Override // zendesk.core.NetworkInfoProvider
    public void clearNetworkAwareListeners() {
        this.listeners.clear();
    }

    @Override // zendesk.core.NetworkInfoProvider
    public void clearRetryActions() {
        this.retryActions.clear();
    }

    @Override // zendesk.core.NetworkInfoProvider
    public boolean isNetworkAvailable() {
        NetworkInfo activeNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @Override // zendesk.core.NetworkAware
    public void onNetworkAvailable() {
        if (CurrentState.CONNECTED != this.currentState && isConnectedOrConnecting(this.connectivityManager)) {
            this.currentState = CurrentState.CONNECTED;
            Map copyOf = CollectionUtils.copyOf(this.listeners);
            Map copyOf2 = CollectionUtils.copyOf(this.retryActions);
            for (WeakReference weakReference : copyOf.values()) {
                if (weakReference.get() != null) {
                    ((NetworkAware) weakReference.get()).onNetworkAvailable();
                }
            }
            for (WeakReference weakReference2 : copyOf2.values()) {
                if (weakReference2.get() != null) {
                    ((RetryAction) weakReference2.get()).onRetry();
                }
            }
            this.retryActions.clear();
        }
    }

    @Override // zendesk.core.NetworkAware
    public void onNetworkUnavailable() {
        if (!(CurrentState.DISCONNECTED == this.currentState || isConnectedOrConnecting(this.connectivityManager))) {
            this.currentState = CurrentState.DISCONNECTED;
            for (WeakReference weakReference : CollectionUtils.copyOf(this.listeners).values()) {
                if (weakReference.get() != null) {
                    ((NetworkAware) weakReference.get()).onNetworkUnavailable();
                }
            }
        }
    }

    @Override // zendesk.core.NetworkInfoProvider
    public void register() {
        registerForNetworkCallbacks();
    }

    @Override // zendesk.core.NetworkInfoProvider
    public void removeNetworkAwareListener(@NonNull Integer num) {
        this.listeners.remove(num);
    }

    @Override // zendesk.core.NetworkInfoProvider
    public void removeRetryAction(@NonNull Integer num) {
        this.retryActions.remove(num);
    }

    @Override // zendesk.core.NetworkInfoProvider
    public void unregister() {
        unregisterForNetworkCallbacks();
    }
}
