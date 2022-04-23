package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClientEventManager;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.service.Common;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zac;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaaw.class */
public final class zaaw extends GoogleApiClient implements zabs {

    /* renamed from: b */
    final Map<Api.AnyClientKey<?>, Api.Client> f6457b;

    /* renamed from: c */
    Set<Scope> f6458c;

    /* renamed from: d */
    Set<zack> f6459d;

    /* renamed from: e */
    final zacp f6460e;

    /* renamed from: f */
    private final Lock f6461f;

    /* renamed from: g */
    private boolean f6462g;

    /* renamed from: h */
    private final GmsClientEventManager f6463h;

    /* renamed from: j */
    private final int f6465j;

    /* renamed from: k */
    private final Context f6466k;

    /* renamed from: l */
    private final Looper f6467l;

    /* renamed from: m */
    private volatile boolean f6468m;

    /* renamed from: n */
    private long f6469n;

    /* renamed from: o */
    private long f6470o;

    /* renamed from: p */
    private final HandlerC1627t f6471p;

    /* renamed from: q */
    private final GoogleApiAvailability f6472q;

    /* renamed from: r */
    private zabq f6473r;

    /* renamed from: s */
    private final ClientSettings f6474s;

    /* renamed from: t */
    private final Map<Api<?>, Boolean> f6475t;

    /* renamed from: u */
    private final Api.AbstractClientBuilder<? extends zac, SignInOptions> f6476u;

    /* renamed from: v */
    private final ListenerHolders f6477v;

    /* renamed from: w */
    private final ArrayList<zap> f6478w;

    /* renamed from: x */
    private Integer f6479x;

    /* renamed from: y */
    private final GmsClientEventManager.GmsClientEventState f6480y;

    /* renamed from: i */
    private zabr f6464i = null;

    /* renamed from: a */
    final Queue<BaseImplementation.ApiMethodImpl<?, ?>> f6456a = new LinkedList();

    public zaaw(Context context, Lock lock, Looper looper, ClientSettings clientSettings, GoogleApiAvailability googleApiAvailability, Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder, Map<Api<?>, Boolean> map, List<GoogleApiClient.ConnectionCallbacks> list, List<GoogleApiClient.OnConnectionFailedListener> list2, Map<Api.AnyClientKey<?>, Api.Client> map2, int i, int i2, ArrayList<zap> arrayList, boolean z) {
        this.f6469n = ClientLibraryUtils.isPackageSide() ? 10000L : 120000L;
        this.f6470o = 5000L;
        this.f6458c = new HashSet();
        this.f6477v = new ListenerHolders();
        this.f6479x = null;
        this.f6459d = null;
        this.f6480y = new C1624q(this);
        this.f6466k = context;
        this.f6461f = lock;
        this.f6462g = false;
        this.f6463h = new GmsClientEventManager(looper, this.f6480y);
        this.f6467l = looper;
        this.f6471p = new HandlerC1627t(this, looper);
        this.f6472q = googleApiAvailability;
        this.f6465j = i;
        if (this.f6465j >= 0) {
            this.f6479x = Integer.valueOf(i2);
        }
        this.f6475t = map;
        this.f6457b = map2;
        this.f6478w = arrayList;
        this.f6460e = new zacp(this.f6457b);
        for (GoogleApiClient.ConnectionCallbacks connectionCallbacks : list) {
            this.f6463h.registerConnectionCallbacks(connectionCallbacks);
        }
        for (GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener : list2) {
            this.f6463h.registerConnectionFailedListener(onConnectionFailedListener);
        }
        this.f6474s = clientSettings;
        this.f6476u = abstractClientBuilder;
    }

    /* renamed from: a */
    private final void m5846a(int i) {
        Integer num = this.f6479x;
        if (num == null) {
            this.f6479x = Integer.valueOf(i);
        } else if (num.intValue() != i) {
            String b = m5841b(i);
            String b2 = m5841b(this.f6479x.intValue());
            StringBuilder sb = new StringBuilder(String.valueOf(b).length() + 51 + String.valueOf(b2).length());
            sb.append("Cannot use sign-in mode: ");
            sb.append(b);
            sb.append(". Mode was already set to ");
            sb.append(b2);
            throw new IllegalStateException(sb.toString());
        }
        if (this.f6464i == null) {
            boolean z = false;
            boolean z2 = false;
            for (Api.Client client : this.f6457b.values()) {
                boolean z3 = z;
                if (client.requiresSignIn()) {
                    z3 = true;
                }
                z = z3;
                if (client.providesSignIn()) {
                    z2 = true;
                    z = z3;
                }
            }
            int intValue = this.f6479x.intValue();
            if (intValue != 1) {
                if (intValue == 2 && z) {
                    if (this.f6462g) {
                        this.f6464i = new zav(this.f6466k, this.f6461f, this.f6467l, this.f6472q, this.f6457b, this.f6474s, this.f6475t, this.f6476u, this.f6478w, this, true);
                        return;
                    } else {
                        this.f6464i = C1602ay.m5905a(this.f6466k, this, this.f6461f, this.f6467l, this.f6472q, this.f6457b, this.f6474s, this.f6475t, this.f6476u, this.f6478w);
                        return;
                    }
                }
            } else if (!z) {
                throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
            } else if (z2) {
                throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            if (!this.f6462g || z2) {
                this.f6464i = new zabe(this.f6466k, this, this.f6461f, this.f6467l, this.f6472q, this.f6457b, this.f6474s, this.f6475t, this.f6476u, this.f6478w, this);
            } else {
                this.f6464i = new zav(this.f6466k, this.f6461f, this.f6467l, this.f6472q, this.f6457b, this.f6474s, this.f6475t, this.f6476u, this.f6478w, this, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m5845a(GoogleApiClient googleApiClient, StatusPendingResult statusPendingResult, boolean z) {
        Common.zapw.zaa(googleApiClient).setResultCallback(new C1628u(this, statusPendingResult, z, googleApiClient));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m5844a(zaaw zaawVar) {
        zaawVar.f6461f.lock();
        try {
            if (zaawVar.f6468m) {
                zaawVar.m5836e();
            }
        } finally {
            zaawVar.f6461f.unlock();
        }
    }

    /* renamed from: b */
    private static String m5841b(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "UNKNOWN" : "SIGN_IN_MODE_NONE" : "SIGN_IN_MODE_OPTIONAL" : "SIGN_IN_MODE_REQUIRED";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ void m5840b(zaaw zaawVar) {
        zaawVar.f6461f.lock();
        try {
            if (zaawVar.m5842b()) {
                zaawVar.m5836e();
            }
        } finally {
            zaawVar.f6461f.unlock();
        }
    }

    /* renamed from: e */
    private final void m5836e() {
        this.f6463h.enableCallbacks();
        this.f6464i.connect();
    }

    public static int zaa(Iterable<Api.Client> iterable, boolean z) {
        boolean z2 = false;
        boolean z3 = false;
        for (Api.Client client : iterable) {
            boolean z4 = z2;
            if (client.requiresSignIn()) {
                z4 = true;
            }
            z2 = z4;
            if (client.providesSignIn()) {
                z3 = true;
                z2 = z4;
            }
        }
        if (z2) {
            return (!z3 || !z) ? 1 : 2;
        }
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m5842b() {
        if (!this.f6468m) {
            return false;
        }
        this.f6468m = false;
        this.f6471p.removeMessages(2);
        this.f6471p.removeMessages(1);
        zabq zabqVar = this.f6473r;
        if (zabqVar == null) {
            return true;
        }
        zabqVar.unregister();
        this.f6473r = null;
        return true;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final ConnectionResult blockingConnect() {
        boolean z = true;
        Preconditions.checkState(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        this.f6461f.lock();
        try {
            if (this.f6465j >= 0) {
                if (this.f6479x == null) {
                    z = false;
                }
                Preconditions.checkState(z, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.f6479x == null) {
                this.f6479x = Integer.valueOf(zaa(this.f6457b.values(), false));
            } else if (this.f6479x.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            m5846a(this.f6479x.intValue());
            this.f6463h.enableCallbacks();
            return this.f6464i.blockingConnect();
        } finally {
            this.f6461f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        Preconditions.checkState(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        Preconditions.checkNotNull(timeUnit, "TimeUnit must not be null");
        this.f6461f.lock();
        try {
            if (this.f6479x == null) {
                this.f6479x = Integer.valueOf(zaa(this.f6457b.values(), false));
            } else if (this.f6479x.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            m5846a(this.f6479x.intValue());
            this.f6463h.enableCallbacks();
            return this.f6464i.blockingConnect(j, timeUnit);
        } finally {
            this.f6461f.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    public final boolean m5839c() {
        this.f6461f.lock();
        try {
            if (this.f6459d == null) {
                this.f6461f.unlock();
                return false;
            }
            boolean isEmpty = this.f6459d.isEmpty();
            this.f6461f.unlock();
            return !isEmpty;
        } catch (Throwable th) {
            this.f6461f.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final PendingResult<Status> clearDefaultAccountAndReconnect() {
        Preconditions.checkState(isConnected(), "GoogleApiClient is not connected yet.");
        Preconditions.checkState(this.f6479x.intValue() != 2, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API");
        StatusPendingResult statusPendingResult = new StatusPendingResult(this);
        if (this.f6457b.containsKey(Common.CLIENT_KEY)) {
            m5845a((GoogleApiClient) this, statusPendingResult, false);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            GoogleApiClient build = new GoogleApiClient.Builder(this.f6466k).addApi(Common.API).addConnectionCallbacks(new C1626s(this, atomicReference, statusPendingResult)).addOnConnectionFailedListener(new C1625r(statusPendingResult)).setHandler(this.f6471p).build();
            atomicReference.set(build);
            build.connect();
        }
        return statusPendingResult;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void connect() {
        this.f6461f.lock();
        try {
            boolean z = false;
            if (this.f6465j >= 0) {
                if (this.f6479x != null) {
                    z = true;
                }
                Preconditions.checkState(z, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.f6479x == null) {
                this.f6479x = Integer.valueOf(zaa(this.f6457b.values(), false));
            } else if (this.f6479x.intValue() == 2) {
                throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            connect(this.f6479x.intValue());
        } finally {
            this.f6461f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void connect(int i) {
        this.f6461f.lock();
        boolean z = true;
        if (i != 3) {
            z = true;
            if (i != 1) {
                z = i == 2;
            }
        }
        try {
            StringBuilder sb = new StringBuilder(33);
            sb.append("Illegal sign-in mode: ");
            sb.append(i);
            Preconditions.checkArgument(z, sb.toString());
            m5846a(i);
            m5836e();
        } finally {
            this.f6461f.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final String m5837d() {
        StringWriter stringWriter = new StringWriter();
        dump("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void disconnect() {
        this.f6461f.lock();
        try {
            this.f6460e.release();
            if (this.f6464i != null) {
                this.f6464i.disconnect();
            }
            this.f6477v.release();
            for (BaseImplementation.ApiMethodImpl<?, ?> apiMethodImpl : this.f6456a) {
                apiMethodImpl.zaa(null);
                apiMethodImpl.cancel();
            }
            this.f6456a.clear();
            if (this.f6464i != null) {
                m5842b();
                this.f6463h.disableCallbacks();
            }
        } finally {
            this.f6461f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("mContext=").println(this.f6466k);
        printWriter.append((CharSequence) str).append("mResuming=").print(this.f6468m);
        printWriter.append(" mWorkQueue.size()=").print(this.f6456a.size());
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.f6460e.f6522a.size());
        zabr zabrVar = this.f6464i;
        if (zabrVar != null) {
            zabrVar.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        Preconditions.checkArgument(t.getClientKey() != null, "This task can not be enqueued (it's probably a Batch or malformed)");
        boolean containsKey = this.f6457b.containsKey(t.getClientKey());
        String name = t.getApi() != null ? t.getApi().getName() : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(name);
        sb.append(" required for this call.");
        Preconditions.checkArgument(containsKey, sb.toString());
        this.f6461f.lock();
        try {
            if (this.f6464i == null) {
                this.f6456a.add(t);
            } else {
                t = (T) this.f6464i.enqueue(t);
            }
            return t;
        } finally {
            this.f6461f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        T t2;
        Preconditions.checkArgument(t.getClientKey() != null, "This task can not be executed (it's probably a Batch or malformed)");
        boolean containsKey = this.f6457b.containsKey(t.getClientKey());
        String name = t.getApi() != null ? t.getApi().getName() : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(name);
        sb.append(" required for this call.");
        Preconditions.checkArgument(containsKey, sb.toString());
        this.f6461f.lock();
        try {
            if (this.f6464i != null) {
                if (this.f6468m) {
                    this.f6456a.add(t);
                    while (true) {
                        t2 = t;
                        if (this.f6456a.isEmpty()) {
                            break;
                        }
                        BaseImplementation.ApiMethodImpl<?, ?> remove = this.f6456a.remove();
                        this.f6460e.m5811a(remove);
                        remove.setFailedResult(Status.RESULT_INTERNAL_ERROR);
                    }
                } else {
                    t2 = (T) this.f6464i.execute(t);
                }
                return t2;
            }
            throw new IllegalStateException("GoogleApiClient is not connected yet.");
        } finally {
            this.f6461f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <C extends Api.Client> C getClient(Api.AnyClientKey<C> anyClientKey) {
        C c = (C) this.f6457b.get(anyClientKey);
        Preconditions.checkNotNull(c, "Appropriate Api was not requested.");
        return c;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final ConnectionResult getConnectionResult(Api<?> api) {
        ConnectionResult connectionResult;
        this.f6461f.lock();
        try {
            if (!isConnected() && !this.f6468m) {
                throw new IllegalStateException("Cannot invoke getConnectionResult unless GoogleApiClient is connected");
            }
            if (this.f6457b.containsKey(api.getClientKey())) {
                ConnectionResult connectionResult2 = this.f6464i.getConnectionResult(api);
                if (connectionResult2 != null) {
                    return connectionResult2;
                }
                if (this.f6468m) {
                    connectionResult = ConnectionResult.RESULT_SUCCESS;
                } else {
                    Log.w("GoogleApiClientImpl", m5837d());
                    Log.wtf("GoogleApiClientImpl", String.valueOf(api.getName()).concat(" requested in getConnectionResult is not connected but is not present in the failed  connections map"), new Exception());
                    connectionResult = new ConnectionResult(8, null);
                }
                return connectionResult;
            }
            throw new IllegalArgumentException(String.valueOf(api.getName()).concat(" was never registered with GoogleApiClient"));
        } finally {
            this.f6461f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Context getContext() {
        return this.f6466k;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Looper getLooper() {
        return this.f6467l;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean hasApi(Api<?> api) {
        return this.f6457b.containsKey(api.getClientKey());
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean hasConnectedApi(Api<?> api) {
        Api.Client client;
        return isConnected() && (client = this.f6457b.get(api.getClientKey())) != null && client.isConnected();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnected() {
        zabr zabrVar = this.f6464i;
        return zabrVar != null && zabrVar.isConnected();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnecting() {
        zabr zabrVar = this.f6464i;
        return zabrVar != null && zabrVar.isConnecting();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        return this.f6463h.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.f6463h.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean maybeSignIn(SignInConnectionListener signInConnectionListener) {
        zabr zabrVar = this.f6464i;
        return zabrVar != null && zabrVar.maybeSignIn(signInConnectionListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void maybeSignOut() {
        zabr zabrVar = this.f6464i;
        if (zabrVar != null) {
            zabrVar.maybeSignOut();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void reconnect() {
        disconnect();
        connect();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.f6463h.registerConnectionCallbacks(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.f6463h.registerConnectionFailedListener(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <L> ListenerHolder<L> registerListener(L l) {
        this.f6461f.lock();
        try {
            return this.f6477v.zaa(l, this.f6467l, "NO_TYPE");
        } finally {
            this.f6461f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void stopAutoManage(FragmentActivity fragmentActivity) {
        LifecycleActivity lifecycleActivity = new LifecycleActivity((Activity) fragmentActivity);
        if (this.f6465j >= 0) {
            zai.zaa(lifecycleActivity).zaa(this.f6465j);
            return;
        }
        throw new IllegalStateException("Called stopAutoManage but automatic lifecycle management is not enabled.");
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.f6463h.unregisterConnectionCallbacks(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.f6463h.unregisterConnectionFailedListener(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zaa(zack zackVar) {
        this.f6461f.lock();
        try {
            if (this.f6459d == null) {
                this.f6459d = new HashSet();
            }
            this.f6459d.add(zackVar);
        } finally {
            this.f6461f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void zab(int i, boolean z) {
        if (i == 1 && !z && !this.f6468m) {
            this.f6468m = true;
            if (this.f6473r == null && !ClientLibraryUtils.isPackageSide()) {
                try {
                    this.f6473r = this.f6472q.zaa(this.f6466k.getApplicationContext(), new C1629v(this));
                } catch (SecurityException e) {
                }
            }
            HandlerC1627t tVar = this.f6471p;
            tVar.sendMessageDelayed(tVar.obtainMessage(1), this.f6469n);
            HandlerC1627t tVar2 = this.f6471p;
            tVar2.sendMessageDelayed(tVar2.obtainMessage(2), this.f6470o);
        }
        this.f6460e.zabv();
        this.f6463h.onUnintentionalDisconnection(i);
        this.f6463h.disableCallbacks();
        if (i == 2) {
            m5836e();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void zab(Bundle bundle) {
        while (!this.f6456a.isEmpty()) {
            execute(this.f6456a.remove());
        }
        this.f6463h.onConnectionSuccess(bundle);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zab(zack zackVar) {
        String str;
        Exception exc;
        this.f6461f.lock();
        try {
            if (this.f6459d == null) {
                str = "Attempted to remove pending transform when no transforms are registered.";
                exc = new Exception();
            } else if (!this.f6459d.remove(zackVar)) {
                str = "Failed to remove pending transform - this may lead to memory leaks!";
                exc = new Exception();
            } else {
                if (!m5839c()) {
                    this.f6464i.zau();
                }
            }
            Log.wtf("GoogleApiClientImpl", str, exc);
        } finally {
            this.f6461f.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void zac(ConnectionResult connectionResult) {
        if (!this.f6472q.isPlayServicesPossiblyUpdating(this.f6466k, connectionResult.getErrorCode())) {
            m5842b();
        }
        if (!this.f6468m) {
            this.f6463h.onConnectionFailure(connectionResult);
            this.f6463h.disableCallbacks();
        }
    }
}
