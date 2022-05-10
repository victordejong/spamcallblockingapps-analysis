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
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzgz;
import com.google.android.gms.measurement.internal.zzig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import p131c.p161d.p170b.p224d.p252g.p258f.C4453a;
import p131c.p161d.p170b.p224d.p252g.p258f.C4454a0;
import p131c.p161d.p170b.p224d.p252g.p258f.C4460b;
import p131c.p161d.p170b.p224d.p252g.p258f.C4461b0;
import p131c.p161d.p170b.p224d.p252g.p258f.C4467c;
import p131c.p161d.p170b.p224d.p252g.p258f.C4474d;
import p131c.p161d.p170b.p224d.p252g.p258f.C4481e;
import p131c.p161d.p170b.p224d.p252g.p258f.C4495g;
import p131c.p161d.p170b.p224d.p252g.p258f.C4502h;
import p131c.p161d.p170b.p224d.p252g.p258f.C4509i;
import p131c.p161d.p170b.p224d.p252g.p258f.C4516j;
import p131c.p161d.p170b.p224d.p252g.p258f.C4527k;
import p131c.p161d.p170b.p224d.p252g.p258f.C4534l;
import p131c.p161d.p170b.p224d.p252g.p258f.C4541m;
import p131c.p161d.p170b.p224d.p252g.p258f.C4548n;
import p131c.p161d.p170b.p224d.p252g.p258f.C4555o;
import p131c.p161d.p170b.p224d.p252g.p258f.C4562p;
import p131c.p161d.p170b.p224d.p252g.p258f.C4569q;
import p131c.p161d.p170b.p224d.p252g.p258f.C4576r;
import p131c.p161d.p170b.p224d.p252g.p258f.C4583s;
import p131c.p161d.p170b.p224d.p252g.p258f.C4590t;
import p131c.p161d.p170b.p224d.p252g.p258f.C4596u;
import p131c.p161d.p170b.p224d.p252g.p258f.C4602v;
import p131c.p161d.p170b.p224d.p252g.p258f.C4608w;
import p131c.p161d.p170b.p224d.p252g.p258f.C4614x;
import p131c.p161d.p170b.p224d.p252g.p258f.C4620y;
import p131c.p161d.p170b.p224d.p252g.p258f.C4626z;
import p131c.p161d.p170b.p224d.p252g.p258f.ThreadFactoryC4488f;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzag.class */
public class zzag {

    /* renamed from: j */
    public static volatile zzag f29409j;

    /* renamed from: k */
    public static Boolean f29410k;
    @VisibleForTesting

    /* renamed from: l */
    public static String f29411l = "allow_remote_dynamite";

    /* renamed from: m */
    public static boolean f29412m = true;

    /* renamed from: a */
    public final String f29413a;

    /* renamed from: b */
    public final Clock f29414b;

    /* renamed from: c */
    public final ExecutorService f29415c;

    /* renamed from: d */
    public final AppMeasurementSdk f29416d;

    /* renamed from: e */
    public final List<Pair<zzgz, BinderC7274c>> f29417e;

    /* renamed from: f */
    public int f29418f;

    /* renamed from: g */
    public boolean f29419g;

    /* renamed from: h */
    public String f29420h;

    /* renamed from: i */
    public volatile zzv f29421i;

    /* renamed from: com.google.android.gms.internal.measurement.zzag$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzag$a.class */
    public abstract class AbstractRunnableC7272a implements Runnable {

        /* renamed from: a */
        public final long f29422a;

        /* renamed from: b */
        public final long f29423b;

        /* renamed from: c */
        public final boolean f29424c;

        public AbstractRunnableC7272a(zzag zzagVar) {
            this(true);
        }

        public AbstractRunnableC7272a(boolean z) {
            this.f29422a = zzag.this.f29414b.mo17091b();
            this.f29423b = zzag.this.f29414b.mo17092a();
            this.f29424c = z;
        }

        /* renamed from: a */
        public abstract void mo10433a() throws RemoteException;

        /* renamed from: b */
        public void mo10432b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (zzag.this.f29419g) {
                mo10432b();
                return;
            }
            try {
                mo10433a();
            } catch (Exception e) {
                zzag.this.m10462a(e, false, this.f29424c);
                mo10432b();
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.zzag$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzag$b.class */
    public final class C7273b implements Application.ActivityLifecycleCallbacks {
        public C7273b() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            zzag.this.m10469a(new C4608w(this, bundle, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            zzag.this.m10469a(new C4461b0(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            zzag.this.m10469a(new C4614x(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            zzag.this.m10469a(new C4620y(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            zzt zztVar = new zzt();
            zzag.this.m10469a(new C4626z(this, activity, zztVar));
            Bundle b = zztVar.m9453b(50L);
            if (b != null) {
                bundle.putAll(b);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            zzag.this.m10469a(new C4602v(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            zzag.this.m10469a(new C4454a0(this, activity));
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.zzag$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzag$c.class */
    public static final class BinderC7274c extends zzaa {

        /* renamed from: a */
        public final zzgz f29427a;

        public BinderC7274c(zzgz zzgzVar) {
            this.f29427a = zzgzVar;
        }

        @Override // com.google.android.gms.internal.measurement.zzab
        /* renamed from: a */
        public final void mo10431a(String str, String str2, Bundle bundle, long j) {
            this.f29427a.mo9006a(str, str2, bundle, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzab
        public final int zza() {
            return System.identityHashCode(this.f29427a);
        }
    }

    public zzag(Context context, String str, String str2, String str3, Bundle bundle) {
        if (str == null || !m10450b(str2, str3)) {
            this.f29413a = "FA";
        } else {
            this.f29413a = str;
        }
        this.f29414b = DefaultClock.m17089d();
        this.f29415c = zzi.m9642a().mo9624a(new ThreadFactoryC4488f(this), zzr.f29690a);
        this.f29416d = new AppMeasurementSdk(this);
        this.f29417e = new ArrayList();
        boolean z = false;
        if (!(!m10441e(context) || m10434i())) {
            this.f29420h = null;
            this.f29419g = true;
            Log.w(this.f29413a, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
            return;
        }
        if (!m10450b(str2, str3)) {
            this.f29420h = "fa";
            if (str2 == null || str3 == null) {
                if ((str2 == null) ^ (str3 == null ? true : z)) {
                    Log.w(this.f29413a, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            } else {
                Log.v(this.f29413a, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy");
            }
        } else {
            this.f29420h = str2;
        }
        m10469a(new C4460b(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.f29413a, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new C7273b());
        }
    }

    /* renamed from: a */
    public static zzag m10475a(Context context) {
        return m10473a(context, (String) null, (String) null, (String) null, (Bundle) null);
    }

    /* renamed from: a */
    public static zzag m10473a(Context context, String str, String str2, String str3, Bundle bundle) {
        Preconditions.m17288a(context);
        if (f29409j == null) {
            synchronized (zzag.class) {
                try {
                    if (f29409j == null) {
                        f29409j = new zzag(context, str, str2, str3, bundle);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f29409j;
    }

    /* renamed from: a */
    public static boolean m10474a(Context context, String str) {
        Preconditions.m17281b(str);
        try {
            ApplicationInfo a = Wrappers.m17026b(context).m17032a(context.getPackageName(), 128);
            if (!(a == null || a.metaData == null)) {
                return a.metaData.getBoolean(str);
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* renamed from: b */
    public static boolean m10450b(String str, String str2) {
        return (str2 == null || str == null || m10434i()) ? false : true;
    }

    /* renamed from: e */
    public static boolean m10441e(Context context) {
        try {
            return zzig.m8945a(context, "google_app_id") != null;
        } catch (IllegalStateException e) {
            return false;
        }
    }

    /* renamed from: f */
    public static int m10439f(Context context) {
        return DynamiteModule.m16986b(context, ModuleDescriptor.MODULE_ID);
    }

    /* renamed from: g */
    public static int m10437g(Context context) {
        return DynamiteModule.m16992a(context, ModuleDescriptor.MODULE_ID);
    }

    /* renamed from: h */
    public static void m10435h(Context context) {
        synchronized (zzag.class) {
            try {
                try {
                } catch (Exception e) {
                    Log.e("FA", "Exception reading flag from SharedPreferences.", e);
                    f29410k = Boolean.valueOf(f29412m);
                }
                if (f29410k == null) {
                    if (m10474a(context, "app_measurement_internal_disable_startup_flags")) {
                        f29410k = Boolean.valueOf(f29412m);
                        return;
                    }
                    SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
                    f29410k = Boolean.valueOf(sharedPreferences.getBoolean(f29411l, f29412m));
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.remove(f29411l);
                    edit.apply();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: i */
    public static boolean m10434i() {
        try {
            Class.forName("com.google.firebase.analytics.FirebaseAnalytics");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: a */
    public final Bundle m10470a(Bundle bundle, boolean z) {
        zzt zztVar = new zzt();
        m10469a(new C4555o(this, bundle, zztVar));
        if (z) {
            return zztVar.m9453b(5000L);
        }
        return null;
    }

    /* renamed from: a */
    public final zzv m10472a(Context context, boolean z) {
        try {
            return zzu.asInterface(DynamiteModule.m16993a(context, z ? DynamiteModule.f23602l : DynamiteModule.f23600j, ModuleDescriptor.MODULE_ID).m16988a("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.LoadingException e) {
            m10462a((Exception) e, true, false);
            return null;
        }
    }

    /* renamed from: a */
    public final AppMeasurementSdk m10478a() {
        return this.f29416d;
    }

    /* renamed from: a */
    public final List<Bundle> m10460a(String str, String str2) {
        zzt zztVar = new zzt();
        m10469a(new C4467c(this, str, str2, zztVar));
        List<Bundle> list = (List) zzt.m9454a(zztVar.m9453b(5000L), List.class);
        List<Bundle> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    /* renamed from: a */
    public final Map<String, Object> m10456a(String str, String str2, boolean z) {
        zzt zztVar = new zzt();
        m10469a(new C4541m(this, str, str2, z, zztVar));
        Bundle b = zztVar.m9453b(5000L);
        if (b == null || b.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(b.size());
        for (String str3 : b.keySet()) {
            Object obj = b.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                hashMap.put(str3, obj);
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public final void m10477a(int i, String str, Object obj, Object obj2, Object obj3) {
        m10469a(new C4562p(this, false, 5, str, obj, null, null));
    }

    /* renamed from: a */
    public final void m10476a(Activity activity, String str, String str2) {
        m10469a(new C4481e(this, activity, str, str2));
    }

    /* renamed from: a */
    public final void m10471a(Bundle bundle) {
        m10469a(new C4453a(this, bundle));
    }

    /* renamed from: a */
    public final void m10469a(AbstractRunnableC7272a aVar) {
        this.f29415c.execute(aVar);
    }

    /* renamed from: a */
    public final void m10463a(zzgz zzgzVar) {
        Preconditions.m17288a(zzgzVar);
        synchronized (this.f29417e) {
            for (int i = 0; i < this.f29417e.size(); i++) {
                try {
                    if (zzgzVar.equals(this.f29417e.get(i).first)) {
                        Log.w(this.f29413a, "OnEventListener already registered.");
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            BinderC7274c cVar = new BinderC7274c(zzgzVar);
            this.f29417e.add(new Pair<>(zzgzVar, cVar));
            if (this.f29421i != null) {
                try {
                    this.f29421i.registerOnMeasurementEventListener(cVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException e) {
                    Log.w(this.f29413a, "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            m10469a(new C4583s(this, cVar));
        }
    }

    /* renamed from: a */
    public final void m10462a(Exception exc, boolean z, boolean z2) {
        this.f29419g |= z;
        if (z) {
            Log.w(this.f29413a, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z2) {
            m10477a(5, "Error with data collection. Data lost.", exc, (Object) null, (Object) null);
        }
        Log.w(this.f29413a, "Error with data collection. Data lost.", exc);
    }

    /* renamed from: a */
    public final void m10461a(String str) {
        m10469a(new C4502h(this, str));
    }

    /* renamed from: a */
    public final void m10459a(String str, String str2, Bundle bundle) {
        m10458a(str, str2, bundle, true, true, null);
    }

    /* renamed from: a */
    public final void m10458a(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l) {
        m10469a(new C4596u(this, l, str, str2, bundle, z, z2));
    }

    /* renamed from: a */
    public final void m10457a(String str, String str2, Object obj, boolean z) {
        m10469a(new C4590t(this, str, str2, obj, z));
    }

    /* renamed from: a */
    public final void m10455a(boolean z) {
        m10469a(new C4576r(this, z));
    }

    /* renamed from: b */
    public final String m10454b() {
        zzt zztVar = new zzt();
        m10469a(new C4516j(this, zztVar));
        return zztVar.m9455a(500L);
    }

    /* renamed from: b */
    public final void m10451b(String str) {
        m10469a(new C4495g(this, str));
    }

    /* renamed from: b */
    public final void m10449b(String str, String str2, Bundle bundle) {
        m10469a(new C4474d(this, str, str2, bundle));
    }

    /* renamed from: c */
    public final int m10445c(String str) {
        zzt zztVar = new zzt();
        m10469a(new C4569q(this, str, zztVar));
        Integer num = (Integer) zzt.m9454a(zztVar.m9453b(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    /* renamed from: c */
    public final String m10448c() {
        zzt zztVar = new zzt();
        m10469a(new C4509i(this, zztVar));
        return zztVar.m9455a(50L);
    }

    /* renamed from: d */
    public final long m10444d() {
        zzt zztVar = new zzt();
        m10469a(new C4534l(this, zztVar));
        Long l = (Long) zzt.m9454a(zztVar.m9453b(500L), Long.class);
        if (l != null) {
            return l.longValue();
        }
        long nextLong = new Random(System.nanoTime() ^ this.f29414b.mo17091b()).nextLong();
        int i = this.f29418f + 1;
        this.f29418f = i;
        return nextLong + i;
    }

    /* renamed from: e */
    public final String m10442e() {
        zzt zztVar = new zzt();
        m10469a(new C4527k(this, zztVar));
        return zztVar.m9455a(500L);
    }

    /* renamed from: f */
    public final String m10440f() {
        zzt zztVar = new zzt();
        m10469a(new C4548n(this, zztVar));
        return zztVar.m9455a(500L);
    }

    /* renamed from: g */
    public final String m10438g() {
        return this.f29420h;
    }
}
