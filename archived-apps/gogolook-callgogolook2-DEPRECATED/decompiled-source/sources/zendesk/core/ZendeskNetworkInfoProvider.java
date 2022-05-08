package zendesk.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import p081h.p451q.p453b.C10845a;
import p081h.p451q.p455d.C10858a;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkInfoProvider.class */
public class ZendeskNetworkInfoProvider implements NetworkInfoProvider, NetworkAware {
    public final ConnectivityManager connectivityManager;
    public final Map<Integer, WeakReference<NetworkAware>> listeners = new HashMap();
    public final Map<Integer, WeakReference<RetryAction>> retryActions = new HashMap();
    public CurrentState currentState = null;

    /* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkInfoProvider$CurrentState.class */
    public enum CurrentState {
        CONNECTED,
        DISCONNECTED
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkInfoProvider$NetworkAvailabilityBroadcastReceiver.class */
    public class NetworkAvailabilityBroadcastReceiver extends BroadcastReceiver {
        public NetworkAvailabilityBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !"android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                C10845a.m10417d("NetAvailabilityReceiver", "onReceive: intent was null or getAction() was mismatched", new Object[0]);
            } else if (intent.getBooleanExtra("noConnectivity", false)) {
                ZendeskNetworkInfoProvider.this.onNetworkUnavailable();
            } else {
                ZendeskNetworkInfoProvider.this.onNetworkAvailable();
            }
        }
    }

    public ZendeskNetworkInfoProvider(@NonNull Context context, @NonNull ConnectivityManager connectivityManager) {
        new NetworkAvailabilityBroadcastReceiver();
        this.connectivityManager = connectivityManager;
    }

    public static boolean isConnectedOrConnecting(ConnectivityManager connectivityManager) {
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }

    @Override // zendesk.core.NetworkAware
    public void onNetworkAvailable() {
        if (CurrentState.CONNECTED != this.currentState && isConnectedOrConnecting(this.connectivityManager)) {
            this.currentState = CurrentState.CONNECTED;
            Map a = C10858a.m10403a(this.listeners);
            Map a2 = C10858a.m10403a(this.retryActions);
            for (WeakReference weakReference : a.values()) {
                if (weakReference.get() != null) {
                    ((NetworkAware) weakReference.get()).onNetworkAvailable();
                }
            }
            for (WeakReference weakReference2 : a2.values()) {
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
            for (WeakReference weakReference : C10858a.m10403a(this.listeners).values()) {
                if (weakReference.get() != null) {
                    ((NetworkAware) weakReference.get()).onNetworkUnavailable();
                }
            }
        }
    }
}
