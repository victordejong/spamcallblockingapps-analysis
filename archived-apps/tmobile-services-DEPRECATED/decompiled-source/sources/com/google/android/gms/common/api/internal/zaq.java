package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zac;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;
import javax.annotation.concurrent.GuardedBy;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaq.class */
public final class zaq implements zabr {

    /* renamed from: a */
    private final Context f7322a;

    /* renamed from: b */
    private final zaaw f7323b;

    /* renamed from: c */
    private final zabe f7324c;

    /* renamed from: d */
    private final zabe f7325d;

    /* renamed from: e */
    private final Map<Api.AnyClientKey<?>, zabe> f7326e;

    /* renamed from: g */
    private final Api.Client f7328g;

    /* renamed from: h */
    private Bundle f7329h;

    /* renamed from: l */
    private final Lock f7333l;

    /* renamed from: f */
    private final Set<SignInConnectionListener> f7327f = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: i */
    private ConnectionResult f7330i = null;

    /* renamed from: j */
    private ConnectionResult f7331j = null;

    /* renamed from: k */
    private boolean f7332k = false;
    @GuardedBy

    /* renamed from: m */
    private int f7334m = 0;

    private zaq(Context context, zaaw zaawVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, Map<Api.AnyClientKey<?>, Api.Client> map2, ClientSettings clientSettings, Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder, Api.Client client, ArrayList<zap> arrayList, ArrayList<zap> arrayList2, Map<Api<?>, Boolean> map3, Map<Api<?>, Boolean> map4) {
        this.f7322a = context;
        this.f7323b = zaawVar;
        this.f7333l = lock;
        this.f7328g = client;
        this.f7324c = new zabe(context, zaawVar, lock, looper, googleApiAvailabilityLight, map2, null, map4, null, arrayList2, new zas(this, null));
        this.f7325d = new zabe(context, this.f7323b, lock, looper, googleApiAvailabilityLight, map, clientSettings, map3, abstractClientBuilder, arrayList, new zau(this, null));
        ArrayMap arrayMap = new ArrayMap();
        for (Api.AnyClientKey<?> anyClientKey : map2.keySet()) {
            arrayMap.put(anyClientKey, this.f7324c);
        }
        for (Api.AnyClientKey<?> anyClientKey2 : map.keySet()) {
            arrayMap.put(anyClientKey2, this.f7325d);
        }
        this.f7326e = Collections.unmodifiableMap(arrayMap);
    }

    /* renamed from: b */
    public static zaq m14709b(Context context, zaaw zaawVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder, ArrayList<zap> arrayList) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        Api.Client client = null;
        for (Map.Entry<Api.AnyClientKey<?>, Api.Client> entry : map.entrySet()) {
            Api.Client value = entry.getValue();
            if (value.providesSignIn()) {
                client = value;
            }
            if (value.requiresSignIn()) {
                arrayMap.put(entry.getKey(), value);
            } else {
                arrayMap2.put(entry.getKey(), value);
            }
        }
        Preconditions.m14519o(!arrayMap.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        for (Api<?> api : map2.keySet()) {
            Api.AnyClientKey<?> a = api.m15033a();
            if (arrayMap.containsKey(a)) {
                arrayMap3.put(api, map2.get(api));
            } else if (arrayMap2.containsKey(a)) {
                arrayMap4.put(api, map2.get(api));
            } else {
                throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            zap zapVar = arrayList.get(i);
            i++;
            zap zapVar2 = zapVar;
            if (arrayMap3.containsKey(zapVar2.f7319a)) {
                arrayList2.add(zapVar2);
            } else if (arrayMap4.containsKey(zapVar2.f7319a)) {
                arrayList3.add(zapVar2);
            } else {
                throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
            }
        }
        return new zaq(context, zaawVar, lock, looper, googleApiAvailabilityLight, arrayMap, arrayMap2, clientSettings, abstractClientBuilder, client, arrayList2, arrayList3, arrayMap3, arrayMap4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy
    /* renamed from: f */
    public final void m14707f(int i, boolean z) {
        this.f7323b.mo14686c(i, z);
        this.f7331j = null;
        this.f7330i = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public final void m14706g(Bundle bundle) {
        Bundle bundle2 = this.f7329h;
        if (bundle2 == null) {
            this.f7329h = bundle;
        } else if (bundle != null) {
            bundle2.putAll(bundle);
        }
    }

    @GuardedBy
    /* renamed from: h */
    private final void m14705h(ConnectionResult connectionResult) {
        int i = this.f7334m;
        if (i != 1) {
            if (i != 2) {
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                this.f7334m = 0;
            }
            this.f7323b.mo14688a(connectionResult);
        }
        m14692u();
        this.f7334m = 0;
    }

    /* renamed from: k */
    private final boolean m14702k(BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient> apiMethodImpl) {
        Api.AnyClientKey<? extends Api.AnyClient> v = apiMethodImpl.m14983v();
        Preconditions.m14532b(this.f7326e.containsKey(v), "GoogleApiClient is not configured to use the API required for this call.");
        return this.f7326e.get(v).equals(this.f7325d);
    }

    /* renamed from: o */
    private static boolean m14698o(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.m15090d0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy
    /* renamed from: t */
    public final void m14693t() {
        ConnectionResult connectionResult;
        if (m14698o(this.f7330i)) {
            if (m14698o(this.f7331j) || m14691v()) {
                int i = this.f7334m;
                if (i != 1) {
                    if (i != 2) {
                        Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                        this.f7334m = 0;
                        return;
                    }
                    this.f7323b.mo14687b(this.f7329h);
                }
                m14692u();
                this.f7334m = 0;
                return;
            }
            ConnectionResult connectionResult2 = this.f7331j;
            if (connectionResult2 == null) {
                return;
            }
            if (this.f7334m == 1) {
                m14692u();
                return;
            }
            m14705h(connectionResult2);
            this.f7324c.disconnect();
        } else if (this.f7330i == null || !m14698o(this.f7331j)) {
            ConnectionResult connectionResult3 = this.f7330i;
            if (connectionResult3 != null && (connectionResult = this.f7331j) != null) {
                if (this.f7325d.f7228m < this.f7324c.f7228m) {
                    connectionResult3 = connectionResult;
                }
                m14705h(connectionResult3);
            }
        } else {
            this.f7325d.disconnect();
            m14705h(this.f7330i);
        }
    }

    @GuardedBy
    /* renamed from: u */
    private final void m14692u() {
        for (SignInConnectionListener signInConnectionListener : this.f7327f) {
            signInConnectionListener.onComplete();
        }
        this.f7327f.clear();
    }

    @GuardedBy
    /* renamed from: v */
    private final boolean m14691v() {
        ConnectionResult connectionResult = this.f7331j;
        return connectionResult != null && connectionResult.m15094B() == 4;
    }

    @Nullable
    /* renamed from: w */
    private final PendingIntent m14690w() {
        if (this.f7328g == null) {
            return null;
        }
        return PendingIntent.getActivity(this.f7322a, System.identityHashCode(this.f7323b), this.f7328g.getSignInIntent(), 134217728);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    @GuardedBy
    public final void connect() {
        this.f7334m = 2;
        this.f7332k = false;
        this.f7331j = null;
        this.f7330i = null;
        this.f7324c.connect();
        this.f7325d.connect();
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    @GuardedBy
    /* renamed from: d */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo14681d(@NonNull T t) {
        if (!m14702k(t)) {
            return (T) this.f7324c.mo14681d(t);
        }
        if (!m14691v()) {
            return (T) this.f7325d.mo14681d(t);
        }
        t.m14979z(new Status(4, null, m14690w()));
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    @GuardedBy
    public final void disconnect() {
        this.f7331j = null;
        this.f7330i = null;
        this.f7334m = 0;
        this.f7324c.disconnect();
        this.f7325d.disconnect();
        m14692u();
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(":");
        this.f7325d.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(":");
        this.f7324c.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    @GuardedBy
    /* renamed from: e */
    public final void mo14680e() {
        this.f7324c.mo14680e();
        this.f7325d.mo14680e();
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final boolean isConnected() {
        boolean z;
        this.f7333l.lock();
        try {
            if (this.f7324c.isConnected()) {
                z = true;
                if (!this.f7325d.isConnected()) {
                    z = true;
                    if (!m14691v()) {
                        if (this.f7334m == 1) {
                            z = true;
                        }
                    }
                }
                return z;
            }
            z = false;
            return z;
        } finally {
            this.f7333l.unlock();
        }
    }
}
