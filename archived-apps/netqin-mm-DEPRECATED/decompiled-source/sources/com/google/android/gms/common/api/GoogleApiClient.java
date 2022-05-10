package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import android.view.View;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.LifecycleActivity;
import com.google.android.gms.common.api.internal.zaar;
import com.google.android.gms.common.api.internal.zaci;
import com.google.android.gms.common.api.internal.zai;
import com.google.android.gms.common.api.internal.zaq;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zaa;
import com.google.android.gms.signin.zad;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantLock;
import p012b.p035f.C0780a;
@KeepForSdk
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient.class */
public abstract class GoogleApiClient {

    /* renamed from: a */
    public static final Set<GoogleApiClient> f23052a = Collections.newSetFromMap(new WeakHashMap());

    @KeepForSdk
    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public Account f23053a;

        /* renamed from: d */
        public int f23056d;

        /* renamed from: e */
        public View f23057e;

        /* renamed from: f */
        public String f23058f;

        /* renamed from: g */
        public String f23059g;

        /* renamed from: i */
        public final Context f23061i;

        /* renamed from: k */
        public LifecycleActivity f23063k;

        /* renamed from: m */
        public OnConnectionFailedListener f23065m;

        /* renamed from: n */
        public Looper f23066n;

        /* renamed from: b */
        public final Set<Scope> f23054b = new HashSet();

        /* renamed from: c */
        public final Set<Scope> f23055c = new HashSet();

        /* renamed from: h */
        public final Map<Api<?>, ClientSettings.zaa> f23060h = new C0780a();

        /* renamed from: j */
        public final Map<Api<?>, Api.ApiOptions> f23062j = new C0780a();

        /* renamed from: l */
        public int f23064l = -1;

        /* renamed from: o */
        public GoogleApiAvailability f23067o = GoogleApiAvailability.m17826a();

        /* renamed from: p */
        public Api.AbstractClientBuilder<? extends zad, SignInOptions> f23068p = zaa.f30241c;

        /* renamed from: q */
        public final ArrayList<ConnectionCallbacks> f23069q = new ArrayList<>();

        /* renamed from: r */
        public final ArrayList<OnConnectionFailedListener> f23070r = new ArrayList<>();

        @KeepForSdk
        public Builder(Context context) {
            this.f23061i = context;
            this.f23066n = context.getMainLooper();
            this.f23058f = context.getPackageName();
            this.f23059g = context.getClass().getName();
        }

        /* renamed from: a */
        public final Builder m17759a(Api<? extends Api.ApiOptions.NotRequiredOptions> api) {
            Preconditions.m17287a(api, "Api must not be null");
            this.f23062j.put(api, null);
            Api.BaseClientBuilder<?, ? extends Api.ApiOptions.NotRequiredOptions> a = api.m17787a();
            Preconditions.m17287a(a, "Base client builder must not be null");
            List<Scope> a2 = a.m17778a(null);
            this.f23055c.addAll(a2);
            this.f23054b.addAll(a2);
            return this;
        }

        /* renamed from: a */
        public final Builder m17758a(ConnectionCallbacks connectionCallbacks) {
            Preconditions.m17287a(connectionCallbacks, "Listener must not be null");
            this.f23069q.add(connectionCallbacks);
            return this;
        }

        /* renamed from: a */
        public final Builder m17757a(OnConnectionFailedListener onConnectionFailedListener) {
            Preconditions.m17287a(onConnectionFailedListener, "Listener must not be null");
            this.f23070r.add(onConnectionFailedListener);
            return this;
        }

        /* renamed from: a */
        public final GoogleApiClient m17760a() {
            Preconditions.m17283a(!this.f23062j.isEmpty(), "must call addApi() to add at least one API");
            ClientSettings b = m17756b();
            Api<?> api = null;
            Map<Api<?>, ClientSettings.zaa> f = b.m17325f();
            C0780a aVar = new C0780a();
            C0780a aVar2 = new C0780a();
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (Api<?> api2 : this.f23062j.keySet()) {
                Api.ApiOptions apiOptions = this.f23062j.get(api2);
                boolean z2 = f.get(api2) != null;
                aVar.put(api2, Boolean.valueOf(z2));
                zaq zaqVar = new zaq(api2, z2);
                arrayList.add(zaqVar);
                Api.AbstractClientBuilder<?, ?> b2 = api2.m17786b();
                Preconditions.m17288a(b2);
                Api.AbstractClientBuilder<?, ?> abstractClientBuilder = b2;
                Api.Client a = abstractClientBuilder.mo17783a(this.f23061i, this.f23066n, b, (ClientSettings) apiOptions, (ConnectionCallbacks) zaqVar, (OnConnectionFailedListener) zaqVar);
                aVar2.put(api2.m17785c(), a);
                boolean z3 = z;
                if (abstractClientBuilder.m17779a() == 1) {
                    z3 = apiOptions != null;
                }
                z = z3;
                if (a.mo17612e()) {
                    if (api == null) {
                        api = api2;
                        z = z3;
                    } else {
                        String d = api2.m17784d();
                        String d2 = api.m17784d();
                        StringBuilder sb = new StringBuilder(String.valueOf(d).length() + 21 + String.valueOf(d2).length());
                        sb.append(d);
                        sb.append(" cannot be used with ");
                        sb.append(d2);
                        throw new IllegalStateException(sb.toString());
                    }
                }
            }
            if (api != null) {
                if (!z) {
                    Preconditions.m17278b(this.f23053a == null, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", api.m17784d());
                    Preconditions.m17278b(this.f23054b.equals(this.f23055c), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", api.m17784d());
                } else {
                    String d3 = api.m17784d();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(d3).length() + 82);
                    sb2.append("With using ");
                    sb2.append(d3);
                    sb2.append(", GamesOptions can only be specified within GoogleSignInOptions.Builder");
                    throw new IllegalStateException(sb2.toString());
                }
            }
            zaar zaarVar = new zaar(this.f23061i, new ReentrantLock(), this.f23066n, b, this.f23067o, this.f23068p, aVar, this.f23069q, this.f23070r, aVar2, this.f23064l, zaar.m17555a((Iterable<Api.Client>) aVar2.values(), true), arrayList);
            synchronized (GoogleApiClient.f23052a) {
                try {
                    GoogleApiClient.f23052a.add(zaarVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.f23064l >= 0) {
                zai.m17477b(this.f23063k).m17480a(this.f23064l, zaarVar, this.f23065m);
            }
            return zaarVar;
        }

        @VisibleForTesting
        @KeepForSdk
        /* renamed from: b */
        public final ClientSettings m17756b() {
            SignInOptions signInOptions = SignInOptions.f30215j;
            if (this.f23062j.containsKey(zaa.f30243e)) {
                signInOptions = (SignInOptions) this.f23062j.get(zaa.f30243e);
            }
            return new ClientSettings(this.f23053a, this.f23054b, this.f23060h, this.f23056d, this.f23057e, this.f23058f, this.f23059g, signInOptions, false);
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks.class */
    public interface ConnectionCallbacks extends com.google.android.gms.common.api.internal.ConnectionCallbacks {
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener.class */
    public interface OnConnectionFailedListener extends com.google.android.gms.common.api.internal.OnConnectionFailedListener {
    }

    /* renamed from: a */
    public abstract void mo17560a();

    /* renamed from: a */
    public abstract void mo17558a(OnConnectionFailedListener onConnectionFailedListener);

    /* renamed from: a */
    public void mo17524a(zaci zaciVar) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public abstract void mo17554a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    /* renamed from: b */
    public abstract void mo17553b();

    /* renamed from: b */
    public abstract void mo17551b(OnConnectionFailedListener onConnectionFailedListener);

    @KeepForSdk
    /* renamed from: c */
    public Looper mo17523c() {
        throw new UnsupportedOperationException();
    }
}
