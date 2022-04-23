package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.reflect.Method;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatv.class */
public final class zzatv {

    /* renamed from: a */
    private final AtomicReference<ThreadPoolExecutor> f11373a = new AtomicReference<>(null);

    /* renamed from: b */
    private final Object f11374b = new Object();

    /* renamed from: c */
    private String f11375c = null;

    /* renamed from: d */
    private String f11376d = null;

    /* renamed from: e */
    private final AtomicBoolean f11377e = new AtomicBoolean(false);

    /* renamed from: f */
    private final AtomicInteger f11378f = new AtomicInteger(-1);

    /* renamed from: g */
    private final AtomicReference<Object> f11379g = new AtomicReference<>(null);

    /* renamed from: h */
    private final AtomicReference<Object> f11380h = new AtomicReference<>(null);

    /* renamed from: i */
    private final ConcurrentMap<String, Method> f11381i = new ConcurrentHashMap(9);

    /* renamed from: j */
    private final AtomicReference<zzbfq> f11382j = new AtomicReference<>(null);

    /* renamed from: k */
    private final BlockingQueue<FutureTask<?>> f11383k = new ArrayBlockingQueue(20);

    /* renamed from: l */
    private final Object f11384l = new Object();

    /* renamed from: a */
    private static Bundle m4278a(String str, String str2) {
        Bundle bundle = new Bundle();
        try {
            bundle.putLong("_aeid", Long.parseLong(str));
        } catch (NullPointerException | NumberFormatException e) {
            String valueOf = String.valueOf(str);
            zzavs.zzc(valueOf.length() != 0 ? "Invalid event ID: ".concat(valueOf) : new String("Invalid event ID: "), e);
        }
        if ("_ac".equals(str2)) {
            bundle.putInt("_r", 1);
        }
        return bundle;
    }

    /* renamed from: a */
    private final Object m4281a(String str, Context context) {
        if (!m4283a(context, "com.google.android.gms.measurement.AppMeasurement", this.f11379g, true)) {
            return null;
        }
        try {
            return m4274b(context, str).invoke(this.f11379g.get(), new Object[0]);
        } catch (Exception e) {
            m4277a(str, true);
            return null;
        }
    }

    /* renamed from: a */
    private final <T> T m4279a(String str, T t, AbstractC1842eg<T> egVar) {
        synchronized (this.f11382j) {
            if (this.f11382j.get() != null) {
                try {
                    return egVar.mo4734a(this.f11382j.get());
                } catch (Exception e) {
                    m4277a(str, false);
                }
            }
            return t;
        }
    }

    /* renamed from: a */
    private final Method m4286a(Context context, String str) {
        Method method = this.f11381i.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, String.class);
            this.f11381i.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            m4277a(str, false);
            return null;
        }
    }

    /* renamed from: a */
    private final void m4285a(Context context, String str, String str2) {
        if (m4283a(context, "com.google.android.gms.measurement.AppMeasurement", this.f11379g, true)) {
            try {
                m4286a(context, str2).invoke(this.f11379g.get(), str);
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 37 + String.valueOf(str).length());
                sb.append("Invoke Firebase method ");
                sb.append(str2);
                sb.append(", Ad Unit Id: ");
                sb.append(str);
                zzavs.zzed(sb.toString());
            } catch (Exception e) {
                m4277a(str2, false);
            }
        }
    }

    /* renamed from: a */
    private final void m4284a(Context context, final String str, String str2, Bundle bundle) {
        if (zzab(context)) {
            final Bundle a = m4278a(str2, str);
            if (bundle != null) {
                a.putAll(bundle);
            }
            if (m4275b(context)) {
                m4280a("logEventInternal", new AbstractC1844ei(str, a) { // from class: com.google.android.gms.internal.ads.du

                    /* renamed from: a */
                    private final String f8402a;

                    /* renamed from: b */
                    private final Bundle f8403b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8402a = str;
                        this.f8403b = a;
                    }

                    @Override // com.google.android.gms.internal.ads.AbstractC1844ei
                    /* renamed from: a */
                    public final void mo4733a(zzbfq zzbfqVar) {
                        zzbfqVar.logEvent("am", this.f8402a, this.f8403b);
                    }
                });
            } else if (m4283a(context, "com.google.android.gms.measurement.AppMeasurement", this.f11379g, true)) {
                try {
                    m4273c(context).invoke(this.f11379g.get(), "am", str, a);
                } catch (Exception e) {
                    m4277a("logEventInternal", true);
                }
            }
        }
    }

    /* renamed from: a */
    private final void m4280a(final String str, final AbstractC1844ei eiVar) {
        synchronized (this.f11382j) {
            FutureTask<?> futureTask = new FutureTask<>(new Runnable(this, eiVar, str) { // from class: com.google.android.gms.internal.ads.dx

                /* renamed from: a */
                private final zzatv f8406a;

                /* renamed from: b */
                private final AbstractC1844ei f8407b;

                /* renamed from: c */
                private final String f8408c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8406a = this;
                    this.f8407b = eiVar;
                    this.f8408c = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f8406a.m4282a(this.f8407b, this.f8408c);
                }
            }, null);
            if (this.f11382j.get() != null) {
                futureTask.run();
            } else {
                this.f11383k.offer(futureTask);
            }
        }
    }

    /* renamed from: a */
    private final void m4277a(String str, boolean z) {
        if (!this.f11377e.get()) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 30);
            sb.append("Invoke Firebase method ");
            sb.append(str);
            sb.append(" error.");
            zzavs.zzez(sb.toString());
            if (z) {
                zzavs.zzez("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
                this.f11377e.set(true);
            }
        }
    }

    /* renamed from: a */
    private final boolean m4283a(Context context, String str, AtomicReference<Object> atomicReference, boolean z) {
        if (atomicReference.get() != null) {
            return true;
        }
        try {
            atomicReference.compareAndSet(null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
            return true;
        } catch (Exception e) {
            m4277a("getInstance", z);
            return false;
        }
    }

    /* renamed from: b */
    private final Method m4274b(Context context, String str) {
        Method method = this.f11381i.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            this.f11381i.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            m4277a(str, false);
            return null;
        }
    }

    /* renamed from: b */
    private final ThreadPoolExecutor m4276b() {
        if (this.f11373a.get() == null) {
            this.f11373a.compareAndSet(null, new ThreadPoolExecutor(((Integer) zzve.zzoy().zzd(zzzn.zzcif)).intValue(), ((Integer) zzve.zzoy().zzd(zzzn.zzcif)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new ThreadFactoryC1843eh()));
        }
        return this.f11373a.get();
    }

    /* renamed from: b */
    private static boolean m4275b(Context context) {
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcih)).booleanValue()) {
            if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcig)).booleanValue()) {
                return false;
            }
        }
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcii)).booleanValue()) {
            return true;
        }
        try {
            context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            return false;
        } catch (ClassNotFoundException e) {
            return true;
        }
    }

    /* renamed from: c */
    private final Method m4273c(Context context) {
        Method method = this.f11381i.get("logEventInternal");
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
            this.f11381i.put("logEventInternal", declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            m4277a("logEventInternal", true);
            return null;
        }
    }

    /* renamed from: c */
    private final Method m4272c(Context context, String str) {
        Method method = this.f11381i.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod(str, Activity.class, String.class, String.class);
            this.f11381i.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            m4277a(str, false);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ String m4288a() {
        return (String) m4279a("getAppInstanceId", (String) null, C1831dw.f8405a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ String m4287a(Context context) {
        return (String) m4281a("getAppInstanceId", context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4282a(AbstractC1844ei eiVar, String str) {
        if (this.f11382j.get() != null) {
            try {
                eiVar.mo4733a(this.f11382j.get());
            } catch (Exception e) {
                m4277a(str, false);
            }
        }
    }

    public final void zza(Context context, zzug zzugVar) {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcim)).booleanValue() && zzab(context) && m4275b(context)) {
            synchronized (this.f11384l) {
            }
        }
    }

    public final void zza(Context context, zzyq zzyqVar) {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcim)).booleanValue() && zzab(context) && m4275b(context)) {
            synchronized (this.f11384l) {
            }
        }
    }

    public final void zza(Context context, String str, String str2, String str3, int i) {
        if (zzab(context)) {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str2);
            bundle.putString("reward_type", str3);
            bundle.putInt("reward_value", i);
            m4284a(context, "_ar", str, bundle);
            StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 75);
            sb.append("Log a Firebase reward video event, reward type: ");
            sb.append(str3);
            sb.append(", reward value: ");
            sb.append(i);
            zzavs.zzed(sb.toString());
        }
    }

    public final boolean zzab(Context context) {
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzchz)).booleanValue() || this.f11377e.get()) {
            return false;
        }
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcij)).booleanValue()) {
            return true;
        }
        if (this.f11378f.get() == -1) {
            zzve.zzou();
            if (!zzayk.zzc(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE)) {
                zzve.zzou();
                if (zzayk.zzbk(context)) {
                    zzavs.zzez("Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service.");
                    this.f11378f.set(0);
                }
            }
            this.f11378f.set(1);
        }
        return this.f11378f.get() == 1;
    }

    public final String zzad(Context context) {
        if (!zzab(context)) {
            return "";
        }
        if (m4275b(context)) {
            return (String) m4279a("getCurrentScreenNameOrScreenClass", "", C1833dy.f8409a);
        }
        if (!m4283a(context, "com.google.android.gms.measurement.AppMeasurement", this.f11379g, true)) {
            return "";
        }
        try {
            String str = (String) m4274b(context, "getCurrentScreenName").invoke(this.f11379g.get(), new Object[0]);
            String str2 = str;
            if (str == null) {
                str2 = (String) m4274b(context, "getCurrentScreenClass").invoke(this.f11379g.get(), new Object[0]);
            }
            return str2 != null ? str2 : "";
        } catch (Exception e) {
            m4277a("getCurrentScreenName", false);
            return "";
        }
    }

    public final String zzae(Context context) {
        if (!zzab(context)) {
            return null;
        }
        synchronized (this.f11374b) {
            if (this.f11375c != null) {
                return this.f11375c;
            }
            this.f11375c = m4275b(context) ? (String) m4279a("getGmpAppId", this.f11375c, C1836ea.f8412a) : (String) m4281a("getGmpAppId", context);
            return this.f11375c;
        }
    }

    public final String zzaf(final Context context) {
        if (!zzab(context)) {
            return null;
        }
        long longValue = ((Long) zzve.zzoy().zzd(zzzn.zzcie)).longValue();
        if (m4275b(context)) {
            try {
                return longValue < 0 ? (String) m4279a("getAppInstanceId", (String) null, C1839ed.f8416a) : (String) m4276b().submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.ec

                    /* renamed from: a */
                    private final zzatv f8415a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8415a = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f8415a.m4288a();
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException e) {
                return "TIME_OUT";
            } catch (Exception e2) {
                return null;
            }
        } else if (longValue < 0) {
            return (String) m4281a("getAppInstanceId", context);
        } else {
            try {
                return (String) m4276b().submit(new Callable(this, context) { // from class: com.google.android.gms.internal.ads.ef

                    /* renamed from: a */
                    private final zzatv f8418a;

                    /* renamed from: b */
                    private final Context f8419b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8418a = this;
                        this.f8419b = context;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f8418a.m4287a(this.f8419b);
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException e3) {
                return "TIME_OUT";
            } catch (Exception e4) {
                return null;
            }
        }
    }

    public final String zzag(Context context) {
        if (!zzab(context)) {
            return null;
        }
        if (m4275b(context)) {
            Long l = (Long) m4279a("getAdEventId", (String) null, C1840ee.f8417a);
            if (l != null) {
                return Long.toString(l.longValue());
            }
            return null;
        }
        Object a = m4281a("generateEventId", context);
        if (a != null) {
            return a.toString();
        }
        return null;
    }

    public final String zzah(Context context) {
        if (!zzab(context)) {
            return null;
        }
        synchronized (this.f11374b) {
            if (this.f11376d != null) {
                return this.f11376d;
            }
            this.f11376d = m4275b(context) ? (String) m4279a("getAppIdOrigin", this.f11376d, C1830dv.f8404a) : "fa";
            return this.f11376d;
        }
    }

    public final void zze(Context context, final String str) {
        if (zzab(context)) {
            if (m4275b(context)) {
                m4280a("beginAdUnitExposure", new AbstractC1844ei(str) { // from class: com.google.android.gms.internal.ads.dt

                    /* renamed from: a */
                    private final String f8401a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8401a = str;
                    }

                    @Override // com.google.android.gms.internal.ads.AbstractC1844ei
                    /* renamed from: a */
                    public final void mo4733a(zzbfq zzbfqVar) {
                        zzbfqVar.beginAdUnitExposure(this.f8401a);
                    }
                });
            } else {
                m4285a(context, str, "beginAdUnitExposure");
            }
        }
    }

    public final void zzf(Context context, final String str) {
        if (zzab(context)) {
            if (m4275b(context)) {
                m4280a("endAdUnitExposure", new AbstractC1844ei(str) { // from class: com.google.android.gms.internal.ads.dz

                    /* renamed from: a */
                    private final String f8410a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8410a = str;
                    }

                    @Override // com.google.android.gms.internal.ads.AbstractC1844ei
                    /* renamed from: a */
                    public final void mo4733a(zzbfq zzbfqVar) {
                        zzbfqVar.endAdUnitExposure(this.f8410a);
                    }
                });
            } else {
                m4285a(context, str, "endAdUnitExposure");
            }
        }
    }

    public final void zzg(final Context context, final String str) {
        if (!zzab(context) || !(context instanceof Activity)) {
            return;
        }
        if (m4275b(context)) {
            m4280a("setScreenName", new AbstractC1844ei(context, str) { // from class: com.google.android.gms.internal.ads.eb

                /* renamed from: a */
                private final Context f8413a;

                /* renamed from: b */
                private final String f8414b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8413a = context;
                    this.f8414b = str;
                }

                @Override // com.google.android.gms.internal.ads.AbstractC1844ei
                /* renamed from: a */
                public final void mo4733a(zzbfq zzbfqVar) {
                    Context context2 = this.f8413a;
                    zzbfqVar.zzb(ObjectWrapper.wrap(context2), this.f8414b, context2.getPackageName());
                }
            });
        } else if (m4283a(context, "com.google.firebase.analytics.FirebaseAnalytics", this.f11380h, false)) {
            try {
                m4272c(context, "setCurrentScreen").invoke(this.f11380h.get(), (Activity) context, str, context.getPackageName());
            } catch (Exception e) {
                m4277a("setCurrentScreen", false);
            }
        }
    }

    public final void zzh(Context context, String str) {
        m4284a(context, "_ac", str, (Bundle) null);
    }

    public final void zzi(Context context, String str) {
        m4284a(context, "_ai", str, (Bundle) null);
    }

    public final void zzj(Context context, String str) {
        m4284a(context, "_aq", str, (Bundle) null);
    }

    public final void zzk(Context context, String str) {
        m4284a(context, "_aa", str, (Bundle) null);
    }
}
