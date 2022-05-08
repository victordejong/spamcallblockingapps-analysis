package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.internal.GoogleServices;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzgz;
import com.google.android.gms.measurement.internal.zzha;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzx.class */
public class zzx {

    /* renamed from: b */
    private static volatile zzx f16510b;

    /* renamed from: h */
    private static Boolean f16511h;

    /* renamed from: i */
    private static Boolean f16512i;

    /* renamed from: j */
    private static boolean f16513j = false;

    /* renamed from: k */
    private static Boolean f16514k;

    /* renamed from: l */
    private static String f16515l = "use_dynamite_api";

    /* renamed from: m */
    private static String f16516m = "allow_remote_dynamite";

    /* renamed from: n */
    private static boolean f16517n = false;

    /* renamed from: o */
    private static boolean f16518o = false;

    /* renamed from: a */
    protected final Clock f16519a;

    /* renamed from: c */
    private final String f16520c;

    /* renamed from: d */
    private final ExecutorService f16521d;

    /* renamed from: e */
    private final AppMeasurementSdk f16522e;

    /* renamed from: f */
    private List<Pair<zzgz, BinderC2632b>> f16523f;

    /* renamed from: g */
    private int f16524g;

    /* renamed from: p */
    private boolean f16525p;

    /* renamed from: q */
    private String f16526q;

    /* renamed from: r */
    private zzm f16527r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.measurement.zzx$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzx$a.class */
    public abstract class AbstractRunnableC2631a implements Runnable {

        /* renamed from: a */
        final long f16528a;

        /* renamed from: b */
        final long f16529b;

        /* renamed from: c */
        private final boolean f16530c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractRunnableC2631a(zzx zzxVar) {
            this(true);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractRunnableC2631a(boolean z) {
            this.f16528a = zzx.this.f16519a.currentTimeMillis();
            this.f16529b = zzx.this.f16519a.elapsedRealtime();
            this.f16530c = z;
        }

        /* renamed from: a */
        abstract void mo2218a();

        /* renamed from: b */
        protected void mo2217b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (zzx.this.f16525p) {
                mo2217b();
                return;
            }
            try {
                mo2218a();
            } catch (Exception e) {
                zzx.this.m2231a(e, false, this.f16530c);
                mo2217b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.measurement.zzx$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzx$b.class */
    public static final class BinderC2632b extends zzr {

        /* renamed from: a */
        private final zzgz f16532a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public BinderC2632b(zzgz zzgzVar) {
            this.f16532a = zzgzVar;
        }

        @Override // com.google.android.gms.internal.measurement.zzs
        public final int zza() {
            return System.identityHashCode(this.f16532a);
        }

        @Override // com.google.android.gms.internal.measurement.zzs
        public final void zza(String str, String str2, Bundle bundle, long j) {
            this.f16532a.onEvent(str, str2, bundle, j);
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.zzx$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzx$c.class */
    static final class BinderC2633c extends zzr {

        /* renamed from: a */
        private final zzha f16533a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public BinderC2633c(zzha zzhaVar) {
            this.f16533a = zzhaVar;
        }

        @Override // com.google.android.gms.internal.measurement.zzs
        public final int zza() {
            return System.identityHashCode(this.f16533a);
        }

        @Override // com.google.android.gms.internal.measurement.zzs
        public final void zza(String str, String str2, Bundle bundle, long j) {
            this.f16533a.interceptEvent(str, str2, bundle, j);
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.zzx$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzx$d.class */
    final class C2634d implements Application.ActivityLifecycleCallbacks {
        C2634d() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            zzx.this.m2237a(new C2467ac(this, activity, bundle));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            zzx.this.m2237a(new C2472ah(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            zzx.this.m2237a(new C2471ag(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            zzx.this.m2237a(new C2468ad(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            zzk zzkVar = new zzk();
            zzx.this.m2237a(new C2473ai(this, activity, zzkVar));
            Bundle zzb = zzkVar.zzb(50L);
            if (zzb != null) {
                bundle.putAll(zzb);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            zzx.this.m2237a(new C2469ae(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            zzx.this.m2237a(new C2470af(this, activity));
        }
    }

    private zzx(Context context, String str, String str2, String str3, Bundle bundle) {
        this.f16520c = (str == null || !m2224b(str2, str3)) ? "FA" : str;
        this.f16519a = DefaultClock.getInstance();
        this.f16521d = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        this.f16522e = new AppMeasurementSdk(this);
        boolean z = false;
        if (!(!m2221d(context) || m2227b())) {
            this.f16526q = null;
            this.f16525p = true;
            Log.w(this.f16520c, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
            return;
        }
        if (!m2224b(str2, str3)) {
            this.f16526q = "fa";
            if (str2 == null || str3 == null) {
                if ((str2 == null) ^ (str3 == null ? true : z)) {
                    Log.w(this.f16520c, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            } else {
                Log.v(this.f16520c, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy");
                this.f16525p = true;
                return;
            }
        } else {
            this.f16526q = str2;
        }
        m2237a(new C2464a(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.f16520c, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new C2634d());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m2237a(AbstractRunnableC2631a aVar) {
        this.f16521d.execute(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m2231a(Exception exc, boolean z, boolean z2) {
        String str;
        String str2;
        this.f16525p |= z;
        if (z) {
            str2 = this.f16520c;
            str = "Data collection startup failed. No data will be collected.";
        } else {
            str = "Error with data collection. Data lost.";
            if (z2) {
                zza(5, "Error with data collection. Data lost.", exc, (Object) null, (Object) null);
            }
            str2 = this.f16520c;
        }
        Log.w(str2, str, exc);
    }

    /* renamed from: a */
    private final void m2229a(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l) {
        m2237a(new C2465aa(this, l, str, str2, bundle, z, z2));
    }

    /* renamed from: a */
    private final void m2228a(String str, String str2, Object obj, boolean z) {
        m2237a(new C2627z(this, str, str2, obj, z));
    }

    /* renamed from: a */
    private static boolean m2239a(Context context, String str) {
        Preconditions.checkNotEmpty(str);
        try {
            ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128);
            if (!(applicationInfo == null || applicationInfo.metaData == null)) {
                return applicationInfo.metaData.getBoolean(str);
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* renamed from: b */
    private static boolean m2227b() {
        try {
            Class.forName("com.google.firebase.analytics.FirebaseAnalytics");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static boolean m2224b(String str, String str2) {
        return (str2 == null || str == null || m2227b()) ? false : true;
    }

    /* renamed from: d */
    private static boolean m2221d(Context context) {
        try {
            GoogleServices.initialize(context);
            return GoogleServices.getGoogleAppId() != null;
        } catch (IllegalStateException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static void m2219e(Context context) {
        synchronized (zzx.class) {
            try {
                try {
                } catch (Exception e) {
                    Log.e("FA", "Exception reading flag from SharedPreferences.", e);
                    f16511h = Boolean.FALSE;
                    f16512i = Boolean.FALSE;
                }
                if (f16511h != null && f16512i != null) {
                    return;
                }
                if (m2239a(context, "app_measurement_internal_disable_startup_flags")) {
                    f16511h = Boolean.FALSE;
                    f16512i = Boolean.FALSE;
                    return;
                }
                SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
                f16511h = Boolean.valueOf(sharedPreferences.getBoolean(f16515l, false));
                f16512i = Boolean.valueOf(sharedPreferences.getBoolean(f16516m, false));
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.remove(f16515l);
                edit.remove(f16516m);
                edit.apply();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static zzx zza(Context context) {
        return zza(context, (String) null, (String) null, (String) null, (Bundle) null);
    }

    public static zzx zza(Context context, String str, String str2, String str3, Bundle bundle) {
        Preconditions.checkNotNull(context);
        if (f16510b == null) {
            synchronized (zzx.class) {
                try {
                    if (f16510b == null) {
                        f16510b = new zzx(context, str, str2, str3, bundle);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16510b;
    }

    public static boolean zzb(Context context) {
        String str;
        Boolean bool;
        m2219e(context);
        synchronized (zzx.class) {
            try {
                if (!f16513j) {
                    try {
                        str = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, "measurement.dynamite.enabled", "");
                    } catch (Exception e) {
                        Log.e("FA", "Unable to call SystemProperties.get()", e);
                        f16514k = null;
                    }
                    if ("true".equals(str)) {
                        bool = Boolean.TRUE;
                    } else if ("false".equals(str)) {
                        bool = Boolean.FALSE;
                    } else {
                        f16514k = null;
                        f16513j = true;
                    }
                    f16514k = bool;
                    f16513j = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Boolean bool2 = f16514k;
        Boolean bool3 = bool2;
        if (bool2 == null) {
            bool3 = f16511h;
        }
        return bool3.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final zzm m2238a(Context context, boolean z) {
        try {
            return zzl.asInterface(DynamiteModule.load(context, z ? DynamiteModule.PREFER_HIGHEST_OR_REMOTE_VERSION : DynamiteModule.PREFER_LOCAL, ModuleDescriptor.MODULE_ID).instantiate("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.LoadingException e) {
            m2231a(e, true, false);
            return null;
        }
    }

    public final Bundle zza(Bundle bundle, boolean z) {
        zzk zzkVar = new zzk();
        m2237a(new C2619r(this, bundle, zzkVar));
        if (z) {
            return zzkVar.zzb(5000L);
        }
        return null;
    }

    public final AppMeasurementSdk zza() {
        return this.f16522e;
    }

    public final Object zza(int i) {
        zzk zzkVar = new zzk();
        m2237a(new C2623v(this, zzkVar, i));
        return zzk.zza(zzkVar.zzb(15000L), Object.class);
    }

    public final Map<String, Object> zza(String str, String str2, boolean z) {
        zzk zzkVar = new zzk();
        m2237a(new C2617p(this, str, str2, z, zzkVar));
        Bundle zzb = zzkVar.zzb(5000L);
        if (zzb == null || zzb.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(zzb.size());
        for (String str3 : zzb.keySet()) {
            Object obj = zzb.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                hashMap.put(str3, obj);
            }
        }
        return hashMap;
    }

    public final void zza(int i, String str, Object obj, Object obj2, Object obj3) {
        m2237a(new C2620s(this, str, obj));
    }

    public final void zza(long j) {
        m2237a(new C2603f(this, j));
    }

    public final void zza(Activity activity, String str, String str2) {
        m2237a(new C2572e(this, activity, str, str2));
    }

    public final void zza(Bundle bundle) {
        m2237a(new C2466ab(this, bundle));
    }

    public final void zza(zzgz zzgzVar) {
        Preconditions.checkNotNull(zzgzVar);
        m2237a(new C2624w(this, zzgzVar));
    }

    public final void zza(zzha zzhaVar) {
        m2237a(new C2611j(this, zzhaVar));
    }

    public final void zza(String str) {
        m2237a(new C2491b(this, str));
    }

    public final void zza(String str, Bundle bundle) {
        m2229a(null, str, bundle, false, true, null);
    }

    public final void zza(String str, String str2) {
        m2228a((String) null, str, (Object) str2, false);
    }

    public final void zza(String str, String str2, Bundle bundle) {
        m2229a(str, str2, bundle, true, true, null);
    }

    public final void zza(String str, String str2, Bundle bundle, long j) {
        m2229a(str, str2, bundle, true, false, Long.valueOf(j));
    }

    public final void zza(String str, String str2, Object obj) {
        m2228a(str, str2, obj, true);
    }

    public final void zza(boolean z) {
        m2237a(new C2545d(this, z));
    }

    public final List<Bundle> zzb(String str, String str2) {
        zzk zzkVar = new zzk();
        m2237a(new C2518c(this, str, str2, zzkVar));
        List<Bundle> list = (List) zzk.zza(zzkVar.zzb(5000L), List.class);
        List<Bundle> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    public final void zzb() {
        m2237a(new C2608g(this));
    }

    public final void zzb(long j) {
        m2237a(new C2610i(this, j));
    }

    public final void zzb(zzgz zzgzVar) {
        Preconditions.checkNotNull(zzgzVar);
        m2237a(new C2625x(this, zzgzVar));
    }

    public final void zzb(String str) {
        m2237a(new C2609h(this, str));
    }

    public final void zzb(String str, String str2, Bundle bundle) {
        m2237a(new C2607fd(this, str, str2, bundle));
    }

    public final void zzb(boolean z) {
        m2237a(new C2626y(this, z));
    }

    public final String zzc() {
        zzk zzkVar = new zzk();
        m2237a(new C2614m(this, zzkVar));
        return zzkVar.zza(500L);
    }

    public final void zzc(String str) {
        m2237a(new C2612k(this, str));
    }

    public final int zzd(String str) {
        zzk zzkVar = new zzk();
        m2237a(new C2622u(this, str, zzkVar));
        Integer num = (Integer) zzk.zza(zzkVar.zzb(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final String zzd() {
        zzk zzkVar = new zzk();
        m2237a(new C2613l(this, zzkVar));
        return zzkVar.zza(50L);
    }

    public final long zze() {
        zzk zzkVar = new zzk();
        m2237a(new C2616o(this, zzkVar));
        Long l = (Long) zzk.zza(zzkVar.zzb(500L), Long.class);
        if (l != null) {
            return l.longValue();
        }
        long nextLong = new Random(System.nanoTime() ^ this.f16519a.currentTimeMillis()).nextLong();
        int i = this.f16524g + 1;
        this.f16524g = i;
        return nextLong + i;
    }

    public final String zzf() {
        zzk zzkVar = new zzk();
        m2237a(new C2615n(this, zzkVar));
        return zzkVar.zza(500L);
    }

    public final String zzg() {
        zzk zzkVar = new zzk();
        m2237a(new C2618q(this, zzkVar));
        return zzkVar.zza(500L);
    }

    public final String zzh() {
        zzk zzkVar = new zzk();
        m2237a(new C2621t(this, zzkVar));
        return zzkVar.zza(120000L);
    }

    public final String zzi() {
        return this.f16526q;
    }
}
