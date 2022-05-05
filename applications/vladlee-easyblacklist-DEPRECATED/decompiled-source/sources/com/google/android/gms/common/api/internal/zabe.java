package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zac;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabe.class */
public final class zabe implements zabr, zar {

    /* renamed from: a */
    final Map<Api.AnyClientKey<?>, Api.Client> f6481a;

    /* renamed from: c */
    int f6483c;

    /* renamed from: d */
    final zaaw f6484d;

    /* renamed from: e */
    final zabs f6485e;

    /* renamed from: f */
    private final Lock f6486f;

    /* renamed from: g */
    private final Condition f6487g;

    /* renamed from: h */
    private final Context f6488h;

    /* renamed from: i */
    private final GoogleApiAvailabilityLight f6489i;

    /* renamed from: j */
    private final HandlerC1631x f6490j;

    /* renamed from: k */
    private final ClientSettings f6491k;

    /* renamed from: l */
    private final Map<Api<?>, Boolean> f6492l;

    /* renamed from: m */
    private final Api.AbstractClientBuilder<? extends zac, SignInOptions> f6493m;

    /* renamed from: n */
    private volatile zabb f6494n;

    /* renamed from: b */
    final Map<Api.AnyClientKey<?>, ConnectionResult> f6482b = new HashMap();

    /* renamed from: o */
    private ConnectionResult f6495o = null;

    public zabe(Context context, zaaw zaawVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder, ArrayList<zap> arrayList, zabs zabsVar) {
        this.f6488h = context;
        this.f6486f = lock;
        this.f6489i = googleApiAvailabilityLight;
        this.f6481a = map;
        this.f6491k = clientSettings;
        this.f6492l = map2;
        this.f6493m = abstractClientBuilder;
        this.f6484d = zaawVar;
        this.f6485e = zabsVar;
        ArrayList<zap> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            zap zapVar = arrayList2.get(i);
            i++;
            zapVar.zaa(this);
        }
        this.f6490j = new HandlerC1631x(this, looper);
        this.f6487g = lock.newCondition();
        this.f6494n = new zaat(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m5835a() {
        this.f6486f.lock();
        try {
            this.f6494n = new zaak(this, this.f6491k, this.f6492l, this.f6489i, this.f6493m, this.f6486f, this.f6488h);
            this.f6494n.begin();
            this.f6487g.signalAll();
        } finally {
            this.f6486f.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m5834a(ConnectionResult connectionResult) {
        this.f6486f.lock();
        try {
            this.f6495o = connectionResult;
            this.f6494n = new zaat(this);
            this.f6494n.begin();
            this.f6487g.signalAll();
        } finally {
            this.f6486f.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m5833a(AbstractC1630w wVar) {
        this.f6490j.sendMessage(this.f6490j.obtainMessage(1, wVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m5831a(RuntimeException runtimeException) {
        this.f6490j.sendMessage(this.f6490j.obtainMessage(2, runtimeException));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m5830b() {
        this.f6486f.lock();
        try {
            this.f6484d.m5842b();
            this.f6494n = new zaaf(this);
            this.f6494n.begin();
            this.f6487g.signalAll();
        } finally {
            this.f6486f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final ConnectionResult blockingConnect() {
        connect();
        while (isConnecting()) {
            try {
                this.f6487g.await();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        if (isConnected()) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        ConnectionResult connectionResult = this.f6495o;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        connect();
        long nanos = timeUnit.toNanos(j);
        while (isConnecting()) {
            if (nanos <= 0) {
                disconnect();
                return new ConnectionResult(14, null);
            }
            try {
                nanos = this.f6487g.awaitNanos(nanos);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
            Thread.currentThread().interrupt();
            return new ConnectionResult(15, null);
        }
        if (isConnected()) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        ConnectionResult connectionResult = this.f6495o;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void connect() {
        this.f6494n.connect();
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void disconnect() {
        if (this.f6494n.disconnect()) {
            this.f6482b.clear();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String concat = String.valueOf(str).concat("  ");
        printWriter.append((CharSequence) str).append("mState=").println(this.f6494n);
        for (Api<?> api : this.f6492l.keySet()) {
            printWriter.append((CharSequence) str).append((CharSequence) api.getName()).println(":");
            this.f6481a.get(api.getClientKey()).dump(concat, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        t.zar();
        return (T) this.f6494n.enqueue(t);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        t.zar();
        return (T) this.f6494n.execute(t);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final ConnectionResult getConnectionResult(Api<?> api) {
        Api.AnyClientKey<?> clientKey = api.getClientKey();
        if (!this.f6481a.containsKey(clientKey)) {
            return null;
        }
        if (this.f6481a.get(clientKey).isConnected()) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        if (this.f6482b.containsKey(clientKey)) {
            return this.f6482b.get(clientKey);
        }
        return null;
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final boolean isConnected() {
        return this.f6494n instanceof zaaf;
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final boolean isConnecting() {
        return this.f6494n instanceof zaak;
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final boolean maybeSignIn(SignInConnectionListener signInConnectionListener) {
        return false;
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void maybeSignOut() {
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.f6486f.lock();
        try {
            this.f6494n.onConnected(bundle);
        } finally {
            this.f6486f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.f6486f.lock();
        try {
            this.f6494n.onConnectionSuspended(i);
        } finally {
            this.f6486f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zar
    public final void zaa(ConnectionResult connectionResult, Api<?> api, boolean z) {
        this.f6486f.lock();
        try {
            this.f6494n.zaa(connectionResult, api, z);
        } finally {
            this.f6486f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void zau() {
        if (isConnected()) {
            ((zaaf) this.f6494n).m5876a();
        }
    }
}
