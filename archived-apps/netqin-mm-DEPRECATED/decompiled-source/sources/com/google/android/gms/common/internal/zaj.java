package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.base.zap;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zaj.class */
public final class zaj implements Handler.Callback {
    @NotOnlyInitialized

    /* renamed from: a */
    public final zai f23462a;

    /* renamed from: h */
    public final Handler f23469h;

    /* renamed from: b */
    public final ArrayList<GoogleApiClient.ConnectionCallbacks> f23463b = new ArrayList<>();
    @VisibleForTesting

    /* renamed from: c */
    public final ArrayList<GoogleApiClient.ConnectionCallbacks> f23464c = new ArrayList<>();

    /* renamed from: d */
    public final ArrayList<GoogleApiClient.OnConnectionFailedListener> f23465d = new ArrayList<>();

    /* renamed from: e */
    public volatile boolean f23466e = false;

    /* renamed from: f */
    public final AtomicInteger f23467f = new AtomicInteger(0);

    /* renamed from: g */
    public boolean f23468g = false;

    /* renamed from: i */
    public final Object f23470i = new Object();

    public zaj(Looper looper, zai zaiVar) {
        this.f23462a = zaiVar;
        this.f23469h = new zap(looper, this);
    }

    /* renamed from: a */
    public final void m17190a() {
        this.f23466e = false;
        this.f23467f.incrementAndGet();
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m17189a(int i) {
        Preconditions.m17289a(this.f23469h, "onUnintentionalDisconnection must only be called on the Handler thread");
        this.f23469h.removeMessages(1);
        synchronized (this.f23470i) {
            try {
                this.f23468g = true;
                ArrayList arrayList = new ArrayList(this.f23463b);
                int i2 = this.f23467f.get();
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    int i4 = i3 + 1;
                    GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) obj;
                    if (!this.f23466e || this.f23467f.get() != i2) {
                        break;
                    }
                    i3 = i4;
                    if (this.f23463b.contains(connectionCallbacks)) {
                        connectionCallbacks.onConnectionSuspended(i);
                        i3 = i4;
                    }
                }
                this.f23464c.clear();
                this.f23468g = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m17188a(Bundle bundle) {
        Preconditions.m17289a(this.f23469h, "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.f23470i) {
            try {
                boolean z = true;
                Preconditions.m17280b(!this.f23468g);
                this.f23469h.removeMessages(1);
                this.f23468g = true;
                if (this.f23464c.size() != 0) {
                    z = false;
                }
                Preconditions.m17280b(z);
                ArrayList arrayList = new ArrayList(this.f23463b);
                int i = this.f23467f.get();
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    int i3 = i2 + 1;
                    GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) obj;
                    if (!this.f23466e || !this.f23462a.mo17192c() || this.f23467f.get() != i) {
                        break;
                    }
                    i2 = i3;
                    if (!this.f23464c.contains(connectionCallbacks)) {
                        connectionCallbacks.onConnected(bundle);
                        i2 = i3;
                    }
                }
                this.f23464c.clear();
                this.f23468g = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m17187a(ConnectionResult connectionResult) {
        Preconditions.m17289a(this.f23469h, "onConnectionFailure must only be called on the Handler thread");
        this.f23469h.removeMessages(1);
        synchronized (this.f23470i) {
            try {
                ArrayList arrayList = new ArrayList(this.f23465d);
                int i = this.f23467f.get();
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    int i3 = i2 + 1;
                    GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = (GoogleApiClient.OnConnectionFailedListener) obj;
                    if (this.f23466e && this.f23467f.get() == i) {
                        i2 = i3;
                        if (this.f23465d.contains(onConnectionFailedListener)) {
                            onConnectionFailedListener.onConnectionFailed(connectionResult);
                            i2 = i3;
                        }
                    }
                    return;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final void m17186a(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Preconditions.m17288a(connectionCallbacks);
        synchronized (this.f23470i) {
            if (this.f23463b.contains(connectionCallbacks)) {
                String valueOf = String.valueOf(connectionCallbacks);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 62);
                sb.append("registerConnectionCallbacks(): listener ");
                sb.append(valueOf);
                sb.append(" is already registered");
                Log.w("GmsClientEvents", sb.toString());
            } else {
                this.f23463b.add(connectionCallbacks);
            }
        }
        if (this.f23462a.mo17192c()) {
            Handler handler = this.f23469h;
            handler.sendMessage(handler.obtainMessage(1, connectionCallbacks));
        }
    }

    /* renamed from: a */
    public final void m17185a(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.m17288a(onConnectionFailedListener);
        synchronized (this.f23470i) {
            if (this.f23465d.contains(onConnectionFailedListener)) {
                String valueOf = String.valueOf(onConnectionFailedListener);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 67);
                sb.append("registerConnectionFailedListener(): listener ");
                sb.append(valueOf);
                sb.append(" is already registered");
                Log.w("GmsClientEvents", sb.toString());
            } else {
                this.f23465d.add(onConnectionFailedListener);
            }
        }
    }

    /* renamed from: b */
    public final void m17184b() {
        this.f23466e = true;
    }

    /* renamed from: b */
    public final void m17183b(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.m17288a(onConnectionFailedListener);
        synchronized (this.f23470i) {
            if (!this.f23465d.remove(onConnectionFailedListener)) {
                String valueOf = String.valueOf(onConnectionFailedListener);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57);
                sb.append("unregisterConnectionFailedListener(): listener ");
                sb.append(valueOf);
                sb.append(" not found");
                Log.w("GmsClientEvents", sb.toString());
            }
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
            synchronized (this.f23470i) {
                if (this.f23466e && this.f23462a.mo17192c() && this.f23463b.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(this.f23462a.mo17191o());
                }
            }
            return true;
        }
        StringBuilder sb = new StringBuilder(45);
        sb.append("Don't know how to handle message: ");
        sb.append(i);
        Log.wtf("GmsClientEvents", sb.toString(), new Exception());
        return false;
    }
}
