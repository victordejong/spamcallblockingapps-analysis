package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.SignInConnectionListener;
import com.google.android.gms.common.api.internal.zaar;
import com.google.android.gms.common.api.internal.zaaz;
import com.google.android.gms.common.api.internal.zabm;
import com.google.android.gms.common.api.internal.zaq;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zad;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;
import p012b.p035f.C0780a;
/* renamed from: c.d.b.d.d.a.a.n0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/n0.class */
public final class C3269n0 implements zabm {

    /* renamed from: a */
    public final Context f11964a;

    /* renamed from: b */
    public final zaar f11965b;

    /* renamed from: c */
    public final zaaz f11966c;

    /* renamed from: d */
    public final zaaz f11967d;

    /* renamed from: e */
    public final Map<Api.AnyClientKey<?>, zaaz> f11968e;

    /* renamed from: g */
    public final Api.Client f11970g;

    /* renamed from: h */
    public Bundle f11971h;

    /* renamed from: l */
    public final Lock f11975l;

    /* renamed from: f */
    public final Set<SignInConnectionListener> f11969f = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: i */
    public ConnectionResult f11972i = null;

    /* renamed from: j */
    public ConnectionResult f11973j = null;

    /* renamed from: k */
    public boolean f11974k = false;

    /* renamed from: m */
    public int f11976m = 0;

    public C3269n0(Context context, zaar zaarVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, Map<Api.AnyClientKey<?>, Api.Client> map2, ClientSettings clientSettings, Api.AbstractClientBuilder<? extends zad, SignInOptions> abstractClientBuilder, Api.Client client, ArrayList<zaq> arrayList, ArrayList<zaq> arrayList2, Map<Api<?>, Boolean> map3, Map<Api<?>, Boolean> map4) {
        this.f11964a = context;
        this.f11965b = zaarVar;
        this.f11975l = lock;
        this.f11970g = client;
        this.f11966c = new zaaz(context, zaarVar, lock, looper, googleApiAvailabilityLight, map2, null, map4, null, arrayList2, new C3273p0(this, null));
        this.f11967d = new zaaz(context, this.f11965b, lock, looper, googleApiAvailabilityLight, map, clientSettings, map3, abstractClientBuilder, arrayList, new C3271o0(this, null));
        C0780a aVar = new C0780a();
        for (Api.AnyClientKey<?> anyClientKey : map2.keySet()) {
            aVar.put(anyClientKey, this.f11966c);
        }
        for (Api.AnyClientKey<?> anyClientKey2 : map.keySet()) {
            aVar.put(anyClientKey2, this.f11967d);
        }
        this.f11968e = Collections.unmodifiableMap(aVar);
    }

    /* renamed from: a */
    public static C3269n0 m27296a(Context context, zaar zaarVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends zad, SignInOptions> abstractClientBuilder, ArrayList<zaq> arrayList) {
        C0780a aVar = new C0780a();
        C0780a aVar2 = new C0780a();
        Api.Client client = null;
        for (Map.Entry<Api.AnyClientKey<?>, Api.Client> entry : map.entrySet()) {
            Api.Client value = entry.getValue();
            if (value.mo17612e()) {
                client = value;
            }
            if (value.mo8642n()) {
                aVar.put(entry.getKey(), value);
            } else {
                aVar2.put(entry.getKey(), value);
            }
        }
        Preconditions.m17279b(!aVar.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        C0780a aVar3 = new C0780a();
        C0780a aVar4 = new C0780a();
        for (Api<?> api : map2.keySet()) {
            Api.AnyClientKey<?> c = api.m17785c();
            if (aVar.containsKey(c)) {
                aVar3.put(api, map2.get(api));
            } else if (aVar2.containsKey(c)) {
                aVar4.put(api, map2.get(api));
            } else {
                throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            zaq zaqVar = arrayList.get(i);
            i++;
            zaq zaqVar2 = zaqVar;
            if (aVar3.containsKey(zaqVar2.f23295a)) {
                arrayList2.add(zaqVar2);
            } else if (aVar4.containsKey(zaqVar2.f23295a)) {
                arrayList3.add(zaqVar2);
            } else {
                throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
            }
        }
        return new C3269n0(context, zaarVar, lock, looper, googleApiAvailabilityLight, aVar, aVar2, clientSettings, abstractClientBuilder, client, arrayList2, arrayList3, aVar3, aVar4);
    }

    /* renamed from: b */
    public static boolean m27286b(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.m17830y();
    }

    @Override // com.google.android.gms.common.api.internal.zabm
    /* renamed from: a */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo17518a(T t) {
        if (!m27285b((BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient>) t)) {
            return (T) this.f11966c.mo17518a((zaaz) t);
        }
        if (!m27278g()) {
            return (T) this.f11967d.mo17518a((zaaz) t);
        }
        t.m17727c(new Status(4, null, m27277h()));
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zabm
    /* renamed from: a */
    public final void mo17519a() {
        this.f11976m = 2;
        this.f11974k = false;
        this.f11973j = null;
        this.f11972i = null;
        this.f11966c.mo17519a();
        this.f11967d.mo17519a();
    }

    /* renamed from: a */
    public final void m27297a(int i, boolean z) {
        this.f11965b.mo17513a(i, z);
        this.f11973j = null;
        this.f11972i = null;
    }

    /* renamed from: a */
    public final void m27295a(Bundle bundle) {
        Bundle bundle2 = this.f11971h;
        if (bundle2 == null) {
            this.f11971h = bundle;
        } else if (bundle != null) {
            bundle2.putAll(bundle);
        }
    }

    /* renamed from: a */
    public final void m27289a(ConnectionResult connectionResult) {
        int i = this.f11976m;
        if (i != 1) {
            if (i != 2) {
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                this.f11976m = 0;
            }
            this.f11965b.mo17511a(connectionResult);
        }
        m27280f();
        this.f11976m = 0;
    }

    @Override // com.google.android.gms.common.api.internal.zabm
    /* renamed from: a */
    public final void mo17517a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(":");
        this.f11967d.mo17517a(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(":");
        this.f11966c.mo17517a(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    @Override // com.google.android.gms.common.api.internal.zabm
    /* renamed from: b */
    public final void mo17516b() {
        this.f11973j = null;
        this.f11972i = null;
        this.f11976m = 0;
        this.f11966c.mo17516b();
        this.f11967d.mo17516b();
        m27280f();
    }

    /* renamed from: b */
    public final boolean m27285b(BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient> apiMethodImpl) {
        zaaz zaazVar = this.f11968e.get(apiMethodImpl.m17724h());
        Preconditions.m17287a(zaazVar, "GoogleApiClient is not configured to use the API required for this call.");
        return zaazVar.equals(this.f11967d);
    }

    @Override // com.google.android.gms.common.api.internal.zabm
    /* renamed from: c */
    public final void mo17515c() {
        this.f11966c.mo17515c();
        this.f11967d.mo17515c();
    }

    @Override // com.google.android.gms.common.api.internal.zabm
    /* renamed from: d */
    public final boolean mo17514d() {
        boolean z;
        this.f11975l.lock();
        try {
            if (this.f11966c.mo17514d()) {
                z = true;
                if (!this.f11967d.mo17514d()) {
                    z = true;
                    if (!m27278g()) {
                        if (this.f11976m == 1) {
                            z = true;
                        }
                    }
                }
                return z;
            }
            z = false;
            return z;
        } finally {
            this.f11975l.unlock();
        }
    }

    /* renamed from: e */
    public final void m27282e() {
        ConnectionResult connectionResult;
        if (m27286b(this.f11972i)) {
            if (m27286b(this.f11973j) || m27278g()) {
                int i = this.f11976m;
                if (i != 1) {
                    if (i != 2) {
                        Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                        this.f11976m = 0;
                        return;
                    }
                    zaar zaarVar = this.f11965b;
                    Preconditions.m17288a(zaarVar);
                    zaarVar.mo17512a(this.f11971h);
                }
                m27280f();
                this.f11976m = 0;
                return;
            }
            ConnectionResult connectionResult2 = this.f11973j;
            if (connectionResult2 == null) {
                return;
            }
            if (this.f11976m == 1) {
                m27280f();
                return;
            }
            m27289a(connectionResult2);
            this.f11966c.mo17516b();
        } else if (this.f11972i == null || !m27286b(this.f11973j)) {
            ConnectionResult connectionResult3 = this.f11972i;
            if (connectionResult3 != null && (connectionResult = this.f11973j) != null) {
                if (this.f11967d.f23241m < this.f11966c.f23241m) {
                    connectionResult3 = connectionResult;
                }
                m27289a(connectionResult3);
            }
        } else {
            this.f11967d.mo17516b();
            ConnectionResult connectionResult4 = this.f11972i;
            Preconditions.m17288a(connectionResult4);
            m27289a(connectionResult4);
        }
    }

    /* renamed from: f */
    public final void m27280f() {
        for (SignInConnectionListener signInConnectionListener : this.f11969f) {
            signInConnectionListener.onComplete();
        }
        this.f11969f.clear();
    }

    /* renamed from: g */
    public final boolean m27278g() {
        ConnectionResult connectionResult = this.f11973j;
        return connectionResult != null && connectionResult.m17834f() == 4;
    }

    /* renamed from: h */
    public final PendingIntent m27277h() {
        if (this.f11970g == null) {
            return null;
        }
        return PendingIntent.getActivity(this.f11964a, System.identityHashCode(this.f11965b), this.f11970g.mo17605m(), 134217728);
    }
}
