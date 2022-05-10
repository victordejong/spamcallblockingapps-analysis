package com.inmobi.p497a;

import android.content.Context;
import android.location.Criteria;
import android.os.Bundle;
import android.os.SystemClock;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationServices;
import com.inmobi.commons.core.configs.AbstractC8346a;
import com.inmobi.commons.core.configs.C8348b;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.utilities.C8409f;
import com.inmobi.commons.core.utilities.p516b.C8405h;
import com.inmobi.commons.core.utilities.uid.C8418d;
import com.inmobi.commons.p508a.C8326a;
import java.util.HashMap;
import java.util.UUID;
/* renamed from: com.inmobi.a.o */
/* loaded from: classes2-dex2jar.jar:com/inmobi/a/o.class */
public class C8003o implements C8348b.AbstractC8351c {

    /* renamed from: b */
    public static final String f31242b = "o";

    /* renamed from: c */
    public static final Object f31243c = new Object();

    /* renamed from: d */
    public static volatile C8003o f31244d;

    /* renamed from: e */
    public C7992h f31246e;

    /* renamed from: f */
    public C7990g f31247f;

    /* renamed from: g */
    public boolean f31248g = false;

    /* renamed from: a */
    public C8004p f31245a = new C8004p();

    public C8003o() {
        C8348b.m5847a().m5844a(this.f31245a, this);
        C8405h.m5655a().m5654a(this.f31245a.f31250a.m6736b());
        C7999m.m6764a();
        C7999m.m6761a(this.f31245a.f31250a.m6737a());
        C8366b.m5794a().m5788a("signals", this.f31245a.f31252c);
    }

    /* renamed from: a */
    public static C8003o m6743a() {
        C8003o oVar = f31244d;
        C8003o oVar2 = oVar;
        if (oVar == null) {
            synchronized (f31243c) {
                C8003o oVar3 = f31244d;
                oVar2 = oVar3;
                if (oVar3 == null) {
                    oVar2 = new C8003o();
                    f31244d = oVar2;
                }
            }
        }
        return oVar2;
    }

    /* renamed from: f */
    private void m6738f() {
        synchronized (this) {
            if (this.f31248g) {
                if (this.f31245a.f31250a.f31261a) {
                    C8002n a = C8002n.m6748a();
                    if (m6743a().f31245a.f31250a.m6736b()) {
                        String uuid = UUID.randomUUID().toString();
                        C8405h.m5655a().f32684a = uuid;
                        C8405h.m5655a().f32685b = System.currentTimeMillis();
                        C8405h.m5655a().f32686c = 0L;
                        a.f31241f = SystemClock.elapsedRealtime();
                        a.f31236a = 0L;
                        a.f31237b = 0L;
                        a.f31238c = 0L;
                        a.f31239d = 0L;
                        a.f31240e = 0L;
                        a.f31241f = 0L;
                        HashMap hashMap = new HashMap();
                        hashMap.put("sessionId", uuid);
                        try {
                            C8366b.m5794a();
                            C8366b.m5789a("signals", "SDKSessionStarted", hashMap);
                        } catch (Exception e) {
                            StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                            sb.append(e.getMessage());
                            sb.append(")");
                        }
                    }
                    if (this.f31246e == null) {
                        this.f31246e = new C7992h();
                    }
                    this.f31246e.m6771a();
                }
            }
        }
    }

    @Override // com.inmobi.commons.core.configs.C8348b.AbstractC8351c
    /* renamed from: a */
    public final void mo5529a(AbstractC8346a aVar) {
        this.f31245a = (C8004p) aVar;
        C7999m.m6764a();
        C7999m.m6761a(this.f31245a.f31250a.m6737a());
        C8405h.m5655a().m5654a(this.f31245a.f31250a.m6736b());
        C8366b.m5794a().m5788a("signals", this.f31245a.f31252c);
    }

    /* renamed from: b */
    public final void m6742b() {
        synchronized (this) {
            if (!this.f31248g) {
                this.f31248g = true;
                m6738f();
                final C7999m a = C7999m.m6764a();
                try {
                    if (C7999m.f31223a && C7999m.m6758c() && a.m6754g()) {
                        if (a.f31228b != null) {
                            Criteria criteria = new Criteria();
                            criteria.setBearingAccuracy(2);
                            criteria.setPowerRequirement(2);
                            criteria.setCostAllowed(false);
                            String bestProvider = a.f31228b.getBestProvider(criteria, true);
                            if (bestProvider != null) {
                                a.f31228b.requestSingleUpdate(bestProvider, a, a.f31229c.getLooper());
                            }
                        }
                        if (!C7999m.m6760b() && C8409f.m5640a("signals")) {
                            Context b = C8326a.m5891b();
                            try {
                                if (a.f31230d == null) {
                                    GoogleApiClient.Builder builder = new GoogleApiClient.Builder(b);
                                    builder.m17758a(new GoogleApiClient.ConnectionCallbacks() { // from class: com.inmobi.a.m.2
                                        @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
                                        public final void onConnected(Bundle bundle) {
                                            String unused = C7999m.f31224e;
                                            boolean unused2 = C7999m.f31227h = true;
                                        }

                                        @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
                                        public final void onConnectionSuspended(int i) {
                                            boolean unused = C7999m.f31227h = false;
                                            String unused2 = C7999m.f31224e;
                                        }
                                    });
                                    builder.m17757a(new GoogleApiClient.OnConnectionFailedListener() { // from class: com.inmobi.a.m.1
                                        @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
                                        public final void onConnectionFailed(ConnectionResult connectionResult) {
                                            boolean unused = C7999m.f31227h = false;
                                        }
                                    });
                                    builder.m17759a(LocationServices.f29739c);
                                    GoogleApiClient a2 = builder.m17760a();
                                    a.f31230d = a2;
                                    a2.mo17560a();
                                    return;
                                }
                                a.f31230d.mo17560a();
                            } catch (Exception e) {
                                StringBuilder sb = new StringBuilder("Error in connecting to GooglePlayServices API : (");
                                sb.append(e.getMessage());
                                sb.append(")");
                            }
                        }
                    }
                } catch (Exception e2) {
                    new StringBuilder("SDK encountered unexpected error in initializing location collection; ").append(e2.getMessage());
                }
            }
        }
    }

    /* renamed from: c */
    public final void m6741c() {
        synchronized (this) {
            if (this.f31248g) {
                this.f31248g = false;
                C8002n a = C8002n.m6748a();
                if (m6743a().f31245a.f31250a.m6736b()) {
                    C8405h.m5655a().f32686c = System.currentTimeMillis();
                    try {
                        HashMap hashMap = new HashMap();
                        hashMap.put("sessionId", C8405h.m5655a().f32684a);
                        hashMap.put("totalNetworkTime", Long.valueOf(a.f31240e));
                        hashMap.put("sessionDuration", Long.valueOf(SystemClock.elapsedRealtime() - a.f31241f));
                        C8366b.m5794a();
                        C8366b.m5789a("signals", "SDKSessionEnded", hashMap);
                    } catch (Exception e) {
                        StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                        sb.append(e.getMessage());
                        sb.append(")");
                    }
                }
                if (this.f31246e != null) {
                    C7992h hVar = this.f31246e;
                    hVar.f31204a.f31206b = true;
                    hVar.f31204a.sendEmptyMessageDelayed(2, m6743a().f31245a.f31250a.f31263c * 1000);
                }
                C7999m a2 = C7999m.m6764a();
                if (C7999m.f31223a && C7999m.m6758c()) {
                    if (a2.f31228b != null) {
                        a2.f31228b.removeUpdates(a2);
                    }
                    if (a2.f31230d != null) {
                        a2.f31230d.mo17553b();
                    }
                }
                a2.f31230d = null;
            }
        }
    }

    /* renamed from: d */
    public final C8418d m6740d() {
        return new C8418d(this.f31245a.f32471p.f32472a);
    }

    /* renamed from: e */
    public final void m6739e() {
        if (this.f31248g && this.f31245a.f31251b.f31253a) {
            if (this.f31247f == null) {
                this.f31247f = new C7990g();
            }
            this.f31247f.m6776a(this.f31245a.f31251b);
        }
    }
}
