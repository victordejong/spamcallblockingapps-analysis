package com.facebook.appevents;

import android.content.Intent;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.appevents.C2271g;
import com.facebook.internal.C2464o;
import com.facebook.internal.C2466p;
import com.facebook.internal.C2503y;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6135n;
import p081h.p154f.C6148s;
import p081h.p154f.EnumC6151v;
/* renamed from: com.facebook.appevents.e */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/e.class */
public class C2262e {

    /* renamed from: a */
    public static final String f2663a = "com.facebook.appevents.e";

    /* renamed from: d */
    public static ScheduledFuture f2666d;

    /* renamed from: b */
    public static volatile C2261d f2664b = new C2261d();

    /* renamed from: c */
    public static final ScheduledExecutorService f2665c = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: e */
    public static final Runnable f2667e = new RunnableC2263a();

    /* renamed from: com.facebook.appevents.e$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/e$a.class */
    public static final class RunnableC2263a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            ScheduledFuture unused = C2262e.f2666d = null;
            if (C2271g.m35330b() != C2271g.EnumC2272a.EXPLICIT_ONLY) {
                C2262e.m35346b(EnumC2280j.TIMER);
            }
        }
    }

    /* renamed from: com.facebook.appevents.e$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/e$b.class */
    public static final class RunnableC2264b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            C2269f.m35339a(C2262e.f2664b);
            C2261d unused = C2262e.f2664b = new C2261d();
        }
    }

    /* renamed from: com.facebook.appevents.e$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/e$c.class */
    public static final class RunnableC2265c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ EnumC2280j f2668a;

        public RunnableC2265c(EnumC2280j jVar) {
            this.f2668a = jVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2262e.m35346b(this.f2668a);
        }
    }

    /* renamed from: com.facebook.appevents.e$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/e$d.class */
    public static final class RunnableC2266d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2252a f2669a;

        /* renamed from: b */
        public final /* synthetic */ C2257c f2670b;

        public RunnableC2266d(C2252a aVar, C2257c cVar) {
            this.f2669a = aVar;
            this.f2670b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2262e.f2664b.m35360a(this.f2669a, this.f2670b);
            if (C2271g.m35330b() != C2271g.EnumC2272a.EXPLICIT_ONLY && C2262e.f2664b.m35362a() > 100) {
                C2262e.m35346b(EnumC2280j.EVENT_THRESHOLD);
            } else if (C2262e.f2666d == null) {
                ScheduledFuture unused = C2262e.f2666d = C2262e.f2665c.schedule(C2262e.f2667e, 15L, TimeUnit.SECONDS);
            }
        }
    }

    /* renamed from: com.facebook.appevents.e$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/e$e.class */
    public static final class C2267e implements GraphRequest.AbstractC2230f {

        /* renamed from: a */
        public final /* synthetic */ C2252a f2671a;

        /* renamed from: b */
        public final /* synthetic */ GraphRequest f2672b;

        /* renamed from: c */
        public final /* synthetic */ C2287o f2673c;

        /* renamed from: d */
        public final /* synthetic */ C2282l f2674d;

        public C2267e(C2252a aVar, GraphRequest graphRequest, C2287o oVar, C2282l lVar) {
            this.f2671a = aVar;
            this.f2672b = graphRequest;
            this.f2673c = oVar;
            this.f2674d = lVar;
        }

        @Override // com.facebook.GraphRequest.AbstractC2230f
        /* renamed from: a */
        public void mo23821a(C6148s sVar) {
            C2262e.m35347b(this.f2671a, this.f2672b, sVar, this.f2673c, this.f2674d);
        }
    }

    /* renamed from: com.facebook.appevents.e$f */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/e$f.class */
    public static final class RunnableC2268f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2252a f2675a;

        /* renamed from: b */
        public final /* synthetic */ C2287o f2676b;

        public RunnableC2268f(C2252a aVar, C2287o oVar) {
            this.f2675a = aVar;
            this.f2676b = oVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2269f.m35340a(this.f2675a, this.f2676b);
        }
    }

    /* renamed from: a */
    public static GraphRequest m35353a(C2252a aVar, C2287o oVar, boolean z, C2282l lVar) {
        String b = aVar.m35376b();
        boolean z2 = false;
        C2464o a = C2466p.m34643a(b, false);
        GraphRequest a2 = GraphRequest.m35460a((AccessToken) null, String.format("%s/activities", b), (JSONObject) null, (GraphRequest.AbstractC2230f) null);
        Bundle j = a2.m35414j();
        Bundle bundle = j;
        if (j == null) {
            bundle = new Bundle();
        }
        bundle.putString("access_token", aVar.m35377a());
        String d = C2283m.m35291d();
        if (d != null) {
            bundle.putString("device_token", d);
        }
        String e = C2273h.m35308e();
        if (e != null) {
            bundle.putString("install_referrer", e);
        }
        a2.m35464a(bundle);
        if (a != null) {
            z2 = a.m34653n();
        }
        int a3 = oVar.m35284a(a2, C6135n.m23746e(), z2, z);
        if (a3 == 0) {
            return null;
        }
        lVar.f2704a += a3;
        a2.m35459a((GraphRequest.AbstractC2230f) new C2267e(aVar, a2, oVar, lVar));
        return a2;
    }

    /* renamed from: a */
    public static C2282l m35350a(EnumC2280j jVar, C2261d dVar) {
        C2282l lVar = new C2282l();
        boolean b = C6135n.m23754b(C6135n.m23746e());
        ArrayList<GraphRequest> arrayList = new ArrayList();
        for (C2252a aVar : dVar.m35358b()) {
            GraphRequest a = m35353a(aVar, dVar.m35361a(aVar), b, lVar);
            if (a != null) {
                arrayList.add(a);
            }
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        C2503y.m34556a(EnumC6151v.APP_EVENTS, f2663a, "Flushing %d events due to %s.", Integer.valueOf(lVar.f2704a), jVar.toString());
        for (GraphRequest graphRequest : arrayList) {
            graphRequest.m35437b();
        }
        return lVar;
    }

    /* renamed from: a */
    public static void m35354a(C2252a aVar, C2257c cVar) {
        f2665c.execute(new RunnableC2266d(aVar, cVar));
    }

    /* renamed from: a */
    public static void m35351a(EnumC2280j jVar) {
        f2665c.execute(new RunnableC2265c(jVar));
    }

    /* renamed from: b */
    public static void m35347b(C2252a aVar, GraphRequest graphRequest, C6148s sVar, C2287o oVar, C2282l lVar) {
        String str;
        String str2;
        FacebookRequestError a = sVar.m23705a();
        EnumC2281k kVar = EnumC2281k.SUCCESS;
        boolean z = true;
        if (a == null) {
            str = "Success";
        } else if (a.m35475a() == -1) {
            kVar = EnumC2281k.NO_CONNECTIVITY;
            str = "Failed: No Connectivity";
        } else {
            str = String.format("Failed:\n  Response: %s\n  Error %s", sVar.toString(), a.toString());
            kVar = EnumC2281k.SERVER_ERROR;
        }
        if (C6135n.m23752b(EnumC6151v.APP_EVENTS)) {
            try {
                str2 = new JSONArray((String) graphRequest.m35412l()).toString(2);
            } catch (JSONException e) {
                str2 = "<Can't encode events for debug logging>";
            }
            C2503y.m34556a(EnumC6151v.APP_EVENTS, f2663a, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", graphRequest.m35421f().toString(), str, str2);
        }
        if (a == null) {
            z = false;
        }
        oVar.m35282a(z);
        if (kVar == EnumC2281k.NO_CONNECTIVITY) {
            C6135n.m23737n().execute(new RunnableC2268f(aVar, oVar));
        }
        if (kVar != EnumC2281k.SUCCESS && lVar.f2705b != EnumC2281k.NO_CONNECTIVITY) {
            lVar.f2705b = kVar;
        }
    }

    /* renamed from: b */
    public static void m35346b(EnumC2280j jVar) {
        f2664b.m35359a(C2269f.m35341a());
        try {
            C2282l a = m35350a(jVar, f2664b);
            if (a != null) {
                Intent intent = new Intent("com.facebook.sdk.APP_EVENTS_FLUSHED");
                intent.putExtra("com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED", a.f2704a);
                intent.putExtra("com.facebook.sdk.APP_EVENTS_FLUSH_RESULT", a.f2705b);
                LocalBroadcastManager.getInstance(C6135n.m23746e()).sendBroadcast(intent);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: e */
    public static Set<C2252a> m35343e() {
        return f2664b.m35358b();
    }

    /* renamed from: f */
    public static void m35342f() {
        f2665c.execute(new RunnableC2264b());
    }
}
