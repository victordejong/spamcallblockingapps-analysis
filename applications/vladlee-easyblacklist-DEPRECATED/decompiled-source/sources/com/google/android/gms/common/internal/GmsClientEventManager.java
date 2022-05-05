package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.base.zar;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClientEventManager.class */
public final class GmsClientEventManager implements Handler.Callback {

    /* renamed from: a */
    private final GmsClientEventState f6769a;

    /* renamed from: h */
    private final Handler f6776h;

    /* renamed from: b */
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> f6770b = new ArrayList<>();

    /* renamed from: c */
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> f6771c = new ArrayList<>();

    /* renamed from: d */
    private final ArrayList<GoogleApiClient.OnConnectionFailedListener> f6772d = new ArrayList<>();

    /* renamed from: e */
    private volatile boolean f6773e = false;

    /* renamed from: f */
    private final AtomicInteger f6774f = new AtomicInteger(0);

    /* renamed from: g */
    private boolean f6775g = false;

    /* renamed from: i */
    private final Object f6777i = new Object();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClientEventManager$GmsClientEventState.class */
    public interface GmsClientEventState {
        Bundle getConnectionHint();

        boolean isConnected();
    }

    public GmsClientEventManager(Looper looper, GmsClientEventState gmsClientEventState) {
        this.f6769a = gmsClientEventState;
        this.f6776h = new zar(looper, this);
    }

    public final boolean areCallbacksEnabled() {
        return this.f6773e;
    }

    public final void disableCallbacks() {
        this.f6773e = false;
        this.f6774f.incrementAndGet();
    }

    public final void enableCallbacks() {
        this.f6773e = true;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what == 1) {
            GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
            synchronized (this.f6777i) {
                if (this.f6773e && this.f6769a.isConnected() && this.f6770b.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(this.f6769a.getConnectionHint());
                }
            }
            return true;
        }
        int i = message.what;
        StringBuilder sb = new StringBuilder(45);
        sb.append("Don't know how to handle message: ");
        sb.append(i);
        Log.wtf("GmsClientEvents", sb.toString(), new Exception());
        return false;
    }

    public final boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        boolean contains;
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.f6777i) {
            contains = this.f6770b.contains(connectionCallbacks);
        }
        return contains;
    }

    public final boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        boolean contains;
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.f6777i) {
            contains = this.f6772d.contains(onConnectionFailedListener);
        }
        return contains;
    }

    public final void onConnectionFailure(ConnectionResult connectionResult) {
        Preconditions.checkHandlerThread(this.f6776h, "onConnectionFailure must only be called on the Handler thread");
        this.f6776h.removeMessages(1);
        synchronized (this.f6777i) {
            ArrayList arrayList = new ArrayList(this.f6772d);
            int i = this.f6774f.get();
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList2.get(i2);
                int i3 = i2 + 1;
                GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = (GoogleApiClient.OnConnectionFailedListener) obj;
                if (this.f6773e && this.f6774f.get() == i) {
                    i2 = i3;
                    if (this.f6772d.contains(onConnectionFailedListener)) {
                        onConnectionFailedListener.onConnectionFailed(connectionResult);
                        i2 = i3;
                    }
                }
                return;
            }
        }
    }

    public final void onConnectionSuccess(Bundle bundle) {
        Preconditions.checkHandlerThread(this.f6776h, "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.f6777i) {
            boolean z = true;
            Preconditions.checkState(!this.f6775g);
            this.f6776h.removeMessages(1);
            this.f6775g = true;
            if (this.f6771c.size() != 0) {
                z = false;
            }
            Preconditions.checkState(z);
            ArrayList arrayList = new ArrayList(this.f6770b);
            int i = this.f6774f.get();
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList2.get(i2);
                int i3 = i2 + 1;
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) obj;
                if (!this.f6773e || !this.f6769a.isConnected() || this.f6774f.get() != i) {
                    break;
                }
                i2 = i3;
                if (!this.f6771c.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(bundle);
                    i2 = i3;
                }
            }
            this.f6771c.clear();
            this.f6775g = false;
        }
    }

    public final void onUnintentionalDisconnection(int i) {
        Preconditions.checkHandlerThread(this.f6776h, "onUnintentionalDisconnection must only be called on the Handler thread");
        this.f6776h.removeMessages(1);
        synchronized (this.f6777i) {
            this.f6775g = true;
            ArrayList arrayList = new ArrayList(this.f6770b);
            int i2 = this.f6774f.get();
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList2.get(i3);
                int i4 = i3 + 1;
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) obj;
                if (!this.f6773e || this.f6774f.get() != i2) {
                    break;
                }
                i3 = i4;
                if (this.f6770b.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnectionSuspended(i);
                    i3 = i4;
                }
            }
            this.f6771c.clear();
            this.f6775g = false;
        }
    }

    public final void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.f6777i) {
            if (this.f6770b.contains(connectionCallbacks)) {
                String valueOf = String.valueOf(connectionCallbacks);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 62);
                sb.append("registerConnectionCallbacks(): listener ");
                sb.append(valueOf);
                sb.append(" is already registered");
                Log.w("GmsClientEvents", sb.toString());
            } else {
                this.f6770b.add(connectionCallbacks);
            }
        }
        if (this.f6769a.isConnected()) {
            Handler handler = this.f6776h;
            handler.sendMessage(handler.obtainMessage(1, connectionCallbacks));
        }
    }

    public final void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.f6777i) {
            if (this.f6772d.contains(onConnectionFailedListener)) {
                String valueOf = String.valueOf(onConnectionFailedListener);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 67);
                sb.append("registerConnectionFailedListener(): listener ");
                sb.append(valueOf);
                sb.append(" is already registered");
                Log.w("GmsClientEvents", sb.toString());
            } else {
                this.f6772d.add(onConnectionFailedListener);
            }
        }
    }

    public final void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.f6777i) {
            if (!this.f6770b.remove(connectionCallbacks)) {
                String valueOf = String.valueOf(connectionCallbacks);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 52);
                sb.append("unregisterConnectionCallbacks(): listener ");
                sb.append(valueOf);
                sb.append(" not found");
                Log.w("GmsClientEvents", sb.toString());
            } else if (this.f6775g) {
                this.f6771c.add(connectionCallbacks);
            }
        }
    }

    public final void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.f6777i) {
            if (!this.f6772d.remove(onConnectionFailedListener)) {
                String valueOf = String.valueOf(onConnectionFailedListener);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57);
                sb.append("unregisterConnectionFailedListener(): listener ");
                sb.append(valueOf);
                sb.append(" not found");
                Log.w("GmsClientEvents", sb.toString());
            }
        }
    }
}
