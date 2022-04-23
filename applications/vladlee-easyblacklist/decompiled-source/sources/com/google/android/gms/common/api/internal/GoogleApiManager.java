package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import androidx.p026b.C0529a;
import androidx.p026b.C0531c;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.GoogleApiAvailabilityCache;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.SimpleClientAdapter;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.base.zar;
import com.google.android.gms.signin.zac;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager.class */
public class GoogleApiManager implements Handler.Callback {

    /* renamed from: f */
    private static GoogleApiManager f6266f;

    /* renamed from: g */
    private final Context f6270g;

    /* renamed from: h */
    private final GoogleApiAvailability f6271h;

    /* renamed from: i */
    private final GoogleApiAvailabilityCache f6272i;

    /* renamed from: p */
    private final Handler f6279p;
    public static final Status zaib = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: a */
    private static final Status f6264a = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: e */
    private static final Object f6265e = new Object();

    /* renamed from: b */
    private long f6267b = 5000;

    /* renamed from: c */
    private long f6268c = 120000;

    /* renamed from: d */
    private long f6269d = 10000;

    /* renamed from: j */
    private final AtomicInteger f6273j = new AtomicInteger(1);

    /* renamed from: k */
    private final AtomicInteger f6274k = new AtomicInteger(0);

    /* renamed from: l */
    private final Map<ApiKey<?>, zaa<?>> f6275l = new ConcurrentHashMap(5, 0.75f, 1);

    /* renamed from: m */
    private zaad f6276m = null;

    /* renamed from: n */
    private final Set<ApiKey<?>> f6277n = new C0531c();

    /* renamed from: o */
    private final Set<ApiKey<?>> f6278o = new C0531c();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.gms.common.api.internal.GoogleApiManager$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager$a.class */
    public final class C1574a implements zacf, BaseGmsClient.ConnectionProgressReportCallbacks {

        /* renamed from: b */
        private final Api.Client f6281b;

        /* renamed from: c */
        private final ApiKey<?> f6282c;

        /* renamed from: d */
        private IAccountAccessor f6283d = null;

        /* renamed from: e */
        private Set<Scope> f6284e = null;

        /* renamed from: f */
        private boolean f6285f = false;

        public C1574a(Api.Client client, ApiKey<?> apiKey) {
            this.f6281b = client;
            this.f6282c = apiKey;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public final void m5947a() {
            IAccountAccessor iAccountAccessor;
            if (this.f6285f && (iAccountAccessor = this.f6283d) != null) {
                this.f6281b.getRemoteService(iAccountAccessor, this.f6284e);
            }
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
        public final void onReportServiceBinding(ConnectionResult connectionResult) {
            GoogleApiManager.this.f6279p.post(new RunnableC1582ae(this, connectionResult));
        }

        @Override // com.google.android.gms.common.api.internal.zacf
        public final void zaa(IAccountAccessor iAccountAccessor, Set<Scope> set) {
            if (iAccountAccessor == null || set == null) {
                Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                zag(new ConnectionResult(4));
                return;
            }
            this.f6283d = iAccountAccessor;
            this.f6284e = set;
            m5947a();
        }

        @Override // com.google.android.gms.common.api.internal.zacf
        public final void zag(ConnectionResult connectionResult) {
            ((zaa) GoogleApiManager.this.f6275l.get(this.f6282c)).zag(connectionResult);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.gms.common.api.internal.GoogleApiManager$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager$b.class */
    public static final class C1575b {

        /* renamed from: a */
        private final ApiKey<?> f6286a;

        /* renamed from: b */
        private final Feature f6287b;

        private C1575b(ApiKey<?> apiKey, Feature feature) {
            this.f6286a = apiKey;
            this.f6287b = feature;
        }

        /* synthetic */ C1575b(ApiKey apiKey, Feature feature, byte b) {
            this(apiKey, feature);
        }

        public final boolean equals(Object obj) {
            if (obj == null || !(obj instanceof C1575b)) {
                return false;
            }
            C1575b bVar = (C1575b) obj;
            return Objects.equal(this.f6286a, bVar.f6286a) && Objects.equal(this.f6287b, bVar.f6287b);
        }

        public final int hashCode() {
            return Objects.hashCode(this.f6286a, this.f6287b);
        }

        public final String toString() {
            return Objects.toStringHelper(this).add("key", this.f6286a).add("feature", this.f6287b).toString();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleApiManager$zaa.class */
    public final class zaa<O extends Api.ApiOptions> implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, zar {

        /* renamed from: c */
        private final Api.Client f6290c;

        /* renamed from: d */
        private final Api.AnyClient f6291d;

        /* renamed from: e */
        private final ApiKey<O> f6292e;

        /* renamed from: f */
        private final zaz f6293f;

        /* renamed from: i */
        private final int f6296i;

        /* renamed from: j */
        private final zace f6297j;

        /* renamed from: k */
        private boolean f6298k;

        /* renamed from: b */
        private final Queue<zac> f6289b = new LinkedList();

        /* renamed from: g */
        private final Set<zaj> f6294g = new HashSet();

        /* renamed from: h */
        private final Map<ListenerHolder.ListenerKey<?>, zabv> f6295h = new HashMap();

        /* renamed from: l */
        private final List<C1575b> f6299l = new ArrayList();

        /* renamed from: m */
        private ConnectionResult f6300m = null;

        public zaa(GoogleApi<O> googleApi) {
            this.f6290c = googleApi.zaa(GoogleApiManager.this.f6279p.getLooper(), this);
            Api.Client client = this.f6290c;
            this.f6291d = client instanceof SimpleClientAdapter ? ((SimpleClientAdapter) client).getClient() : client;
            this.f6292e = googleApi.getApiKey();
            this.f6293f = new zaz();
            this.f6296i = googleApi.getInstanceId();
            if (this.f6290c.requiresSignIn()) {
                this.f6297j = googleApi.zaa(GoogleApiManager.this.f6270g, GoogleApiManager.this.f6279p);
            } else {
                this.f6297j = null;
            }
        }

        /* renamed from: a */
        private final Feature m5934a(Feature[] featureArr) {
            if (featureArr == null || featureArr.length == 0) {
                return null;
            }
            Feature[] availableFeatures = this.f6290c.getAvailableFeatures();
            Feature[] featureArr2 = availableFeatures;
            if (availableFeatures == null) {
                featureArr2 = new Feature[0];
            }
            C0529a aVar = new C0529a(featureArr2.length);
            for (Feature feature : featureArr2) {
                aVar.put(feature.getName(), Long.valueOf(feature.getVersion()));
            }
            for (Feature feature2 : featureArr) {
                if (!aVar.containsKey(feature2.getName()) || ((Long) aVar.get(feature2.getName())).longValue() < feature2.getVersion()) {
                    return feature2;
                }
            }
            return null;
        }

        /* renamed from: a */
        static /* synthetic */ void m5937a(zaa zaaVar, C1575b bVar) {
            if (zaaVar.f6299l.contains(bVar) && !zaaVar.f6298k) {
                if (!zaaVar.f6290c.isConnected()) {
                    zaaVar.connect();
                } else {
                    zaaVar.m5924e();
                }
            }
        }

        /* renamed from: a */
        private final boolean m5939a(ConnectionResult connectionResult) {
            synchronized (GoogleApiManager.f6265e) {
                if (GoogleApiManager.this.f6276m == null || !GoogleApiManager.this.f6277n.contains(this.f6292e)) {
                    return false;
                }
                GoogleApiManager.this.f6276m.zab(connectionResult, this.f6296i);
                return true;
            }
        }

        /* renamed from: a */
        private final boolean m5936a(zac zacVar) {
            if (!(zacVar instanceof zab)) {
                m5929b(zacVar);
                return true;
            }
            zab zabVar = (zab) zacVar;
            Feature a = m5934a(zabVar.zaa((zaa<?>) this));
            if (a == null) {
                m5929b(zacVar);
                return true;
            } else if (zabVar.zab(this)) {
                C1575b bVar = new C1575b(this.f6292e, a, (byte) 0);
                int indexOf = this.f6299l.indexOf(bVar);
                if (indexOf >= 0) {
                    C1575b bVar2 = this.f6299l.get(indexOf);
                    GoogleApiManager.this.f6279p.removeMessages(15, bVar2);
                    GoogleApiManager.this.f6279p.sendMessageDelayed(Message.obtain(GoogleApiManager.this.f6279p, 15, bVar2), GoogleApiManager.this.f6267b);
                    return false;
                }
                this.f6299l.add(bVar);
                GoogleApiManager.this.f6279p.sendMessageDelayed(Message.obtain(GoogleApiManager.this.f6279p, 15, bVar), GoogleApiManager.this.f6267b);
                GoogleApiManager.this.f6279p.sendMessageDelayed(Message.obtain(GoogleApiManager.this.f6279p, 16, bVar), GoogleApiManager.this.f6268c);
                ConnectionResult connectionResult = new ConnectionResult(2, null);
                if (m5939a(connectionResult)) {
                    return false;
                }
                GoogleApiManager.this.m5963a(connectionResult, this.f6296i);
                return false;
            } else {
                zabVar.zaa(new UnsupportedApiCallException(a));
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public final boolean m5935a(boolean z) {
            Preconditions.checkHandlerThread(GoogleApiManager.this.f6279p);
            if (!this.f6290c.isConnected() || this.f6295h.size() != 0) {
                return false;
            }
            if (!this.f6293f.m5783a()) {
                this.f6290c.disconnect();
                return true;
            } else if (!z) {
                return false;
            } else {
                m5922g();
                return false;
            }
        }

        /* renamed from: b */
        private final void m5932b(ConnectionResult connectionResult) {
            for (zaj zajVar : this.f6294g) {
                String str = null;
                if (Objects.equal(connectionResult, ConnectionResult.RESULT_SUCCESS)) {
                    str = this.f6290c.getEndpointPackageName();
                }
                zajVar.zaa(this.f6292e, connectionResult, str);
            }
            this.f6294g.clear();
        }

        /* renamed from: b */
        static /* synthetic */ void m5930b(zaa zaaVar, C1575b bVar) {
            Feature[] zaa;
            if (zaaVar.f6299l.remove(bVar)) {
                GoogleApiManager.this.f6279p.removeMessages(15, bVar);
                GoogleApiManager.this.f6279p.removeMessages(16, bVar);
                Feature feature = bVar.f6287b;
                ArrayList arrayList = new ArrayList(zaaVar.f6289b.size());
                for (zac zacVar : zaaVar.f6289b) {
                    if ((zacVar instanceof zab) && (zaa = ((zab) zacVar).zaa(zaaVar)) != null && ArrayUtils.contains(zaa, feature)) {
                        arrayList.add(zacVar);
                    }
                }
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    zac zacVar2 = (zac) obj;
                    zaaVar.f6289b.remove(zacVar2);
                    zacVar2.zaa(new UnsupportedApiCallException(feature));
                }
            }
        }

        /* renamed from: b */
        private final void m5929b(zac zacVar) {
            zacVar.zaa(this.f6293f, requiresSignIn());
            try {
                zacVar.zac(this);
            } catch (DeadObjectException e) {
                onConnectionSuspended(1);
                this.f6290c.disconnect();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public final void m5928c() {
            zabj();
            m5932b(ConnectionResult.RESULT_SUCCESS);
            m5923f();
            Iterator<zabv> it = this.f6295h.values().iterator();
            while (it.hasNext()) {
                zabv next = it.next();
                if (m5934a(next.zakc.getRequiredFeatures()) == null) {
                    try {
                        next.zakc.mo5912a(this.f6291d, new TaskCompletionSource<>());
                    } catch (DeadObjectException e) {
                        onConnectionSuspended(1);
                        this.f6290c.disconnect();
                    } catch (RemoteException e2) {
                    }
                }
                it.remove();
            }
            m5924e();
            m5922g();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public final void m5926d() {
            zabj();
            this.f6298k = true;
            this.f6293f.zaag();
            GoogleApiManager.this.f6279p.sendMessageDelayed(Message.obtain(GoogleApiManager.this.f6279p, 9, this.f6292e), GoogleApiManager.this.f6267b);
            GoogleApiManager.this.f6279p.sendMessageDelayed(Message.obtain(GoogleApiManager.this.f6279p, 11, this.f6292e), GoogleApiManager.this.f6268c);
            GoogleApiManager.this.f6272i.flush();
        }

        /* renamed from: e */
        private final void m5924e() {
            ArrayList arrayList = new ArrayList(this.f6289b);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                int i2 = i + 1;
                zac zacVar = (zac) obj;
                if (this.f6290c.isConnected()) {
                    i = i2;
                    if (m5936a(zacVar)) {
                        this.f6289b.remove(zacVar);
                        i = i2;
                    }
                } else {
                    return;
                }
            }
        }

        /* renamed from: f */
        private final void m5923f() {
            if (this.f6298k) {
                GoogleApiManager.this.f6279p.removeMessages(11, this.f6292e);
                GoogleApiManager.this.f6279p.removeMessages(9, this.f6292e);
                this.f6298k = false;
            }
        }

        /* renamed from: g */
        private final void m5922g() {
            GoogleApiManager.this.f6279p.removeMessages(12, this.f6292e);
            GoogleApiManager.this.f6279p.sendMessageDelayed(GoogleApiManager.this.f6279p.obtainMessage(12, this.f6292e), GoogleApiManager.this.f6269d);
        }

        /* renamed from: a */
        final boolean m5940a() {
            return this.f6290c.isConnected();
        }

        /* renamed from: b */
        final zac m5933b() {
            zace zaceVar = this.f6297j;
            if (zaceVar == null) {
                return null;
            }
            return zaceVar.zabo();
        }

        public final void connect() {
            Preconditions.checkHandlerThread(GoogleApiManager.this.f6279p);
            if (!this.f6290c.isConnected() && !this.f6290c.isConnecting()) {
                int clientAvailability = GoogleApiManager.this.f6272i.getClientAvailability(GoogleApiManager.this.f6270g, this.f6290c);
                if (clientAvailability != 0) {
                    onConnectionFailed(new ConnectionResult(clientAvailability, null));
                    return;
                }
                C1574a aVar = new C1574a(this.f6290c, this.f6292e);
                if (this.f6290c.requiresSignIn()) {
                    this.f6297j.zaa(aVar);
                }
                this.f6290c.connect(aVar);
            }
        }

        public final int getInstanceId() {
            return this.f6296i;
        }

        @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
        public final void onConnected(Bundle bundle) {
            if (Looper.myLooper() == GoogleApiManager.this.f6279p.getLooper()) {
                m5928c();
            } else {
                GoogleApiManager.this.f6279p.post(new RunnableC1633z(this));
            }
        }

        @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
        public final void onConnectionFailed(ConnectionResult connectionResult) {
            Preconditions.checkHandlerThread(GoogleApiManager.this.f6279p);
            zace zaceVar = this.f6297j;
            if (zaceVar != null) {
                zaceVar.zabq();
            }
            zabj();
            GoogleApiManager.this.f6272i.flush();
            m5932b(connectionResult);
            if (connectionResult.getErrorCode() == 4) {
                zac(GoogleApiManager.f6264a);
            } else if (this.f6289b.isEmpty()) {
                this.f6300m = connectionResult;
            } else if (!m5939a(connectionResult) && !GoogleApiManager.this.m5963a(connectionResult, this.f6296i)) {
                if (connectionResult.getErrorCode() == 18) {
                    this.f6298k = true;
                }
                if (this.f6298k) {
                    GoogleApiManager.this.f6279p.sendMessageDelayed(Message.obtain(GoogleApiManager.this.f6279p, 9, this.f6292e), GoogleApiManager.this.f6267b);
                    return;
                }
                String apiName = this.f6292e.getApiName();
                String valueOf = String.valueOf(connectionResult);
                StringBuilder sb = new StringBuilder(String.valueOf(apiName).length() + 63 + String.valueOf(valueOf).length());
                sb.append("API: ");
                sb.append(apiName);
                sb.append(" is not available on this device. Connection failed with: ");
                sb.append(valueOf);
                zac(new Status(17, sb.toString()));
            }
        }

        @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
        public final void onConnectionSuspended(int i) {
            if (Looper.myLooper() == GoogleApiManager.this.f6279p.getLooper()) {
                m5926d();
            } else {
                GoogleApiManager.this.f6279p.post(new RunnableC1579ab(this));
            }
        }

        public final boolean requiresSignIn() {
            return this.f6290c.requiresSignIn();
        }

        public final void resume() {
            Preconditions.checkHandlerThread(GoogleApiManager.this.f6279p);
            if (this.f6298k) {
                connect();
            }
        }

        @Override // com.google.android.gms.common.api.internal.zar
        public final void zaa(ConnectionResult connectionResult, Api<?> api, boolean z) {
            if (Looper.myLooper() == GoogleApiManager.this.f6279p.getLooper()) {
                onConnectionFailed(connectionResult);
            } else {
                GoogleApiManager.this.f6279p.post(new RunnableC1578aa(this, connectionResult));
            }
        }

        public final void zaa(zac zacVar) {
            Preconditions.checkHandlerThread(GoogleApiManager.this.f6279p);
            if (!this.f6290c.isConnected()) {
                this.f6289b.add(zacVar);
                ConnectionResult connectionResult = this.f6300m;
                if (connectionResult == null || !connectionResult.hasResolution()) {
                    connect();
                } else {
                    onConnectionFailed(this.f6300m);
                }
            } else if (m5936a(zacVar)) {
                m5922g();
            } else {
                this.f6289b.add(zacVar);
            }
        }

        public final void zaa(zaj zajVar) {
            Preconditions.checkHandlerThread(GoogleApiManager.this.f6279p);
            this.f6294g.add(zajVar);
        }

        public final Api.Client zaad() {
            return this.f6290c;
        }

        public final void zaat() {
            Preconditions.checkHandlerThread(GoogleApiManager.this.f6279p);
            if (this.f6298k) {
                m5923f();
                zac(GoogleApiManager.this.f6271h.isGooglePlayServicesAvailable(GoogleApiManager.this.f6270g) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                this.f6290c.disconnect();
            }
        }

        public final void zabh() {
            Preconditions.checkHandlerThread(GoogleApiManager.this.f6279p);
            zac(GoogleApiManager.zaib);
            this.f6293f.zaaf();
            for (ListenerHolder.ListenerKey listenerKey : (ListenerHolder.ListenerKey[]) this.f6295h.keySet().toArray(new ListenerHolder.ListenerKey[this.f6295h.size()])) {
                zaa(new zah(listenerKey, new TaskCompletionSource()));
            }
            m5932b(new ConnectionResult(4));
            if (this.f6290c.isConnected()) {
                this.f6290c.onUserSignOut(new C1581ad(this));
            }
        }

        public final Map<ListenerHolder.ListenerKey<?>, zabv> zabi() {
            return this.f6295h;
        }

        public final void zabj() {
            Preconditions.checkHandlerThread(GoogleApiManager.this.f6279p);
            this.f6300m = null;
        }

        public final ConnectionResult zabk() {
            Preconditions.checkHandlerThread(GoogleApiManager.this.f6279p);
            return this.f6300m;
        }

        public final boolean zabn() {
            return m5935a(true);
        }

        public final void zac(Status status) {
            Preconditions.checkHandlerThread(GoogleApiManager.this.f6279p);
            for (zac zacVar : this.f6289b) {
                zacVar.zaa(status);
            }
            this.f6289b.clear();
        }

        public final void zag(ConnectionResult connectionResult) {
            Preconditions.checkHandlerThread(GoogleApiManager.this.f6279p);
            this.f6290c.disconnect();
            onConnectionFailed(connectionResult);
        }
    }

    private GoogleApiManager(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.f6270g = context;
        this.f6279p = new zar(looper, this);
        this.f6271h = googleApiAvailability;
        this.f6272i = new GoogleApiAvailabilityCache(googleApiAvailability);
        Handler handler = this.f6279p;
        handler.sendMessage(handler.obtainMessage(6));
    }

    /* renamed from: a */
    private final void m5962a(GoogleApi<?> googleApi) {
        ApiKey<?> apiKey = googleApi.getApiKey();
        zaa<?> zaaVar = this.f6275l.get(apiKey);
        zaa<?> zaaVar2 = zaaVar;
        if (zaaVar == null) {
            zaaVar2 = new zaa<>(googleApi);
            this.f6275l.put(apiKey, zaaVar2);
        }
        if (zaaVar2.requiresSignIn()) {
            this.f6278o.add(apiKey);
        }
        zaaVar2.connect();
    }

    public static void reportSignOut() {
        synchronized (f6265e) {
            if (f6266f != null) {
                GoogleApiManager googleApiManager = f6266f;
                googleApiManager.f6274k.incrementAndGet();
                googleApiManager.f6279p.sendMessageAtFrontOfQueue(googleApiManager.f6279p.obtainMessage(10));
            }
        }
    }

    public static GoogleApiManager zab(Context context) {
        GoogleApiManager googleApiManager;
        synchronized (f6265e) {
            if (f6266f == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                f6266f = new GoogleApiManager(context.getApplicationContext(), handlerThread.getLooper(), GoogleApiAvailability.getInstance());
            }
            googleApiManager = f6266f;
        }
        return googleApiManager;
    }

    public static GoogleApiManager zaba() {
        GoogleApiManager googleApiManager;
        synchronized (f6265e) {
            Preconditions.checkNotNull(f6266f, "Must guarantee manager is non-null before using getInstance");
            googleApiManager = f6266f;
        }
        return googleApiManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final PendingIntent m5961a(ApiKey<?> apiKey, int i) {
        zac b;
        zaa<?> zaaVar = this.f6275l.get(apiKey);
        if (zaaVar == null || (b = zaaVar.m5933b()) == null) {
            return null;
        }
        return PendingIntent.getActivity(this.f6270g, i, b.getSignInIntent(), 134217728);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m5964a() {
        this.f6274k.incrementAndGet();
        Handler handler = this.f6279p;
        handler.sendMessage(handler.obtainMessage(10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m5959a(zaad zaadVar) {
        synchronized (f6265e) {
            if (this.f6276m == zaadVar) {
                this.f6276m = null;
                this.f6277n.clear();
            }
        }
    }

    /* renamed from: a */
    final boolean m5963a(ConnectionResult connectionResult, int i) {
        return this.f6271h.zaa(this.f6270g, connectionResult, i);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        zaa<?> zaaVar;
        long j = 300000;
        switch (message.what) {
            case 1:
                if (((Boolean) message.obj).booleanValue()) {
                    j = 10000;
                }
                this.f6269d = j;
                this.f6279p.removeMessages(12);
                for (ApiKey<?> apiKey : this.f6275l.keySet()) {
                    Handler handler = this.f6279p;
                    handler.sendMessageDelayed(handler.obtainMessage(12, apiKey), this.f6269d);
                }
                return true;
            case 2:
                zaj zajVar = (zaj) message.obj;
                for (ApiKey<?> apiKey2 : zajVar.zan()) {
                    zaa<?> zaaVar2 = this.f6275l.get(apiKey2);
                    if (zaaVar2 == null) {
                        zajVar.zaa(apiKey2, new ConnectionResult(13), null);
                        return true;
                    } else if (zaaVar2.m5940a()) {
                        zajVar.zaa(apiKey2, ConnectionResult.RESULT_SUCCESS, zaaVar2.zaad().getEndpointPackageName());
                    } else if (zaaVar2.zabk() != null) {
                        zajVar.zaa(apiKey2, zaaVar2.zabk(), null);
                    } else {
                        zaaVar2.zaa(zajVar);
                        zaaVar2.connect();
                    }
                }
                return true;
            case 3:
                for (zaa<?> zaaVar3 : this.f6275l.values()) {
                    zaaVar3.zabj();
                    zaaVar3.connect();
                }
                return true;
            case 4:
            case 8:
            case 13:
                zabu zabuVar = (zabu) message.obj;
                zaa<?> zaaVar4 = this.f6275l.get(zabuVar.zajz.getApiKey());
                zaa<?> zaaVar5 = zaaVar4;
                if (zaaVar4 == null) {
                    m5962a(zabuVar.zajz);
                    zaaVar5 = this.f6275l.get(zabuVar.zajz.getApiKey());
                }
                if (!zaaVar5.requiresSignIn() || this.f6274k.get() == zabuVar.zajy) {
                    zaaVar5.zaa(zabuVar.zajx);
                    return true;
                }
                zabuVar.zajx.zaa(zaib);
                zaaVar5.zabh();
                return true;
            case 5:
                int i = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator<zaa<?>> it = this.f6275l.values().iterator();
                while (true) {
                    if (it.hasNext()) {
                        zaaVar = it.next();
                        if (zaaVar.getInstanceId() == i) {
                        }
                    } else {
                        zaaVar = null;
                    }
                }
                if (zaaVar != null) {
                    String errorString = this.f6271h.getErrorString(connectionResult.getErrorCode());
                    String errorMessage = connectionResult.getErrorMessage();
                    StringBuilder sb = new StringBuilder(String.valueOf(errorString).length() + 69 + String.valueOf(errorMessage).length());
                    sb.append("Error resolution was canceled by the user, original error message: ");
                    sb.append(errorString);
                    sb.append(": ");
                    sb.append(errorMessage);
                    zaaVar.zac(new Status(17, sb.toString()));
                    return true;
                }
                StringBuilder sb2 = new StringBuilder(76);
                sb2.append("Could not find API instance ");
                sb2.append(i);
                sb2.append(" while trying to fail enqueued calls.");
                Log.wtf("GoogleApiManager", sb2.toString(), new Exception());
                return true;
            case 6:
                if (!PlatformVersion.isAtLeastIceCreamSandwich() || !(this.f6270g.getApplicationContext() instanceof Application)) {
                    return true;
                }
                BackgroundDetector.initialize((Application) this.f6270g.getApplicationContext());
                BackgroundDetector.getInstance().addListener(new C1632y(this));
                if (BackgroundDetector.getInstance().readCurrentStateIfPossible(true)) {
                    return true;
                }
                this.f6269d = 300000L;
                return true;
            case 7:
                m5962a((GoogleApi) message.obj);
                return true;
            case 9:
                if (!this.f6275l.containsKey(message.obj)) {
                    return true;
                }
                this.f6275l.get(message.obj).resume();
                return true;
            case 10:
                for (ApiKey<?> apiKey3 : this.f6278o) {
                    this.f6275l.remove(apiKey3).zabh();
                }
                this.f6278o.clear();
                return true;
            case 11:
                if (!this.f6275l.containsKey(message.obj)) {
                    return true;
                }
                this.f6275l.get(message.obj).zaat();
                return true;
            case 12:
                if (!this.f6275l.containsKey(message.obj)) {
                    return true;
                }
                this.f6275l.get(message.obj).zabn();
                return true;
            case 14:
                C1611d dVar = (C1611d) message.obj;
                ApiKey<?> a = dVar.m5888a();
                if (!this.f6275l.containsKey(a)) {
                    dVar.m5887b().setResult(Boolean.FALSE);
                    return true;
                }
                dVar.m5887b().setResult(Boolean.valueOf(this.f6275l.get(a).m5935a(false)));
                return true;
            case 15:
                C1575b bVar = (C1575b) message.obj;
                if (!this.f6275l.containsKey(bVar.f6286a)) {
                    return true;
                }
                zaa.m5937a(this.f6275l.get(bVar.f6286a), bVar);
                return true;
            case 16:
                C1575b bVar2 = (C1575b) message.obj;
                if (!this.f6275l.containsKey(bVar2.f6286a)) {
                    return true;
                }
                zaa.m5930b(this.f6275l.get(bVar2.f6286a), bVar2);
                return true;
            default:
                int i2 = message.what;
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Unknown message id: ");
                sb3.append(i2);
                Log.w("GoogleApiManager", sb3.toString());
                return false;
        }
    }

    public final <O extends Api.ApiOptions> Task<Boolean> zaa(GoogleApi<O> googleApi, ListenerHolder.ListenerKey<?> listenerKey) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zah zahVar = new zah(listenerKey, taskCompletionSource);
        Handler handler = this.f6279p;
        handler.sendMessage(handler.obtainMessage(13, new zabu(zahVar, this.f6274k.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final <O extends Api.ApiOptions> Task<Void> zaa(GoogleApi<O> googleApi, RegisterListenerMethod<Api.AnyClient, ?> registerListenerMethod, UnregisterListenerMethod<Api.AnyClient, ?> unregisterListenerMethod) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zag zagVar = new zag(new zabv(registerListenerMethod, unregisterListenerMethod), taskCompletionSource);
        Handler handler = this.f6279p;
        handler.sendMessage(handler.obtainMessage(8, new zabu(zagVar, this.f6274k.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final Task<Map<ApiKey<?>, String>> zaa(Iterable<? extends HasApiKey<?>> iterable) {
        zaj zajVar = new zaj(iterable);
        Handler handler = this.f6279p;
        handler.sendMessage(handler.obtainMessage(2, zajVar));
        return zajVar.getTask();
    }

    public final void zaa(ConnectionResult connectionResult, int i) {
        if (!m5963a(connectionResult, i)) {
            Handler handler = this.f6279p;
            handler.sendMessage(handler.obtainMessage(5, i, 0, connectionResult));
        }
    }

    public final void zaa(GoogleApi<?> googleApi) {
        Handler handler = this.f6279p;
        handler.sendMessage(handler.obtainMessage(7, googleApi));
    }

    public final <O extends Api.ApiOptions> void zaa(GoogleApi<O> googleApi, int i, BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient> apiMethodImpl) {
        zad zadVar = new zad(i, apiMethodImpl);
        Handler handler = this.f6279p;
        handler.sendMessage(handler.obtainMessage(4, new zabu(zadVar, this.f6274k.get(), googleApi)));
    }

    public final <O extends Api.ApiOptions, ResultT> void zaa(GoogleApi<O> googleApi, int i, TaskApiCall<Api.AnyClient, ResultT> taskApiCall, TaskCompletionSource<ResultT> taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        zaf zafVar = new zaf(i, taskApiCall, taskCompletionSource, statusExceptionMapper);
        Handler handler = this.f6279p;
        handler.sendMessage(handler.obtainMessage(4, new zabu(zafVar, this.f6274k.get(), googleApi)));
    }

    public final void zaa(zaad zaadVar) {
        synchronized (f6265e) {
            if (this.f6276m != zaadVar) {
                this.f6276m = zaadVar;
                this.f6277n.clear();
            }
            this.f6277n.addAll(zaadVar.m5878b());
        }
    }

    public final int zabb() {
        return this.f6273j.getAndIncrement();
    }

    public final Task<Boolean> zac(GoogleApi<?> googleApi) {
        C1611d dVar = new C1611d(googleApi.getApiKey());
        Handler handler = this.f6279p;
        handler.sendMessage(handler.obtainMessage(14, dVar));
        return dVar.m5887b().getTask();
    }

    public final void zam() {
        Handler handler = this.f6279p;
        handler.sendMessage(handler.obtainMessage(3));
    }
}
