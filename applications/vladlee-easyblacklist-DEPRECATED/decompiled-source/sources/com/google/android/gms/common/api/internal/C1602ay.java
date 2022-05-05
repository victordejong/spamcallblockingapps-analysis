package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.p026b.C0529a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.base.zar;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zac;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.ay */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ay.class */
public final class C1602ay implements zabr {

    /* renamed from: a */
    private final Context f6364a;

    /* renamed from: b */
    private final zaaw f6365b;

    /* renamed from: c */
    private final Looper f6366c;

    /* renamed from: d */
    private final zabe f6367d;

    /* renamed from: e */
    private final zabe f6368e;

    /* renamed from: f */
    private final Map<Api.AnyClientKey<?>, zabe> f6369f;

    /* renamed from: h */
    private final Api.Client f6371h;

    /* renamed from: i */
    private Bundle f6372i;

    /* renamed from: m */
    private final Lock f6376m;

    /* renamed from: g */
    private final Set<SignInConnectionListener> f6370g = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: j */
    private ConnectionResult f6373j = null;

    /* renamed from: k */
    private ConnectionResult f6374k = null;

    /* renamed from: l */
    private boolean f6375l = false;

    /* renamed from: n */
    private int f6377n = 0;

    private C1602ay(Context context, zaaw zaawVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, Map<Api.AnyClientKey<?>, Api.Client> map2, ClientSettings clientSettings, Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder, Api.Client client, ArrayList<zap> arrayList, ArrayList<zap> arrayList2, Map<Api<?>, Boolean> map3, Map<Api<?>, Boolean> map4) {
        this.f6364a = context;
        this.f6365b = zaawVar;
        this.f6376m = lock;
        this.f6366c = looper;
        this.f6371h = client;
        this.f6367d = new zabe(context, this.f6365b, lock, looper, googleApiAvailabilityLight, map2, null, map4, null, arrayList2, new C1603az(this, (byte) 0));
        this.f6368e = new zabe(context, this.f6365b, lock, looper, googleApiAvailabilityLight, map, clientSettings, map3, abstractClientBuilder, arrayList, new C1606bb(this, (byte) 0));
        C0529a aVar = new C0529a();
        for (Api.AnyClientKey<?> anyClientKey : map2.keySet()) {
            aVar.put(anyClientKey, this.f6367d);
        }
        for (Api.AnyClientKey<?> anyClientKey2 : map.keySet()) {
            aVar.put(anyClientKey2, this.f6368e);
        }
        this.f6369f = Collections.unmodifiableMap(aVar);
    }

    /* renamed from: a */
    public static C1602ay m5905a(Context context, zaaw zaawVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder, ArrayList<zap> arrayList) {
        C0529a aVar = new C0529a();
        C0529a aVar2 = new C0529a();
        Api.Client client = null;
        for (Map.Entry<Api.AnyClientKey<?>, Api.Client> entry : map.entrySet()) {
            Api.Client value = entry.getValue();
            if (value.providesSignIn()) {
                client = value;
            }
            boolean requiresSignIn = value.requiresSignIn();
            Api.AnyClientKey<?> key = entry.getKey();
            if (requiresSignIn) {
                aVar.put(key, value);
            } else {
                aVar2.put(key, value);
            }
        }
        Preconditions.checkState(!aVar.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        C0529a aVar3 = new C0529a();
        C0529a aVar4 = new C0529a();
        for (Api<?> api : map2.keySet()) {
            Api.AnyClientKey<?> clientKey = api.getClientKey();
            if (aVar.containsKey(clientKey)) {
                aVar3.put(api, map2.get(api));
            } else if (aVar2.containsKey(clientKey)) {
                aVar4.put(api, map2.get(api));
            } else {
                throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList<zap> arrayList4 = arrayList;
        int size = arrayList4.size();
        int i = 0;
        while (i < size) {
            zap zapVar = arrayList4.get(i);
            i++;
            zap zapVar2 = zapVar;
            if (aVar3.containsKey(zapVar2.mApi)) {
                arrayList2.add(zapVar2);
            } else if (aVar4.containsKey(zapVar2.mApi)) {
                arrayList3.add(zapVar2);
            } else {
                throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
            }
        }
        return new C1602ay(context, zaawVar, lock, looper, googleApiAvailabilityLight, aVar, aVar2, clientSettings, abstractClientBuilder, client, arrayList2, arrayList3, aVar3, aVar4);
    }

    /* renamed from: a */
    private final void m5906a() {
        for (SignInConnectionListener signInConnectionListener : this.f6370g) {
            signInConnectionListener.onComplete();
        }
        this.f6370g.clear();
    }

    /* renamed from: a */
    private final void m5904a(ConnectionResult connectionResult) {
        int i = this.f6377n;
        if (i != 1) {
            if (i != 2) {
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                this.f6377n = 0;
            }
            this.f6365b.zac(connectionResult);
        }
        m5906a();
        this.f6377n = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m5901a(C1602ay ayVar, int i, boolean z) {
        ayVar.f6365b.zab(i, z);
        ayVar.f6374k = null;
        ayVar.f6373j = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m5900a(C1602ay ayVar, Bundle bundle) {
        Bundle bundle2 = ayVar.f6372i;
        if (bundle2 == null) {
            ayVar.f6372i = bundle;
        } else if (bundle != null) {
            bundle2.putAll(bundle);
        }
    }

    /* renamed from: a */
    private final boolean m5903a(BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient> apiMethodImpl) {
        Api.AnyClientKey<? extends Api.AnyClient> clientKey = apiMethodImpl.getClientKey();
        Preconditions.checkArgument(this.f6369f.containsKey(clientKey), "GoogleApiClient is not configured to use the API required for this call.");
        return this.f6369f.get(clientKey).equals(this.f6368e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ void m5895b(C1602ay ayVar) {
        if (m5896b(ayVar.f6373j)) {
            if (m5896b(ayVar.f6374k) || ayVar.m5897b()) {
                int i = ayVar.f6377n;
                if (i != 1) {
                    if (i != 2) {
                        Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                        ayVar.f6377n = 0;
                        return;
                    }
                    ayVar.f6365b.zab(ayVar.f6372i);
                }
                ayVar.m5906a();
                ayVar.f6377n = 0;
                return;
            }
            ConnectionResult connectionResult = ayVar.f6374k;
            if (connectionResult == null) {
                return;
            }
            if (ayVar.f6377n == 1) {
                ayVar.m5906a();
                return;
            }
            ayVar.m5904a(connectionResult);
            ayVar.f6367d.disconnect();
        } else if (ayVar.f6373j == null || !m5896b(ayVar.f6374k)) {
            ConnectionResult connectionResult2 = ayVar.f6373j;
            if (connectionResult2 != null && ayVar.f6374k != null) {
                if (ayVar.f6368e.f6483c < ayVar.f6367d.f6483c) {
                    connectionResult2 = ayVar.f6374k;
                }
                ayVar.m5904a(connectionResult2);
            }
        } else {
            ayVar.f6368e.disconnect();
            ayVar.m5904a(ayVar.f6373j);
        }
    }

    /* renamed from: b */
    private final boolean m5897b() {
        ConnectionResult connectionResult = this.f6374k;
        return connectionResult != null && connectionResult.getErrorCode() == 4;
    }

    /* renamed from: b */
    private static boolean m5896b(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.isSuccess();
    }

    /* renamed from: c */
    private final PendingIntent m5893c() {
        if (this.f6371h == null) {
            return null;
        }
        return PendingIntent.getActivity(this.f6364a, System.identityHashCode(this.f6365b), this.f6371h.getSignInIntent(), 134217728);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final ConnectionResult blockingConnect() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void connect() {
        this.f6377n = 2;
        this.f6375l = false;
        this.f6374k = null;
        this.f6373j = null;
        this.f6367d.connect();
        this.f6368e.connect();
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void disconnect() {
        this.f6374k = null;
        this.f6373j = null;
        this.f6377n = 0;
        this.f6367d.disconnect();
        this.f6368e.disconnect();
        m5906a();
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(":");
        this.f6368e.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(":");
        this.f6367d.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        zabe zabeVar;
        if (!m5903a((BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient>) t)) {
            zabeVar = this.f6367d;
        } else if (m5897b()) {
            t.setFailedResult(new Status(4, null, m5893c()));
            return t;
        } else {
            zabeVar = this.f6368e;
        }
        return (T) zabeVar.enqueue(t);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        zabe zabeVar;
        if (!m5903a((BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient>) t)) {
            zabeVar = this.f6367d;
        } else if (m5897b()) {
            t.setFailedResult(new Status(4, null, m5893c()));
            return t;
        } else {
            zabeVar = this.f6368e;
        }
        return (T) zabeVar.execute(t);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final ConnectionResult getConnectionResult(Api<?> api) {
        zabe zabeVar;
        if (!this.f6369f.get(api.getClientKey()).equals(this.f6368e)) {
            zabeVar = this.f6367d;
        } else if (m5897b()) {
            return new ConnectionResult(4, m5893c());
        } else {
            zabeVar = this.f6368e;
        }
        return zabeVar.getConnectionResult(api);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final boolean isConnected() {
        boolean z;
        this.f6376m.lock();
        try {
            if (this.f6367d.isConnected()) {
                z = true;
                if (!this.f6368e.isConnected()) {
                    z = true;
                    if (!m5897b()) {
                        if (this.f6377n == 1) {
                            z = true;
                        }
                    }
                }
                return z;
            }
            z = false;
            return z;
        } finally {
            this.f6376m.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final boolean isConnecting() {
        this.f6376m.lock();
        try {
            return this.f6377n == 2;
        } finally {
            this.f6376m.unlock();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.common.api.internal.zabr
    public final boolean maybeSignIn(SignInConnectionListener signInConnectionListener) {
        this.f6376m.lock();
        try {
            if ((isConnecting() || isConnected()) && !this.f6368e.isConnected()) {
                this.f6370g.add(signInConnectionListener);
                if (this.f6377n == 0) {
                    this.f6377n = 1;
                }
                this.f6374k = null;
                this.f6368e.connect();
                this.f6376m.unlock();
                return true;
            }
            this.f6376m.unlock();
            return false;
        } catch (Throwable th) {
            this.f6376m.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void maybeSignOut() {
        this.f6376m.lock();
        try {
            boolean isConnecting = isConnecting();
            this.f6368e.disconnect();
            this.f6374k = new ConnectionResult(4);
            if (isConnecting) {
                new zar(this.f6366c).post(new RunnableC1605ba(this));
            } else {
                m5906a();
            }
        } finally {
            this.f6376m.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void zau() {
        this.f6367d.zau();
        this.f6368e.zau();
    }
}
