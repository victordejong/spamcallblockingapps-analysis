package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzawo;
import com.google.android.gms.internal.ads.zzbiq;
import java.lang.reflect.Method;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p131c.p161d.p170b.p224d.p252g.p253a.AbstractC4054t4;
import p131c.p161d.p170b.p224d.p252g.p253a.AbstractC4091u4;
import p131c.p161d.p170b.p224d.p252g.p253a.C3495e4;
import p131c.p161d.p170b.p224d.p252g.p253a.C3681j4;
import p131c.p161d.p170b.p224d.p252g.p253a.C3755l4;
import p131c.p161d.p170b.p224d.p252g.p253a.C3792m4;
import p131c.p161d.p170b.p224d.p252g.p253a.C3829n4;
import p131c.p161d.p170b.p224d.p252g.p253a.C4017s4;
import p131c.p161d.p170b.p224d.p252g.p253a.ThreadFactoryC3980r4;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawo.class */
public final class zzawo {

    /* renamed from: a */
    public final AtomicReference<ExecutorService> f24570a = new AtomicReference<>(null);

    /* renamed from: b */
    public final Object f24571b = new Object();

    /* renamed from: c */
    public String f24572c = null;

    /* renamed from: d */
    public String f24573d = null;
    @VisibleForTesting

    /* renamed from: e */
    public final AtomicBoolean f24574e = new AtomicBoolean(false);

    /* renamed from: f */
    public final AtomicInteger f24575f = new AtomicInteger(-1);

    /* renamed from: g */
    public final AtomicReference<Object> f24576g = new AtomicReference<>(null);

    /* renamed from: h */
    public final AtomicReference<Object> f24577h = new AtomicReference<>(null);

    /* renamed from: i */
    public final ConcurrentMap<String, Method> f24578i = new ConcurrentHashMap(9);

    /* renamed from: j */
    public final AtomicReference<zzbiq> f24579j = new AtomicReference<>(null);

    /* renamed from: k */
    public final BlockingQueue<FutureTask<?>> f24580k = new ArrayBlockingQueue(20);

    /* renamed from: l */
    public final Object f24581l = new Object();

    /* renamed from: a */
    public static Bundle m16244a(String str, String str2) {
        Bundle bundle = new Bundle();
        try {
            bundle.putLong("_aeid", Long.parseLong(str));
        } catch (NullPointerException | NumberFormatException e) {
            String valueOf = String.valueOf(str);
            zzbbq.m15855b(valueOf.length() != 0 ? "Invalid event ID: ".concat(valueOf) : new String("Invalid event ID: "), e);
        }
        if ("_ac".equals(str2)) {
            bundle.putInt("_r", 1);
        }
        return bundle;
    }

    @VisibleForTesting
    /* renamed from: i */
    public static boolean m16226i(Context context) {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23768Y)).booleanValue()) {
            return false;
        }
        if (DynamiteModule.m16992a(context, ModuleDescriptor.MODULE_ID) < ((Integer) zzwm.m11166e().m16921a(zzabb.f23773Z)).intValue()) {
            return false;
        }
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23779a0)).booleanValue()) {
            return true;
        }
        try {
            context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            return false;
        } catch (ClassNotFoundException e) {
            return true;
        }
    }

    /* renamed from: a */
    public final Object m16247a(String str, Context context) {
        if (!m16249a(context, "com.google.android.gms.measurement.AppMeasurement", this.f24576g, true)) {
            return null;
        }
        try {
            return m16225i(context, str).invoke(this.f24576g.get(), new Object[0]);
        } catch (Exception e) {
            m16243a(str, true);
            return null;
        }
    }

    /* renamed from: a */
    public final <T> T m16245a(String str, T t, AbstractC4091u4<T> u4Var) {
        synchronized (this.f24579j) {
            if (this.f24579j.get() != null) {
                try {
                    return u4Var.mo26308a(this.f24579j.get());
                } catch (Exception e) {
                    m16243a(str, false);
                }
            }
            return t;
        }
    }

    /* renamed from: a */
    public final ExecutorService m16257a() {
        ExecutorService executorService;
        if (this.f24570a.get() == null) {
            if (ClientLibraryUtils.m17107a()) {
                executorService = zzdvg.m13110a().mo13115b(((Integer) zzwm.m11166e().m16921a(zzabb.f23763X)).intValue(), m16242b(), zzdvl.f27899b);
            } else {
                executorService = new ThreadPoolExecutor(((Integer) zzwm.m11166e().m16921a(zzabb.f23763X)).intValue(), ((Integer) zzwm.m11166e().m16921a(zzabb.f23763X)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), m16242b());
            }
            this.f24570a.compareAndSet(null, executorService);
        }
        return this.f24570a.get();
    }

    /* renamed from: a */
    public final void m16255a(Context context, zzaae zzaaeVar) {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23803e0)).booleanValue() && m16256a(context) && m16226i(context)) {
            synchronized (this.f24581l) {
            }
        }
    }

    /* renamed from: a */
    public final void m16254a(Context context, zzvg zzvgVar) {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23803e0)).booleanValue() && m16256a(context) && m16226i(context)) {
            synchronized (this.f24581l) {
            }
        }
    }

    /* renamed from: a */
    public final void m16253a(Context context, final String str) {
        if (m16256a(context)) {
            if (m16226i(context)) {
                m16246a("beginAdUnitExposure", new AbstractC4054t4(str) { // from class: c.d.b.d.g.a.f4

                    /* renamed from: a */
                    public final String f12876a;

                    {
                        this.f12876a = str;
                    }

                    @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC4054t4
                    /* renamed from: a */
                    public final void mo26329a(zzbiq zzbiqVar) {
                        zzbiqVar.mo15436z(this.f12876a);
                    }
                });
            } else {
                m16252a(context, str, "beginAdUnitExposure");
            }
        }
    }

    /* renamed from: a */
    public final void m16252a(Context context, String str, String str2) {
        if (m16249a(context, "com.google.android.gms.measurement.AppMeasurement", this.f24576g, true)) {
            try {
                m16227h(context, str2).invoke(this.f24576g.get(), str);
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 37 + String.valueOf(str).length());
                sb.append("Invoke Firebase method ");
                sb.append(str2);
                sb.append(", Ad Unit Id: ");
                sb.append(str);
                zzayp.m16153g(sb.toString());
            } catch (Exception e) {
                m16243a(str2, false);
            }
        }
    }

    /* renamed from: a */
    public final void m16251a(Context context, final String str, String str2, Bundle bundle) {
        if (m16256a(context)) {
            final Bundle a = m16244a(str2, str);
            if (bundle != null) {
                a.putAll(bundle);
            }
            if (m16226i(context)) {
                m16246a("logEventInternal", new AbstractC4054t4(str, a) { // from class: c.d.b.d.g.a.h4

                    /* renamed from: a */
                    public final String f13237a;

                    /* renamed from: b */
                    public final Bundle f13238b;

                    {
                        this.f13237a = str;
                        this.f13238b = a;
                    }

                    @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC4054t4
                    /* renamed from: a */
                    public final void mo26329a(zzbiq zzbiqVar) {
                        zzbiqVar.mo15444b("am", this.f13237a, this.f13238b);
                    }
                });
            } else if (m16249a(context, "com.google.android.gms.measurement.AppMeasurement", this.f24576g, true)) {
                try {
                    m16230g(context).invoke(this.f24576g.get(), "am", str, a);
                } catch (Exception e) {
                    m16243a("logEventInternal", true);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m16250a(Context context, String str, String str2, String str3, int i) {
        if (m16256a(context)) {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str2);
            bundle.putString("reward_type", str3);
            bundle.putInt("reward_value", i);
            m16251a(context, "_ar", str, bundle);
            StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 75);
            sb.append("Log a Firebase reward video event, reward type: ");
            sb.append(str3);
            sb.append(", reward value: ");
            sb.append(i);
            zzayp.m16153g(sb.toString());
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m16248a(AbstractC4054t4 t4Var, String str) {
        if (this.f24579j.get() != null) {
            try {
                t4Var.mo26329a(this.f24579j.get());
            } catch (Exception e) {
                m16243a(str, false);
            }
        }
    }

    /* renamed from: a */
    public final void m16246a(final String str, final AbstractC4054t4 t4Var) {
        synchronized (this.f24579j) {
            FutureTask<?> futureTask = new FutureTask<>(new Runnable(this, t4Var, str) { // from class: c.d.b.d.g.a.g4

                /* renamed from: a */
                public final zzawo f13014a;

                /* renamed from: b */
                public final AbstractC4054t4 f13015b;

                /* renamed from: c */
                public final String f13016c;

                {
                    this.f13014a = this;
                    this.f13015b = t4Var;
                    this.f13016c = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f13014a.m16248a(this.f13015b, this.f13016c);
                }
            }, null);
            if (this.f24579j.get() != null) {
                futureTask.run();
            } else {
                this.f24580k.offer(futureTask);
            }
        }
    }

    /* renamed from: a */
    public final void m16243a(String str, boolean z) {
        if (!this.f24574e.get()) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 30);
            sb.append("Invoke Firebase method ");
            sb.append(str);
            sb.append(" error.");
            zzbbq.m15852d(sb.toString());
            if (z) {
                zzbbq.m15852d("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
                this.f24574e.set(true);
            }
        }
    }

    /* renamed from: a */
    public final boolean m16256a(Context context) {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23733R)).booleanValue() || this.f24574e.get()) {
            return false;
        }
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23785b0)).booleanValue()) {
            return true;
        }
        if (this.f24575f.get() == -1) {
            zzwm.m11170a();
            if (!zzbbg.m15892c(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE)) {
                zzwm.m11170a();
                if (zzbbg.m15893c(context)) {
                    zzbbq.m15852d("Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service.");
                    this.f24575f.set(0);
                }
            }
            this.f24575f.set(1);
        }
        return this.f24575f.get() == 1;
    }

    /* renamed from: a */
    public final boolean m16249a(Context context, String str, AtomicReference<Object> atomicReference, boolean z) {
        if (atomicReference.get() != null) {
            return true;
        }
        try {
            atomicReference.compareAndSet(null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
            return true;
        } catch (Exception e) {
            m16243a("getInstance", z);
            return false;
        }
    }

    /* renamed from: b */
    public final String m16241b(Context context) {
        if (!m16256a(context)) {
            return "";
        }
        if (m16226i(context)) {
            return (String) m16245a("getCurrentScreenNameOrScreenClass", "", C3755l4.f13930a);
        }
        if (!m16249a(context, "com.google.android.gms.measurement.AppMeasurement", this.f24576g, true)) {
            return "";
        }
        try {
            String str = (String) m16225i(context, "getCurrentScreenName").invoke(this.f24576g.get(), new Object[0]);
            String str2 = str;
            if (str == null) {
                str2 = (String) m16225i(context, "getCurrentScreenClass").invoke(this.f24576g.get(), new Object[0]);
            }
            return str2 != null ? str2 : "";
        } catch (Exception e) {
            m16243a("getCurrentScreenName", false);
            return "";
        }
    }

    /* renamed from: b */
    public final ThreadFactory m16242b() {
        return new ThreadFactoryC3980r4(this);
    }

    /* renamed from: b */
    public final void m16240b(Context context, final String str) {
        if (m16256a(context)) {
            if (m16226i(context)) {
                m16246a("endAdUnitExposure", new AbstractC4054t4(str) { // from class: c.d.b.d.g.a.i4

                    /* renamed from: a */
                    public final String f13489a;

                    {
                        this.f13489a = str;
                    }

                    @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC4054t4
                    /* renamed from: a */
                    public final void mo26329a(zzbiq zzbiqVar) {
                        zzbiqVar.mo15451B(this.f13489a);
                    }
                });
            } else {
                m16252a(context, str, "endAdUnitExposure");
            }
        }
    }

    /* renamed from: c */
    public final /* synthetic */ String m16239c() throws Exception {
        return (String) m16245a("getAppInstanceId", (String) null, C3681j4.f13582a);
    }

    /* renamed from: c */
    public final String m16238c(Context context) {
        if (!m16256a(context)) {
            return null;
        }
        synchronized (this.f24571b) {
            if (this.f24572c != null) {
                return this.f24572c;
            }
            if (m16226i(context)) {
                this.f24572c = (String) m16245a("getGmpAppId", this.f24572c, C3829n4.f14214a);
            } else {
                this.f24572c = (String) m16247a("getGmpAppId", context);
            }
            return this.f24572c;
        }
    }

    /* renamed from: c */
    public final void m16237c(final Context context, final String str) {
        if (!m16256a(context) || !(context instanceof Activity)) {
            return;
        }
        if (m16226i(context)) {
            m16246a("setScreenName", new AbstractC4054t4(context, str) { // from class: c.d.b.d.g.a.k4

                /* renamed from: a */
                public final Context f13834a;

                /* renamed from: b */
                public final String f13835b;

                {
                    this.f13834a = context;
                    this.f13835b = str;
                }

                @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC4054t4
                /* renamed from: a */
                public final void mo26329a(zzbiq zzbiqVar) {
                    Context context2 = this.f13834a;
                    zzbiqVar.mo15446b(ObjectWrapper.m17020a(context2), this.f13835b, context2.getPackageName());
                }
            });
        } else if (m16249a(context, "com.google.firebase.analytics.FirebaseAnalytics", this.f24577h, false)) {
            try {
                m16224j(context, "setCurrentScreen").invoke(this.f24577h.get(), (Activity) context, str, context.getPackageName());
            } catch (Exception e) {
                m16243a("setCurrentScreen", false);
            }
        }
    }

    /* renamed from: d */
    public final String m16236d(final Context context) {
        if (!m16256a(context)) {
            return null;
        }
        long longValue = ((Long) zzwm.m11166e().m16921a(zzabb.f23758W)).longValue();
        if (m16226i(context)) {
            try {
                return longValue < 0 ? (String) m16245a("getAppInstanceId", (String) null, C3792m4.f14015a) : (String) m16257a().submit(new Callable(this) { // from class: c.d.b.d.g.a.q4

                    /* renamed from: a */
                    public final zzawo f14586a;

                    {
                        this.f14586a = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f14586a.m16239c();
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException e) {
                return "TIME_OUT";
            } catch (Exception e2) {
                return null;
            }
        } else if (longValue < 0) {
            return (String) m16247a("getAppInstanceId", context);
        } else {
            try {
                return (String) m16257a().submit(new Callable(this, context) { // from class: c.d.b.d.g.a.p4

                    /* renamed from: a */
                    public final zzawo f14384a;

                    /* renamed from: b */
                    public final Context f14385b;

                    {
                        this.f14384a = this;
                        this.f14385b = context;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f14384a.m16228h(this.f14385b);
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException e3) {
                return "TIME_OUT";
            } catch (Exception e4) {
                return null;
            }
        }
    }

    /* renamed from: d */
    public final void m16235d(Context context, String str) {
        m16251a(context, "_ac", str, (Bundle) null);
    }

    /* renamed from: e */
    public final String m16234e(Context context) {
        if (!m16256a(context)) {
            return null;
        }
        if (m16226i(context)) {
            Long l = (Long) m16245a("getAdEventId", (String) null, C4017s4.f15069a);
            if (l != null) {
                return Long.toString(l.longValue());
            }
            return null;
        }
        Object a = m16247a("generateEventId", context);
        if (a != null) {
            return a.toString();
        }
        return null;
    }

    /* renamed from: e */
    public final void m16233e(Context context, String str) {
        m16251a(context, "_ai", str, (Bundle) null);
    }

    /* renamed from: f */
    public final String m16232f(Context context) {
        if (!m16256a(context)) {
            return null;
        }
        synchronized (this.f24571b) {
            if (this.f24573d != null) {
                return this.f24573d;
            }
            if (m16226i(context)) {
                this.f24573d = (String) m16245a("getAppIdOrigin", this.f24573d, C3495e4.f12798a);
            } else {
                this.f24573d = "fa";
            }
            return this.f24573d;
        }
    }

    /* renamed from: f */
    public final void m16231f(Context context, String str) {
        m16251a(context, "_aq", str, (Bundle) null);
    }

    /* renamed from: g */
    public final Method m16230g(Context context) {
        Method method = this.f24578i.get("logEventInternal");
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
            this.f24578i.put("logEventInternal", declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            m16243a("logEventInternal", true);
            return null;
        }
    }

    /* renamed from: g */
    public final void m16229g(Context context, String str) {
        m16251a(context, "_aa", str, (Bundle) null);
    }

    /* renamed from: h */
    public final /* synthetic */ String m16228h(Context context) throws Exception {
        return (String) m16247a("getAppInstanceId", context);
    }

    /* renamed from: h */
    public final Method m16227h(Context context, String str) {
        Method method = this.f24578i.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, String.class);
            this.f24578i.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            m16243a(str, false);
            return null;
        }
    }

    /* renamed from: i */
    public final Method m16225i(Context context, String str) {
        Method method = this.f24578i.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            this.f24578i.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            m16243a(str, false);
            return null;
        }
    }

    /* renamed from: j */
    public final Method m16224j(Context context, String str) {
        Method method = this.f24578i.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod(str, Activity.class, String.class, String.class);
            this.f24578i.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            m16243a(str, false);
            return null;
        }
    }
}
