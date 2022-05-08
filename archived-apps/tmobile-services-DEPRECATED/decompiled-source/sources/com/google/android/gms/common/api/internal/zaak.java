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
import com.google.android.gms.common.api.Scope;
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
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaak.class */
public final class zaak implements zabb {

    /* renamed from: a */
    private final zabe f7143a;

    /* renamed from: b */
    private final Lock f7144b;

    /* renamed from: c */
    private final Context f7145c;

    /* renamed from: d */
    private final GoogleApiAvailabilityLight f7146d;

    /* renamed from: e */
    private ConnectionResult f7147e;

    /* renamed from: f */
    private int f7148f;

    /* renamed from: h */
    private int f7150h;

    /* renamed from: k */
    private zac f7153k;

    /* renamed from: l */
    private boolean f7154l;

    /* renamed from: m */
    private boolean f7155m;

    /* renamed from: n */
    private boolean f7156n;

    /* renamed from: o */
    private IAccountAccessor f7157o;

    /* renamed from: p */
    private boolean f7158p;

    /* renamed from: q */
    private boolean f7159q;

    /* renamed from: r */
    private final ClientSettings f7160r;

    /* renamed from: s */
    private final Map<Api<?>, Boolean> f7161s;

    /* renamed from: t */
    private final Api.AbstractClientBuilder<? extends zac, SignInOptions> f7162t;

    /* renamed from: g */
    private int f7149g = 0;

    /* renamed from: i */
    private final Bundle f7151i = new Bundle();

    /* renamed from: j */
    private final Set<Api.AnyClientKey> f7152j = new HashSet();

    /* renamed from: u */
    private ArrayList<Future<?>> f7163u = new ArrayList<>();

    public zaak(zabe zabeVar, ClientSettings clientSettings, Map<Api<?>, Boolean> map, GoogleApiAvailabilityLight googleApiAvailabilityLight, Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder, Lock lock, Context context) {
        this.f7143a = zabeVar;
        this.f7160r = clientSettings;
        this.f7161s = map;
        this.f7146d = googleApiAvailabilityLight;
        this.f7162t = abstractClientBuilder;
        this.f7144b = lock;
        this.f7145c = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy
    /* renamed from: A */
    public final void m14853A(ConnectionResult connectionResult) {
        m14834p();
        m14830t(!connectionResult.m15091Y());
        this.f7143a.m14787l(connectionResult);
        this.f7143a.f7230o.mo14688a(connectionResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy
    /* renamed from: j */
    public final void m14840j(zak zakVar) {
        if (m14827w(0)) {
            ConnectionResult B = zakVar.m10842B();
            if (B.m15090d0()) {
                ResolveAccountResponse I = zakVar.m10841I();
                ConnectionResult I2 = I.m14514I();
                if (!I2.m15090d0()) {
                    String valueOf = String.valueOf(I2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
                    sb.append("Sign-in succeeded with resolve account failure: ");
                    sb.append(valueOf);
                    Log.wtf("GACConnecting", sb.toString(), new Exception());
                    m14853A(I2);
                    return;
                }
                this.f7156n = true;
                this.f7157o = I.m14515B();
                this.f7158p = I.m14513W();
                this.f7159q = I.m14512Y();
                m14837m();
            } else if (m14824z(B)) {
                m14835o();
                m14837m();
            } else {
                m14853A(B);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy
    /* renamed from: l */
    public final boolean m14838l() {
        int i = this.f7150h - 1;
        this.f7150h = i;
        if (i > 0) {
            return false;
        }
        if (i < 0) {
            Log.w("GACConnecting", this.f7143a.f7229n.m14803x());
            Log.wtf("GACConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            m14853A(new ConnectionResult(8, null));
            return false;
        }
        ConnectionResult connectionResult = this.f7147e;
        if (connectionResult == null) {
            return true;
        }
        this.f7143a.f7228m = this.f7148f;
        m14853A(connectionResult);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy
    /* renamed from: m */
    public final void m14837m() {
        if (this.f7150h == 0) {
            if (!this.f7155m || this.f7156n) {
                ArrayList arrayList = new ArrayList();
                this.f7149g = 1;
                this.f7150h = this.f7143a.f7221f.size();
                for (Api.AnyClientKey<?> anyClientKey : this.f7143a.f7221f.keySet()) {
                    if (!this.f7143a.f7222g.containsKey(anyClientKey)) {
                        arrayList.add(this.f7143a.f7221f.get(anyClientKey));
                    } else if (m14838l()) {
                        m14836n();
                    }
                }
                if (!arrayList.isEmpty()) {
                    this.f7163u.add(zabf.m14786a().submit(new zaaq(this, arrayList)));
                }
            }
        }
    }

    @GuardedBy
    /* renamed from: n */
    private final void m14836n() {
        this.f7143a.m14791h();
        zabf.m14786a().execute(new zaaj(this));
        zac zacVar = this.f7153k;
        if (zacVar != null) {
            if (this.f7158p) {
                zacVar.mo10840a(this.f7157o, this.f7159q);
            }
            m14830t(false);
        }
        for (Api.AnyClientKey<?> anyClientKey : this.f7143a.f7222g.keySet()) {
            this.f7143a.f7221f.get(anyClientKey).disconnect();
        }
        this.f7143a.f7230o.mo14687b(this.f7151i.isEmpty() ? null : this.f7151i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy
    /* renamed from: o */
    public final void m14835o() {
        this.f7155m = false;
        this.f7143a.f7229n.f7196p = Collections.emptySet();
        for (Api.AnyClientKey<?> anyClientKey : this.f7152j) {
            if (!this.f7143a.f7222g.containsKey(anyClientKey)) {
                this.f7143a.f7222g.put(anyClientKey, new ConnectionResult(17, null));
            }
        }
    }

    /* renamed from: p */
    private final void m14834p() {
        ArrayList<Future<?>> arrayList = this.f7163u;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Future<?> future = arrayList.get(i);
            i++;
            future.cancel(true);
        }
        this.f7163u.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public final Set<Scope> m14833q() {
        if (this.f7160r == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(this.f7160r.m14575h());
        Map<Api<?>, ClientSettings.OptionalApiSettings> e = this.f7160r.m14578e();
        for (Api<?> api : e.keySet()) {
            if (!this.f7143a.f7222g.containsKey(api.m15033a())) {
                hashSet.addAll(e.get(api).f7481a);
            }
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
        if ((r5.m15091Y() || r4.f7146d.m15069c(r5.m15094B()) != null) != false) goto L_0x003a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004b, code lost:
        if (r0 < r4.f7148f) goto L_0x004e;
     */
    @javax.annotation.concurrent.GuardedBy
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m14831s(com.google.android.gms.common.ConnectionResult r5, com.google.android.gms.common.api.Api<?> r6, boolean r7) {
        /*
            r4 = this;
            r0 = r6
            com.google.android.gms.common.api.Api$BaseClientBuilder r0 = r0.m15031c()
            int r0 = r0.getPriority()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L_0x003a
            r0 = r5
            boolean r0 = r0.m15091Y()
            if (r0 == 0) goto L_0x001d
        L_0x0017:
            r0 = 1
            r10 = r0
            goto L_0x0031
        L_0x001d:
            r0 = r4
            com.google.android.gms.common.GoogleApiAvailabilityLight r0 = r0.f7146d
            r1 = r5
            int r1 = r1.m15094B()
            android.content.Intent r0 = r0.m15069c(r1)
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
            com.google.android.gms.common.ConnectionResult r0 = r0.f7147e
            if (r0 == 0) goto L_0x004e
            r0 = r9
            r11 = r0
            r0 = r8
            r1 = r4
            int r1 = r1.f7148f
            if (r0 >= r1) goto L_0x0051
        L_0x004e:
            r0 = 1
            r11 = r0
        L_0x0051:
            r0 = r11
            if (r0 == 0) goto L_0x0061
            r0 = r4
            r1 = r5
            r0.f7147e = r1
            r0 = r4
            r1 = r8
            r0.f7148f = r1
        L_0x0061:
            r0 = r4
            com.google.android.gms.common.api.internal.zabe r0 = r0.f7143a
            java.util.Map<com.google.android.gms.common.api.Api$AnyClientKey<?>, com.google.android.gms.common.ConnectionResult> r0 = r0.f7222g
            r1 = r6
            com.google.android.gms.common.api.Api$AnyClientKey r1 = r1.m15033a()
            r2 = r5
            java.lang.Object r0 = r0.put(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zaak.m14831s(com.google.android.gms.common.ConnectionResult, com.google.android.gms.common.api.Api, boolean):void");
    }

    @GuardedBy
    /* renamed from: t */
    private final void m14830t(boolean z) {
        zac zacVar = this.f7153k;
        if (zacVar != null) {
            if (zacVar.isConnected() && z) {
                this.f7153k.mo10838d();
            }
            this.f7153k.disconnect();
            if (this.f7160r.m14573j()) {
                this.f7153k = null;
            }
            this.f7157o = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy
    /* renamed from: w */
    public final boolean m14827w(int i) {
        if (this.f7149g == i) {
            return true;
        }
        Log.w("GACConnecting", this.f7143a.f7229n.m14803x());
        String valueOf = String.valueOf(this);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
        sb.append("Unexpected callback in ");
        sb.append(valueOf);
        Log.w("GACConnecting", sb.toString());
        int i2 = this.f7150h;
        StringBuilder sb2 = new StringBuilder(33);
        sb2.append("mRemainingConnections=");
        sb2.append(i2);
        Log.w("GACConnecting", sb2.toString());
        String y = m14825y(this.f7149g);
        String y2 = m14825y(i);
        StringBuilder sb3 = new StringBuilder(String.valueOf(y).length() + 70 + String.valueOf(y2).length());
        sb3.append("GoogleApiClient connecting is in step ");
        sb3.append(y);
        sb3.append(" but received callback for step ");
        sb3.append(y2);
        Log.e("GACConnecting", sb3.toString(), new Exception());
        m14853A(new ConnectionResult(8, null));
        return false;
    }

    /* renamed from: y */
    private static String m14825y(int i) {
        return i != 0 ? i != 1 ? "UNKNOWN" : "STEP_GETTING_REMOTE_SERVICE" : "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy
    /* renamed from: z */
    public final boolean m14824z(ConnectionResult connectionResult) {
        return this.f7154l && !connectionResult.m15091Y();
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    @GuardedBy
    /* renamed from: a */
    public final void mo14800a(int i) {
        m14853A(new ConnectionResult(8, null));
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    @GuardedBy
    /* renamed from: b */
    public final void mo14799b(Bundle bundle) {
        if (m14827w(1)) {
            if (bundle != null) {
                this.f7151i.putAll(bundle);
            }
            if (m14838l()) {
                m14836n();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    @GuardedBy
    /* renamed from: c */
    public final void mo14798c(ConnectionResult connectionResult, Api<?> api, boolean z) {
        if (m14827w(1)) {
            m14831s(connectionResult, api, z);
            if (m14838l()) {
                m14836n();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    public final void connect() {
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    /* renamed from: d */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo14797d(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    @GuardedBy
    public final boolean disconnect() {
        m14834p();
        m14830t(true);
        this.f7143a.m14787l(null);
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zabb
    @GuardedBy
    /* renamed from: e */
    public final void mo14796e() {
        this.f7143a.f7222g.clear();
        this.f7155m = false;
        this.f7147e = null;
        this.f7149g = 0;
        this.f7154l = true;
        this.f7156n = false;
        this.f7158p = false;
        HashMap hashMap = new HashMap();
        boolean z = false;
        for (Api<?> api : this.f7161s.keySet()) {
            Api.Client client = this.f7143a.f7221f.get(api.m15033a());
            z |= api.m15031c().getPriority() == 1;
            boolean booleanValue = this.f7161s.get(api).booleanValue();
            if (client.requiresSignIn()) {
                this.f7155m = true;
                if (booleanValue) {
                    this.f7152j.add(api.m15033a());
                } else {
                    this.f7154l = false;
                }
            }
            hashMap.put(client, new zaam(this, api, booleanValue));
        }
        if (z) {
            this.f7155m = false;
        }
        if (this.f7155m) {
            this.f7160r.m14572k(Integer.valueOf(System.identityHashCode(this.f7143a.f7229n)));
            zaar zaarVar = new zaar(this, null);
            Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder = this.f7162t;
            Context context = this.f7145c;
            Looper h = this.f7143a.f7229n.mo14784h();
            ClientSettings clientSettings = this.f7160r;
            this.f7153k = (zac) abstractClientBuilder.buildClient(context, h, clientSettings, (ClientSettings) clientSettings.m14574i(), (GoogleApiClient.ConnectionCallbacks) zaarVar, (GoogleApiClient.OnConnectionFailedListener) zaarVar);
        }
        this.f7150h = this.f7143a.f7221f.size();
        this.f7163u.add(zabf.m14786a().submit(new zaal(this, hashMap)));
    }
}
