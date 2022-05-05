package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.internal.zak;
import com.google.android.gms.signin.zac;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaak.class */
public final class zaak implements zabb {

    /* renamed from: a */
    private final zabe f6434a;

    /* renamed from: b */
    private final Lock f6435b;

    /* renamed from: c */
    private final Context f6436c;

    /* renamed from: d */
    private final GoogleApiAvailabilityLight f6437d;

    /* renamed from: e */
    private ConnectionResult f6438e;

    /* renamed from: f */
    private int f6439f;

    /* renamed from: h */
    private int f6441h;

    /* renamed from: k */
    private zac f6444k;

    /* renamed from: l */
    private boolean f6445l;

    /* renamed from: m */
    private boolean f6446m;

    /* renamed from: n */
    private boolean f6447n;

    /* renamed from: o */
    private IAccountAccessor f6448o;

    /* renamed from: p */
    private boolean f6449p;

    /* renamed from: q */
    private boolean f6450q;

    /* renamed from: r */
    private final ClientSettings f6451r;

    /* renamed from: s */
    private final Map<Api<?>, Boolean> f6452s;

    /* renamed from: t */
    private final Api.AbstractClientBuilder<? extends zac, SignInOptions> f6453t;

    /* renamed from: g */
    private int f6440g = 0;

    /* renamed from: i */
    private final Bundle f6442i = new Bundle();

    /* renamed from: j */
    private final Set<Api.AnyClientKey> f6443j = new HashSet();

    /* renamed from: u */
    private ArrayList<Future<?>> f6454u = new ArrayList<>();

    public zaak(zabe zabeVar, ClientSettings clientSettings, Map<Api<?>, Boolean> map, GoogleApiAvailabilityLight googleApiAvailabilityLight, Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder, Lock lock, Context context) {
        this.f6434a = zabeVar;
        this.f6451r = clientSettings;
        this.f6452s = map;
        this.f6437d = googleApiAvailabilityLight;
        this.f6453t = abstractClientBuilder;
        this.f6435b = lock;
        this.f6436c = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
        if ((r5.hasResolution() || r4.f6437d.getErrorResolutionIntent(r5.getErrorCode()) != null) != false) goto L_0x003a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004b, code lost:
        if (r0 < r4.f6439f) goto L_0x004e;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5871a(com.google.android.gms.common.ConnectionResult r5, com.google.android.gms.common.api.Api<?> r6, boolean r7) {
        /*
            r4 = this;
            r0 = r6
            com.google.android.gms.common.api.Api$BaseClientBuilder r0 = r0.zah()
            int r0 = r0.getPriority()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L_0x003a
            r0 = r5
            boolean r0 = r0.hasResolution()
            if (r0 == 0) goto L_0x001d
        L_0x0017:
            r0 = 1
            r10 = r0
            goto L_0x0031
        L_0x001d:
            r0 = r4
            com.google.android.gms.common.GoogleApiAvailabilityLight r0 = r0.f6437d
            r1 = r5
            int r1 = r1.getErrorCode()
            android.content.Intent r0 = r0.getErrorResolutionIntent(r1)
            if (r0 == 0) goto L_0x002e
            goto L_0x0017
        L_0x002e:
            r0 = 0
            r10 = r0
        L_0x0031:
            r0 = r9
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0051
        L_0x003a:
            r0 = r4
            com.google.android.gms.common.ConnectionResult r0 = r0.f6438e
            if (r0 == 0) goto L_0x004e
            r0 = r9
            r11 = r0
            r0 = r8
            r1 = r4
            int r1 = r1.f6439f
            if (r0 >= r1) goto L_0x0051
        L_0x004e:
            r0 = 1
            r11 = r0
        L_0x0051:
            r0 = r11
            if (r0 == 0) goto L_0x0061
            r0 = r4
            r1 = r5
            r0.f6438e = r1
            r0 = r4
            r1 = r8
            r0.f6439f = r1
        L_0x0061:
            r0 = r4
            com.google.android.gms.common.api.internal.zabe r0 = r0.f6434a
            java.util.Map<com.google.android.gms.common.api.Api$AnyClientKey<?>, com.google.android.gms.common.ConnectionResult> r0 = r0.f6482b
            r1 = r6
            com.google.android.gms.common.api.Api$AnyClientKey r1 = r1.getClientKey()
            r2 = r5
            java.lang.Object r0 = r0.put(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zaak.m5871a(com.google.android.gms.common.ConnectionResult, com.google.android.gms.common.api.Api, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m5867a(zaak zaakVar, zak zakVar) {
        if (zaakVar.m5873a(0)) {
            ConnectionResult connectionResult = zakVar.getConnectionResult();
            if (connectionResult.isSuccess()) {
                ResolveAccountResponse zacv = zakVar.zacv();
                ConnectionResult connectionResult2 = zacv.getConnectionResult();
                if (!connectionResult2.isSuccess()) {
                    String valueOf = String.valueOf(connectionResult2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
                    sb.append("Sign-in succeeded with resolve account failure: ");
                    sb.append(valueOf);
                    Log.wtf("GACConnecting", sb.toString(), new Exception());
                    zaakVar.m5863b(connectionResult2);
                    return;
                }
                zaakVar.f6447n = true;
                zaakVar.f6448o = zacv.getAccountAccessor();
                zaakVar.f6449p = zacv.getSaveDefaultAccount();
                zaakVar.f6450q = zacv.isFromCrossClientAuth();
                zaakVar.m5865b();
            } else if (zaakVar.m5872a(connectionResult)) {
                zaakVar.m5858d();
                zaakVar.m5865b();
            } else {
                zaakVar.m5863b(connectionResult);
            }
        }
    }

    /* renamed from: a */
    private final void m5866a(boolean z) {
        zac zacVar = this.f6444k;
        if (zacVar != null) {
            if (zacVar.isConnected() && z) {
                this.f6444k.zacu();
            }
            this.f6444k.disconnect();
            if (this.f6451r.isSignInClientDisconnectFixEnabled()) {
                this.f6444k = null;
            }
            this.f6448o = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final boolean m5874a() {
        ConnectionResult connectionResult;
        this.f6441h--;
        int i = this.f6441h;
        if (i > 0) {
            return false;
        }
        if (i < 0) {
            Log.w("GACConnecting", this.f6434a.f6484d.m5837d());
            Log.wtf("GACConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            connectionResult = new ConnectionResult(8, null);
        } else {
            connectionResult = this.f6438e;
            if (connectionResult == null) {
                return true;
            }
            this.f6434a.f6483c = this.f6439f;
        }
        m5863b(connectionResult);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final boolean m5873a(int i) {
        if (this.f6440g == i) {
            return true;
        }
        Log.w("GACConnecting", this.f6434a.f6484d.m5837d());
        String valueOf = String.valueOf(this);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
        sb.append("Unexpected callback in ");
        sb.append(valueOf);
        Log.w("GACConnecting", sb.toString());
        int i2 = this.f6441h;
        StringBuilder sb2 = new StringBuilder(33);
        sb2.append("mRemainingConnections=");
        sb2.append(i2);
        Log.w("GACConnecting", sb2.toString());
        String b = m5864b(this.f6440g);
        String b2 = m5864b(i);
        StringBuilder sb3 = new StringBuilder(String.valueOf(b).length() + 70 + String.valueOf(b2).length());
        sb3.append("GoogleApiClient connecting is in step ");
        sb3.append(b);
        sb3.append(" but received callback for step ");
        sb3.append(b2);
        Log.e("GACConnecting", sb3.toString(), new Exception());
        m5863b(new ConnectionResult(8, null));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final boolean m5872a(ConnectionResult connectionResult) {
        return this.f6445l && !connectionResult.hasResolution();
    }

    /* renamed from: b */
    private static String m5864b(int i) {
        return i != 0 ? i != 1 ? "UNKNOWN" : "STEP_GETTING_REMOTE_SERVICE" : "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public final void m5865b() {
        if (this.f6441h == 0) {
            if (!this.f6446m || this.f6447n) {
                ArrayList arrayList = new ArrayList();
                this.f6440g = 1;
                this.f6441h = this.f6434a.f6481a.size();
                for (Api.AnyClientKey<?> anyClientKey : this.f6434a.f6481a.keySet()) {
                    if (!this.f6434a.f6482b.containsKey(anyClientKey)) {
                        arrayList.add(this.f6434a.f6481a.get(anyClientKey));
                    } else if (m5874a()) {
                        m5860c();
                    }
                }
                if (!arrayList.isEmpty()) {
                    this.f6454u.add(zabf.zaaz().submit(new C1620m(this, arrayList)));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public final void m5863b(ConnectionResult connectionResult) {
        m5856e();
        m5866a(!connectionResult.hasResolution());
        this.f6434a.m5834a(connectionResult);
        this.f6434a.f6485e.zac(connectionResult);
    }

    /* renamed from: c */
    private final void m5860c() {
        this.f6434a.m5830b();
        zabf.zaaz().execute(new RunnableC1614g(this));
        zac zacVar = this.f6444k;
        if (zacVar != null) {
            if (this.f6449p) {
                zacVar.zaa(this.f6448o, this.f6450q);
            }
            m5866a(false);
        }
        for (Api.AnyClientKey<?> anyClientKey : this.f6434a.f6482b.keySet()) {
            this.f6434a.f6481a.get(anyClientKey).disconnect();
        }
        this.f6434a.f6485e.zab(this.f6442i.isEmpty() ? null : this.f6442i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public final void m5858d() {
        this.f6446m = false;
        this.f6434a.f6484d.f6458c = Collections.emptySet();
        for (Api.AnyClientKey<?> anyClientKey : this.f6443j) {
            if (!this.f6434a.f6482b.containsKey(anyClientKey)) {
                this.f6434a.f6482b.put(anyClientKey, new ConnectionResult(17, null));
            }
        }
    }

    /* renamed from: e */
    private final void m5856e() {
        ArrayList<Future<?>> arrayList = this.f6454u;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Future<?> future = arrayList.get(i);
            i++;
            future.cancel(true);
        }
        this.f6454u.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static /* synthetic */ Set m5853g(zaak zaakVar) {
        ClientSettings clientSettings = zaakVar.f6451r;
        if (clientSettings == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(clientSettings.getRequiredScopes());
        Map<Api<?>, ClientSettings.OptionalApiSettings> optionalApiSettings = zaakVar.f6451r.getOptionalApiSettings();
        for (Api<?> api : optionalApiSettings.keySet()) {
            if (!zaakVar.f6434a.f6482b.containsKey(api.getClientKey())) {
                hashSet.addAll(optionalApiSettings.get(api).mScopes);
            }
        }
        return hashSet;
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final void begin() {
        this.f6434a.f6482b.clear();
        this.f6446m = false;
        this.f6438e = null;
        this.f6440g = 0;
        this.f6445l = true;
        this.f6447n = false;
        this.f6449p = false;
        HashMap hashMap = new HashMap();
        boolean z = false;
        for (Api<?> api : this.f6452s.keySet()) {
            Api.Client client = this.f6434a.f6481a.get(api.getClientKey());
            z |= api.zah().getPriority() == 1;
            boolean booleanValue = this.f6452s.get(api).booleanValue();
            if (client.requiresSignIn()) {
                this.f6446m = true;
                if (booleanValue) {
                    this.f6443j.add(api.getClientKey());
                } else {
                    this.f6445l = false;
                }
            }
            hashMap.put(client, new C1616i(this, api, booleanValue));
        }
        if (z) {
            this.f6446m = false;
        }
        if (this.f6446m) {
            this.f6451r.setClientSessionId(Integer.valueOf(System.identityHashCode(this.f6434a.f6484d)));
            C1621n nVar = new C1621n(this, (byte) 0);
            Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder = this.f6453t;
            Context context = this.f6436c;
            Looper looper = this.f6434a.f6484d.getLooper();
            ClientSettings clientSettings = this.f6451r;
            this.f6444k = (zac) abstractClientBuilder.buildClient(context, looper, clientSettings, (ClientSettings) clientSettings.getSignInOptions(), (GoogleApiClient.ConnectionCallbacks) nVar, (GoogleApiClient.OnConnectionFailedListener) nVar);
        }
        this.f6441h = this.f6434a.f6481a.size();
        this.f6454u.add(zabf.zaaz().submit(new C1615h(this, hashMap)));
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final void connect() {
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final boolean disconnect() {
        m5856e();
        m5866a(true);
        this.f6434a.m5834a((ConnectionResult) null);
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(T t) {
        this.f6434a.f6484d.f6456a.add(t);
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final void onConnected(Bundle bundle) {
        if (m5873a(1)) {
            if (bundle != null) {
                this.f6442i.putAll(bundle);
            }
            if (m5874a()) {
                m5860c();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final void onConnectionSuspended(int i) {
        m5863b(new ConnectionResult(8, null));
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final void zaa(ConnectionResult connectionResult, Api<?> api, boolean z) {
        if (m5873a(1)) {
            m5871a(connectionResult, api, z);
            if (m5874a()) {
                m5860c();
            }
        }
    }
}
