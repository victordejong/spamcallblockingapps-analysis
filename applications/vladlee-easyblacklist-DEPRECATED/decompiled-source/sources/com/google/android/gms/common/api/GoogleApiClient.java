package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.p026b.C0529a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.LifecycleActivity;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.SignInConnectionListener;
import com.google.android.gms.common.api.internal.zaaw;
import com.google.android.gms.common.api.internal.zack;
import com.google.android.gms.common.api.internal.zai;
import com.google.android.gms.common.api.internal.zap;
import com.google.android.gms.common.internal.AccountType;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zab;
import com.google.android.gms.signin.zac;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient.class */
public abstract class GoogleApiClient {
    public static final String DEFAULT_ACCOUNT = "<<default account>>";
    public static final int SIGN_IN_MODE_OPTIONAL = 2;
    public static final int SIGN_IN_MODE_REQUIRED = 1;

    /* renamed from: a */
    private static final Set<GoogleApiClient> f6198a = Collections.newSetFromMap(new WeakHashMap());

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private Account f6199a;

        /* renamed from: b */
        private final Set<Scope> f6200b;

        /* renamed from: c */
        private final Set<Scope> f6201c;

        /* renamed from: d */
        private int f6202d;

        /* renamed from: e */
        private View f6203e;

        /* renamed from: f */
        private String f6204f;

        /* renamed from: g */
        private String f6205g;

        /* renamed from: h */
        private final Map<Api<?>, ClientSettings.OptionalApiSettings> f6206h;

        /* renamed from: i */
        private boolean f6207i;

        /* renamed from: j */
        private final Context f6208j;

        /* renamed from: k */
        private final Map<Api<?>, Api.ApiOptions> f6209k;

        /* renamed from: l */
        private LifecycleActivity f6210l;

        /* renamed from: m */
        private int f6211m;

        /* renamed from: n */
        private OnConnectionFailedListener f6212n;

        /* renamed from: o */
        private Looper f6213o;

        /* renamed from: p */
        private GoogleApiAvailability f6214p;

        /* renamed from: q */
        private Api.AbstractClientBuilder<? extends zac, SignInOptions> f6215q;

        /* renamed from: r */
        private final ArrayList<ConnectionCallbacks> f6216r;

        /* renamed from: s */
        private final ArrayList<OnConnectionFailedListener> f6217s;

        /* renamed from: t */
        private boolean f6218t;

        public Builder(Context context) {
            this.f6200b = new HashSet();
            this.f6201c = new HashSet();
            this.f6206h = new C0529a();
            this.f6207i = false;
            this.f6209k = new C0529a();
            this.f6211m = -1;
            this.f6214p = GoogleApiAvailability.getInstance();
            this.f6215q = zab.zapv;
            this.f6216r = new ArrayList<>();
            this.f6217s = new ArrayList<>();
            this.f6218t = false;
            this.f6208j = context;
            this.f6213o = context.getMainLooper();
            this.f6204f = context.getPackageName();
            this.f6205g = context.getClass().getName();
        }

        public Builder(Context context, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            this(context);
            Preconditions.checkNotNull(connectionCallbacks, "Must provide a connected listener");
            this.f6216r.add(connectionCallbacks);
            Preconditions.checkNotNull(onConnectionFailedListener, "Must provide a connection failed listener");
            this.f6217s.add(onConnectionFailedListener);
        }

        /* renamed from: a */
        private final <O extends Api.ApiOptions> void m5973a(Api<O> api, O o, Scope... scopeArr) {
            HashSet hashSet = new HashSet(api.zah().getImpliedScopes(o));
            for (Scope scope : scopeArr) {
                hashSet.add(scope);
            }
            this.f6206h.put(api, new ClientSettings.OptionalApiSettings(hashSet));
        }

        public final Builder addApi(Api<? extends Api.ApiOptions.NotRequiredOptions> api) {
            Preconditions.checkNotNull(api, "Api must not be null");
            this.f6209k.put(api, null);
            List<Scope> impliedScopes = api.zah().getImpliedScopes(null);
            this.f6201c.addAll(impliedScopes);
            this.f6200b.addAll(impliedScopes);
            return this;
        }

        public final <O extends Api.ApiOptions.HasOptions> Builder addApi(Api<O> api, O o) {
            Preconditions.checkNotNull(api, "Api must not be null");
            Preconditions.checkNotNull(o, "Null options are not permitted for this Api");
            this.f6209k.put(api, o);
            List<Scope> impliedScopes = api.zah().getImpliedScopes(o);
            this.f6201c.addAll(impliedScopes);
            this.f6200b.addAll(impliedScopes);
            return this;
        }

        public final <O extends Api.ApiOptions.HasOptions> Builder addApiIfAvailable(Api<O> api, O o, Scope... scopeArr) {
            Preconditions.checkNotNull(api, "Api must not be null");
            Preconditions.checkNotNull(o, "Null options are not permitted for this Api");
            this.f6209k.put(api, o);
            m5973a(api, o, scopeArr);
            return this;
        }

        public final Builder addApiIfAvailable(Api<? extends Api.ApiOptions.NotRequiredOptions> api, Scope... scopeArr) {
            Preconditions.checkNotNull(api, "Api must not be null");
            this.f6209k.put(api, null);
            m5973a(api, null, scopeArr);
            return this;
        }

        public final Builder addConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
            Preconditions.checkNotNull(connectionCallbacks, "Listener must not be null");
            this.f6216r.add(connectionCallbacks);
            return this;
        }

        public final Builder addOnConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
            Preconditions.checkNotNull(onConnectionFailedListener, "Listener must not be null");
            this.f6217s.add(onConnectionFailedListener);
            return this;
        }

        public final Builder addScope(Scope scope) {
            Preconditions.checkNotNull(scope, "Scope must not be null");
            this.f6200b.add(scope);
            return this;
        }

        public final Builder addScopeNames(String[] strArr) {
            for (String str : strArr) {
                this.f6200b.add(new Scope(str));
            }
            return this;
        }

        public final GoogleApiClient build() {
            Preconditions.checkArgument(!this.f6209k.isEmpty(), "must call addApi() to add at least one API");
            ClientSettings buildClientSettings = buildClientSettings();
            Api<?> api = null;
            Map<Api<?>, ClientSettings.OptionalApiSettings> optionalApiSettings = buildClientSettings.getOptionalApiSettings();
            C0529a aVar = new C0529a();
            C0529a aVar2 = new C0529a();
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (Api<?> api2 : this.f6209k.keySet()) {
                Api.ApiOptions apiOptions = this.f6209k.get(api2);
                boolean z2 = optionalApiSettings.get(api2) != null;
                aVar.put(api2, Boolean.valueOf(z2));
                zap zapVar = new zap(api2, z2);
                arrayList.add(zapVar);
                Api.AbstractClientBuilder<?, ?> zai = api2.zai();
                Api.Client buildClient = zai.buildClient(this.f6208j, this.f6213o, buildClientSettings, (ClientSettings) apiOptions, (ConnectionCallbacks) zapVar, (OnConnectionFailedListener) zapVar);
                aVar2.put(api2.getClientKey(), buildClient);
                boolean z3 = z;
                if (zai.getPriority() == 1) {
                    z3 = apiOptions != null;
                }
                z = z3;
                if (buildClient.providesSignIn()) {
                    if (api == null) {
                        api = api2;
                        z = z3;
                    } else {
                        String name = api2.getName();
                        String name2 = api.getName();
                        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 21 + String.valueOf(name2).length());
                        sb.append(name);
                        sb.append(" cannot be used with ");
                        sb.append(name2);
                        throw new IllegalStateException(sb.toString());
                    }
                }
            }
            if (api != null) {
                if (!z) {
                    Preconditions.checkState(this.f6199a == null, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", api.getName());
                    Preconditions.checkState(this.f6200b.equals(this.f6201c), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", api.getName());
                } else {
                    String name3 = api.getName();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(name3).length() + 82);
                    sb2.append("With using ");
                    sb2.append(name3);
                    sb2.append(", GamesOptions can only be specified within GoogleSignInOptions.Builder");
                    throw new IllegalStateException(sb2.toString());
                }
            }
            zaaw zaawVar = new zaaw(this.f6208j, new ReentrantLock(), this.f6213o, buildClientSettings, this.f6214p, this.f6215q, aVar, this.f6216r, this.f6217s, aVar2, this.f6211m, zaaw.zaa(aVar2.values(), true), arrayList, false);
            synchronized (GoogleApiClient.f6198a) {
                GoogleApiClient.f6198a.add(zaawVar);
            }
            if (this.f6211m >= 0) {
                zai.zaa(this.f6210l).zaa(this.f6211m, zaawVar, this.f6212n);
            }
            return zaawVar;
        }

        public final ClientSettings buildClientSettings() {
            SignInOptions signInOptions = SignInOptions.DEFAULT;
            if (this.f6209k.containsKey(zab.API)) {
                signInOptions = (SignInOptions) this.f6209k.get(zab.API);
            }
            return new ClientSettings(this.f6199a, this.f6200b, this.f6206h, this.f6202d, this.f6203e, this.f6204f, this.f6205g, signInOptions, false);
        }

        public final Builder enableAutoManage(FragmentActivity fragmentActivity, int i, OnConnectionFailedListener onConnectionFailedListener) {
            LifecycleActivity lifecycleActivity = new LifecycleActivity((Activity) fragmentActivity);
            Preconditions.checkArgument(i >= 0, "clientId must be non-negative");
            this.f6211m = i;
            this.f6212n = onConnectionFailedListener;
            this.f6210l = lifecycleActivity;
            return this;
        }

        public final Builder enableAutoManage(FragmentActivity fragmentActivity, OnConnectionFailedListener onConnectionFailedListener) {
            return enableAutoManage(fragmentActivity, 0, onConnectionFailedListener);
        }

        public final Builder setAccountName(String str) {
            this.f6199a = str == null ? null : new Account(str, AccountType.GOOGLE);
            return this;
        }

        public final Builder setGravityForPopups(int i) {
            this.f6202d = i;
            return this;
        }

        public final Builder setHandler(Handler handler) {
            Preconditions.checkNotNull(handler, "Handler must not be null");
            this.f6213o = handler.getLooper();
            return this;
        }

        public final Builder setViewForPopups(View view) {
            Preconditions.checkNotNull(view, "View must not be null");
            this.f6203e = view;
            return this;
        }

        public final Builder useDefaultAccount() {
            return setAccountName("<<default account>>");
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks.class */
    public interface ConnectionCallbacks extends com.google.android.gms.common.api.internal.ConnectionCallbacks {
        public static final int CAUSE_NETWORK_LOST = 2;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener.class */
    public interface OnConnectionFailedListener extends com.google.android.gms.common.api.internal.OnConnectionFailedListener {
    }

    public static void dumpAll(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        synchronized (f6198a) {
            int i = 0;
            String concat = String.valueOf(str).concat("  ");
            for (GoogleApiClient googleApiClient : f6198a) {
                printWriter.append((CharSequence) str).append("GoogleApiClient#").println(i);
                googleApiClient.dump(concat, fileDescriptor, printWriter, strArr);
                i++;
            }
        }
    }

    public static Set<GoogleApiClient> getAllClients() {
        Set<GoogleApiClient> set;
        synchronized (f6198a) {
            set = f6198a;
        }
        return set;
    }

    public abstract ConnectionResult blockingConnect();

    public abstract ConnectionResult blockingConnect(long j, TimeUnit timeUnit);

    public abstract PendingResult<Status> clearDefaultAccountAndReconnect();

    public abstract void connect();

    public void connect(int i) {
        throw new UnsupportedOperationException();
    }

    public abstract void disconnect();

    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        throw new UnsupportedOperationException();
    }

    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        throw new UnsupportedOperationException();
    }

    public <C extends Api.Client> C getClient(Api.AnyClientKey<C> anyClientKey) {
        throw new UnsupportedOperationException();
    }

    public abstract ConnectionResult getConnectionResult(Api<?> api);

    public Context getContext() {
        throw new UnsupportedOperationException();
    }

    public Looper getLooper() {
        throw new UnsupportedOperationException();
    }

    public boolean hasApi(Api<?> api) {
        throw new UnsupportedOperationException();
    }

    public abstract boolean hasConnectedApi(Api<?> api);

    public abstract boolean isConnected();

    public abstract boolean isConnecting();

    public abstract boolean isConnectionCallbacksRegistered(ConnectionCallbacks connectionCallbacks);

    public abstract boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener onConnectionFailedListener);

    public boolean maybeSignIn(SignInConnectionListener signInConnectionListener) {
        throw new UnsupportedOperationException();
    }

    public void maybeSignOut() {
        throw new UnsupportedOperationException();
    }

    public abstract void reconnect();

    public abstract void registerConnectionCallbacks(ConnectionCallbacks connectionCallbacks);

    public abstract void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener);

    public <L> ListenerHolder<L> registerListener(L l) {
        throw new UnsupportedOperationException();
    }

    public abstract void stopAutoManage(FragmentActivity fragmentActivity);

    public abstract void unregisterConnectionCallbacks(ConnectionCallbacks connectionCallbacks);

    public abstract void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener);

    public void zaa(zack zackVar) {
        throw new UnsupportedOperationException();
    }

    public void zab(zack zackVar) {
        throw new UnsupportedOperationException();
    }
}
