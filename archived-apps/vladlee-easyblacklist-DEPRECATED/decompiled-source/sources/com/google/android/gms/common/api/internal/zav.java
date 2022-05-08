package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import androidx.p026b.C0529a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.util.concurrent.HandlerExecutor;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zac;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zav.class */
public final class zav implements zabr {

    /* renamed from: c */
    private final Map<Api<?>, Boolean> f6550c;

    /* renamed from: d */
    private final GoogleApiManager f6551d;

    /* renamed from: e */
    private final zaaw f6552e;

    /* renamed from: f */
    private final Lock f6553f;

    /* renamed from: g */
    private final Looper f6554g;

    /* renamed from: h */
    private final GoogleApiAvailabilityLight f6555h;

    /* renamed from: i */
    private final Condition f6556i;

    /* renamed from: j */
    private final ClientSettings f6557j;

    /* renamed from: k */
    private final boolean f6558k;

    /* renamed from: l */
    private final boolean f6559l;

    /* renamed from: n */
    private boolean f6561n;

    /* renamed from: o */
    private Map<ApiKey<?>, ConnectionResult> f6562o;

    /* renamed from: p */
    private Map<ApiKey<?>, ConnectionResult> f6563p;

    /* renamed from: q */
    private C1577a f6564q;

    /* renamed from: r */
    private ConnectionResult f6565r;

    /* renamed from: a */
    private final Map<Api.AnyClientKey<?>, zaw<?>> f6548a = new HashMap();

    /* renamed from: b */
    private final Map<Api.AnyClientKey<?>, zaw<?>> f6549b = new HashMap();

    /* renamed from: m */
    private final Queue<BaseImplementation.ApiMethodImpl<?, ?>> f6560m = new LinkedList();

    public zav(Context context, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder, ArrayList<zap> arrayList, zaaw zaawVar, boolean z) {
        this.f6553f = lock;
        this.f6554g = looper;
        this.f6556i = lock.newCondition();
        this.f6555h = googleApiAvailabilityLight;
        this.f6552e = zaawVar;
        this.f6550c = map2;
        this.f6557j = clientSettings;
        this.f6558k = z;
        HashMap hashMap = new HashMap();
        for (Api<?> api : map2.keySet()) {
            hashMap.put(api.getClientKey(), api);
        }
        HashMap hashMap2 = new HashMap();
        ArrayList<zap> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            zap zapVar = arrayList2.get(i);
            i++;
            zap zapVar2 = zapVar;
            hashMap2.put(zapVar2.mApi, zapVar2);
        }
        boolean z2 = true;
        boolean z3 = true;
        boolean z4 = false;
        boolean z5 = false;
        for (Map.Entry<Api.AnyClientKey<?>, Api.Client> entry : map.entrySet()) {
            Api api2 = (Api) hashMap.get(entry.getKey());
            Api.Client value = entry.getValue();
            if (!value.requiresGooglePlayServices()) {
                z5 = z5;
                z3 = false;
                z4 = z4;
            } else if (!this.f6550c.get(api2).booleanValue()) {
                z5 = true;
                z4 = true;
            } else {
                z4 = true;
                z5 = z5;
            }
            zaw<?> zawVar = new zaw<>(context, api2, looper, value, (zap) hashMap2.get(api2), clientSettings, abstractClientBuilder);
            this.f6548a.put(entry.getKey(), zawVar);
            if (value.requiresSignIn()) {
                this.f6549b.put(entry.getKey(), zawVar);
            }
        }
        this.f6559l = (!z4 || z3 || z5) ? false : z2;
        this.f6551d = GoogleApiManager.zaba();
    }

    /* renamed from: a */
    private final ConnectionResult m5803a(Api.AnyClientKey<?> anyClientKey) {
        this.f6553f.lock();
        try {
            zaw<?> zawVar = this.f6548a.get(anyClientKey);
            if (this.f6562o != null && zawVar != null) {
                return this.f6562o.get(zawVar.getApiKey());
            }
            this.f6553f.unlock();
            return null;
        } finally {
            this.f6553f.unlock();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private final boolean m5804a() {
        ConnectionResult a;
        this.f6553f.lock();
        try {
            if (this.f6561n && this.f6558k) {
                Iterator<Api.AnyClientKey<?>> it = this.f6549b.keySet().iterator();
                do {
                    if (it.hasNext()) {
                        a = m5803a(it.next());
                        if (a == null) {
                            break;
                        }
                    } else {
                        this.f6553f.unlock();
                        return true;
                    }
                } while (a.isSuccess());
            }
            this.f6553f.unlock();
            return false;
        } catch (Throwable th) {
            this.f6553f.unlock();
            throw th;
        }
    }

    /* renamed from: a */
    private final <T extends BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient>> boolean m5802a(T t) {
        Api.AnyClientKey<?> clientKey = t.getClientKey();
        ConnectionResult a = m5803a(clientKey);
        if (a == null || a.getErrorCode() != 4) {
            return false;
        }
        t.setFailedResult(new Status(4, null, this.f6551d.m5961a(this.f6548a.get(clientKey).getApiKey(), System.identityHashCode(this.f6552e))));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ boolean m5799a(zav zavVar, zaw zawVar, ConnectionResult connectionResult) {
        return !connectionResult.isSuccess() && !connectionResult.hasResolution() && zavVar.f6550c.get(zawVar.getApi()).booleanValue() && zawVar.zaad().requiresGooglePlayServices() && zavVar.f6555h.isUserResolvableError(connectionResult.getErrorCode());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static /* synthetic */ ConnectionResult m5792f(zav zavVar) {
        ConnectionResult connectionResult = null;
        int i = 0;
        int i2 = 0;
        ConnectionResult connectionResult2 = null;
        for (zaw<?> zawVar : zavVar.f6548a.values()) {
            Api<?> api = zawVar.getApi();
            ConnectionResult connectionResult3 = zavVar.f6562o.get(zawVar.getApiKey());
            if (!connectionResult3.isSuccess() && (!zavVar.f6550c.get(api).booleanValue() || connectionResult3.hasResolution() || zavVar.f6555h.isUserResolvableError(connectionResult3.getErrorCode()))) {
                if (connectionResult3.getErrorCode() != 4 || !zavVar.f6558k) {
                    int priority = api.zah().getPriority();
                    if (connectionResult == null || i > priority) {
                        connectionResult = connectionResult3;
                        i = priority;
                    }
                } else {
                    int priority2 = api.zah().getPriority();
                    if (connectionResult2 == null || i2 > priority2) {
                        connectionResult2 = connectionResult3;
                        i2 = priority2;
                    }
                }
            }
        }
        return (connectionResult == null || connectionResult2 == null || i <= i2) ? connectionResult : connectionResult2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static /* synthetic */ void m5789i(zav zavVar) {
        ClientSettings clientSettings = zavVar.f6557j;
        if (clientSettings == null) {
            zavVar.f6552e.f6458c = Collections.emptySet();
            return;
        }
        HashSet hashSet = new HashSet(clientSettings.getRequiredScopes());
        Map<Api<?>, ClientSettings.OptionalApiSettings> optionalApiSettings = zavVar.f6557j.getOptionalApiSettings();
        for (Api<?> api : optionalApiSettings.keySet()) {
            ConnectionResult connectionResult = zavVar.getConnectionResult(api);
            if (connectionResult != null && connectionResult.isSuccess()) {
                hashSet.addAll(optionalApiSettings.get(api).mScopes);
            }
        }
        zavVar.f6552e.f6458c = hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static /* synthetic */ void m5788j(zav zavVar) {
        while (!zavVar.f6560m.isEmpty()) {
            zavVar.execute(zavVar.f6560m.remove());
        }
        zavVar.f6552e.zab((Bundle) null);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final ConnectionResult blockingConnect() {
        connect();
        while (isConnecting()) {
            try {
                this.f6556i.await();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        if (isConnected()) {
            return ConnectionResult.RESULT_SUCCESS;
        }
        ConnectionResult connectionResult = this.f6565r;
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
                nanos = this.f6556i.awaitNanos(nanos);
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
        ConnectionResult connectionResult = this.f6565r;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void connect() {
        this.f6553f.lock();
        try {
            if (!this.f6561n) {
                this.f6561n = true;
                this.f6562o = null;
                this.f6563p = null;
                this.f6564q = null;
                this.f6565r = null;
                this.f6551d.zam();
                this.f6551d.zaa(this.f6548a.values()).addOnCompleteListener(new HandlerExecutor(this.f6554g), new C1607bc(this, (byte) 0));
            }
        } finally {
            this.f6553f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void disconnect() {
        this.f6553f.lock();
        try {
            this.f6561n = false;
            this.f6562o = null;
            this.f6563p = null;
            if (this.f6564q != null) {
                this.f6564q.m5914a();
                this.f6564q = null;
            }
            this.f6565r = null;
            while (!this.f6560m.isEmpty()) {
                BaseImplementation.ApiMethodImpl<?, ?> remove = this.f6560m.remove();
                remove.zaa(null);
                remove.cancel();
            }
            this.f6556i.signalAll();
        } finally {
            this.f6553f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        if (this.f6558k && m5802a((zav) t)) {
            return t;
        }
        if (!isConnected()) {
            this.f6560m.add(t);
            return t;
        }
        this.f6552e.f6460e.m5811a(t);
        return (T) this.f6548a.get(t.getClientKey()).doRead((zaw<?>) t);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        Api.AnyClientKey<A> clientKey = t.getClientKey();
        if (this.f6558k && m5802a((zav) t)) {
            return t;
        }
        this.f6552e.f6460e.m5811a(t);
        return (T) this.f6548a.get(clientKey).doWrite((zaw<?>) t);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final ConnectionResult getConnectionResult(Api<?> api) {
        return m5803a(api.getClientKey());
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final boolean isConnected() {
        boolean z;
        this.f6553f.lock();
        try {
            if (this.f6562o != null) {
                if (this.f6565r == null) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } finally {
            this.f6553f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final boolean isConnecting() {
        boolean z;
        this.f6553f.lock();
        try {
            if (this.f6562o == null) {
                if (this.f6561n) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } finally {
            this.f6553f.unlock();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.common.api.internal.zabr
    public final boolean maybeSignIn(SignInConnectionListener signInConnectionListener) {
        this.f6553f.lock();
        try {
            if (!this.f6561n || m5804a()) {
                this.f6553f.unlock();
                return false;
            }
            this.f6551d.zam();
            this.f6564q = new C1577a(this, signInConnectionListener);
            this.f6551d.zaa(this.f6549b.values()).addOnCompleteListener(new HandlerExecutor(this.f6554g), this.f6564q);
            this.f6553f.unlock();
            return true;
        } catch (Throwable th) {
            this.f6553f.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void maybeSignOut() {
        this.f6553f.lock();
        try {
            this.f6551d.m5964a();
            if (this.f6564q != null) {
                this.f6564q.m5914a();
                this.f6564q = null;
            }
            if (this.f6563p == null) {
                this.f6563p = new C0529a(this.f6549b.size());
            }
            ConnectionResult connectionResult = new ConnectionResult(4);
            for (zaw<?> zawVar : this.f6549b.values()) {
                this.f6563p.put(zawVar.getApiKey(), connectionResult);
            }
            if (this.f6562o != null) {
                this.f6562o.putAll(this.f6563p);
            }
        } finally {
            this.f6553f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void zau() {
    }
}
