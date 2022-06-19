package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.common.p026n.C0950c;
import com.google.android.gms.common.util.AbstractC0965f;
import com.google.android.gms.common.util.i;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.internal.AbstractC1593t5;
import com.google.android.gms.measurement.internal.C1474a7;
import com.google.android.gms.measurement.internal.C1535k4;
import com.google.android.gms.measurement.p029a.C1468a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
/* renamed from: com.google.android.gms.internal.measurement.h0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/h0.class */
public final class C1323h0 {

    /* renamed from: i */
    private static volatile C1323h0 f3907i;

    /* renamed from: j */
    private static Boolean f3908j;

    /* renamed from: a */
    private final String f3909a;

    /* renamed from: b */
    protected final AbstractC0965f f3910b;

    /* renamed from: c */
    protected final ExecutorService f3911c;

    /* renamed from: d */
    private final C1468a f3912d;

    /* renamed from: e */
    private final List<Pair<AbstractC1593t5, y>> f3913e;

    /* renamed from: f */
    private int f3914f;

    /* renamed from: g */
    private boolean f3915g;

    /* renamed from: h */
    private volatile AbstractC1386sc f3916h;

    protected C1323h0(Context context, String str, String str2, String str3, Bundle bundle) {
        if (str == null || !m2097s(str2, str3)) {
            this.f3909a = "FA";
        } else {
            this.f3909a = str;
        }
        this.f3910b = i.d();
        boolean z = true;
        this.f3911c = C1381r8.m1988a().m1981a(new ThreadFactoryC1374q(this), 1);
        this.f3912d = new C1468a(this);
        this.f3913e = new ArrayList();
        try {
            if (C1474a7.m1704b(context, "google_app_id", C1535k4.m1573a(context)) != null && !m2101o()) {
                this.f3915g = true;
                Log.w(this.f3909a, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
                return;
            }
        } catch (IllegalStateException e) {
        }
        if (!m2097s(str2, str3)) {
            if (str2 == null || str3 == null) {
                if ((str2 == null) ^ (str3 != null ? false : z)) {
                    Log.w(this.f3909a, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            } else {
                Log.v(this.f3909a, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy");
            }
        }
        m2100p(new g(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.f3909a, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new C1317g0(this));
        }
    }

    /* renamed from: j */
    static /* synthetic */ void m2106j(Context context) {
        Bundle bundle;
        synchronized (C1323h0.class) {
            try {
                try {
                } catch (Exception e) {
                    Log.e("FA", "Exception reading flag from SharedPreferences.", e);
                    f3908j = Boolean.TRUE;
                }
                if (f3908j != null) {
                    return;
                }
                C0931r.m3312g("app_measurement_internal_disable_startup_flags");
                try {
                    ApplicationInfo m3207c = C0950c.m3200a(context).m3207c(context.getPackageName(), 128);
                    if (m3207c != null && (bundle = m3207c.metaData) != null) {
                        if (bundle.getBoolean("app_measurement_internal_disable_startup_flags")) {
                            f3908j = Boolean.TRUE;
                            return;
                        }
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                }
                SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
                f3908j = Boolean.valueOf(sharedPreferences.getBoolean("allow_remote_dynamite", true));
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.remove("allow_remote_dynamite");
                edit.apply();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: o */
    protected static final boolean m2101o() {
        try {
            Class.forName("com.google.firebase.analytics.FirebaseAnalytics");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: p */
    public final void m2100p(AbstractRunnableC1407x abstractRunnableC1407x) {
        this.f3911c.execute(abstractRunnableC1407x);
    }

    /* renamed from: q */
    public final void m2099q(Exception exc, boolean z, boolean z2) {
        this.f3915g |= z;
        if (z) {
            Log.w(this.f3909a, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z2) {
            m2113c(5, "Error with data collection. Data lost.", exc, null, null);
        }
        Log.w(this.f3909a, "Error with data collection. Data lost.", exc);
    }

    /* renamed from: r */
    private final void m2098r(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l) {
        m2100p(new v(this, l, str, str2, bundle, z, z2));
    }

    /* renamed from: s */
    public static final boolean m2097s(String str, String str2) {
        return (str2 == null || str == null || m2101o()) ? false : true;
    }

    /* renamed from: t */
    public static C1323h0 m2096t(Context context, String str, String str2, String str3, Bundle bundle) {
        C0931r.m3308k(context);
        if (f3907i == null) {
            synchronized (C1323h0.class) {
                try {
                    if (f3907i == null) {
                        f3907i = new C1323h0(context, str, str2, str3, bundle);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3907i;
    }

    /* renamed from: A */
    public final void m2126A(Bundle bundle) {
        m2100p(new b(this, bundle));
    }

    /* renamed from: B */
    public final void m2125B(String str, String str2, Bundle bundle) {
        m2100p(new c(this, str, str2, bundle));
    }

    /* renamed from: C */
    public final List<Bundle> m2124C(String str, String str2) {
        ta taVar = new ta();
        m2100p(new d(this, str, str2, taVar));
        List<Bundle> list = (List) ta.F(taVar.B(5000L), List.class);
        List<Bundle> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    /* renamed from: D */
    public final void m2123D(String str) {
        m2100p(new e(this, str));
    }

    /* renamed from: E */
    public final void m2122E(Activity activity, String str, String str2) {
        m2100p(new f(this, activity, str, str2));
    }

    /* renamed from: F */
    public final void m2121F(String str) {
        m2100p(new h(this, str));
    }

    /* renamed from: G */
    public final void m2120G(String str) {
        m2100p(new i(this, str));
    }

    /* renamed from: H */
    public final String m2119H() {
        ta taVar = new ta();
        m2100p(new j(this, taVar));
        return taVar.w(500L);
    }

    /* renamed from: I */
    public final String m2118I() {
        ta taVar = new ta();
        m2100p(new k(this, taVar));
        return taVar.w(50L);
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: J */
    public final long m2117J() {
        char c;
        ta taVar = new ta();
        m2100p(new l(this, taVar));
        Long l = (Long) ta.F(taVar.B(500L), Long.class);
        if (l == null) {
            long nextLong = new Random(System.nanoTime() ^ this.f3910b.m3166b()).nextLong();
            int i = this.f3914f + 1;
            this.f3914f = i;
            c = nextLong + i;
        } else {
            c = l.longValue();
        }
        return c;
    }

    /* renamed from: K */
    public final String m2116K() {
        ta taVar = new ta();
        m2100p(new m(this, taVar));
        return taVar.w(500L);
    }

    /* renamed from: a */
    public final String m2115a() {
        ta taVar = new ta();
        m2100p(new n(this, taVar));
        return taVar.w(500L);
    }

    /* renamed from: b */
    public final Map<String, Object> m2114b(String str, String str2, boolean z) {
        ta taVar = new ta();
        m2100p(new o(this, str, str2, z, taVar));
        Bundle B = taVar.B(5000L);
        if (B == null || B.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(B.size());
        for (String str3 : B.keySet()) {
            Object obj = B.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                hashMap.put(str3, obj);
            }
        }
        return hashMap;
    }

    /* renamed from: c */
    public final void m2113c(int i, String str, Object obj, Object obj2, Object obj3) {
        m2100p(new p(this, false, 5, str, obj, (Object) null, (Object) null));
    }

    /* renamed from: d */
    public final int m2112d(String str) {
        ta taVar = new ta();
        m2100p(new r(this, str, taVar));
        Integer num = (Integer) ta.F(taVar.B(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    /* renamed from: e */
    public final void m2111e(boolean z) {
        m2100p(new s(this, z));
    }

    /* renamed from: u */
    public final C1468a m2095u() {
        return this.f3912d;
    }

    /* renamed from: v */
    protected final AbstractC1386sc m2094v(Context context, boolean z) {
        try {
            return rc.asInterface(DynamiteModule.m3066e(context, z ? DynamiteModule.f3636l : DynamiteModule.f3634j, ModuleDescriptor.MODULE_ID).m3067d("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.LoadingException e) {
            m2099q(e, true, false);
            return null;
        }
    }

    /* renamed from: w */
    public final void m2093w(AbstractC1593t5 abstractC1593t5) {
        C0931r.m3308k(abstractC1593t5);
        synchronized (this.f3913e) {
            for (int i = 0; i < this.f3913e.size(); i++) {
                if (abstractC1593t5.equals(this.f3913e.get(i).first)) {
                    Log.w(this.f3909a, "OnEventListener already registered.");
                    return;
                }
            }
            AbstractC1417yc yVar = new y(abstractC1593t5);
            this.f3913e.add(new Pair<>(abstractC1593t5, yVar));
            if (this.f3916h != null) {
                try {
                    this.f3916h.registerOnMeasurementEventListener(yVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException e) {
                    Log.w(this.f3909a, "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            m2100p(new u(this, yVar));
        }
    }

    /* renamed from: x */
    public final void m2092x(String str, Bundle bundle) {
        m2098r(null, str, bundle, false, true, null);
    }

    /* renamed from: y */
    public final void m2091y(String str, String str2, Bundle bundle) {
        m2098r(str, str2, bundle, true, true, null);
    }

    /* renamed from: z */
    public final void m2090z(String str, String str2, Object obj, boolean z) {
        m2100p(new w(this, str, str2, obj, z));
    }
}
