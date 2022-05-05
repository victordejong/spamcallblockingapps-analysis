package p000a.p001a.p002a.p003a;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import p000a.p001a.p002a.p003a.p004a.p006b.C0033n;
import p000a.p001a.p002a.p003a.p004a.p006b.C0043x;
import p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0065i;
import p000a.p001a.p002a.p003a.p004a.p007c.C0074q;
import p000a.p001a.p002a.p003a.p004a.p007c.C0077s;
/* renamed from: a.a.a.a.d */
/* loaded from: classes-dex2jar.jar:a/a/a/a/d.class */
public class C0137d {

    /* renamed from: a */
    static volatile C0137d f307a;

    /* renamed from: b */
    static final AbstractC0150o f308b = new C0136c((byte) 0);

    /* renamed from: c */
    final AbstractC0150o f309c;

    /* renamed from: d */
    final boolean f310d;

    /* renamed from: e */
    private final Context f311e;

    /* renamed from: f */
    private final Map<Class<? extends AbstractC0147l>, AbstractC0147l> f312f;

    /* renamed from: g */
    private final ExecutorService f313g;

    /* renamed from: h */
    private final Handler f314h;

    /* renamed from: i */
    private final AbstractC0143i<C0137d> f315i;

    /* renamed from: j */
    private final AbstractC0143i<?> f316j;

    /* renamed from: k */
    private final C0043x f317k;

    /* renamed from: l */
    private C0000a f318l;

    /* renamed from: m */
    private WeakReference<Activity> f319m;

    /* renamed from: n */
    private AtomicBoolean f320n = new AtomicBoolean(false);

    /* renamed from: a.a.a.a.d$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/d$a.class */
    public static final class C0138a {

        /* renamed from: a */
        private final Context f321a;

        /* renamed from: b */
        private AbstractC0147l[] f322b;

        /* renamed from: c */
        private C0074q f323c;

        /* renamed from: d */
        private Handler f324d;

        /* renamed from: e */
        private AbstractC0150o f325e;

        /* renamed from: f */
        private boolean f326f;

        /* renamed from: g */
        private String f327g;

        /* renamed from: h */
        private String f328h;

        /* renamed from: i */
        private AbstractC0143i<C0137d> f329i;

        public C0138a(Context context) {
            if (context != null) {
                this.f321a = context;
                return;
            }
            throw new IllegalArgumentException("Context must not be null.");
        }

        /* renamed from: a */
        public final C0138a m10152a(AbstractC0147l... lVarArr) {
            if (this.f322b == null) {
                AbstractC0147l[] lVarArr2 = lVarArr;
                if (!C0033n.m10308a(this.f321a).m10309a()) {
                    ArrayList arrayList = new ArrayList();
                    boolean z = false;
                    for (AbstractC0147l lVar : lVarArr) {
                        String identifier = lVar.getIdentifier();
                        char c = 65535;
                        int hashCode = identifier.hashCode();
                        if (hashCode != 607220212) {
                            if (hashCode == 1830452504 && identifier.equals("com.crashlytics.sdk.android:crashlytics")) {
                                c = 0;
                            }
                        } else if (identifier.equals("com.crashlytics.sdk.android:answers")) {
                            c = 1;
                        }
                        if (c == 0 || c == 1) {
                            arrayList.add(lVar);
                            z = z;
                        } else {
                            z = z;
                            if (!z) {
                                C0137d.m10155c().mo10129d("Fabric", "Fabric will not initialize any kits when Firebase automatic data collection is disabled; to use Third-party kits with automatic data collection disabled, initialize these kits via non-Fabric means.");
                                z = true;
                            }
                        }
                    }
                    lVarArr2 = (AbstractC0147l[]) arrayList.toArray(new AbstractC0147l[0]);
                }
                this.f322b = lVarArr2;
                return this;
            }
            throw new IllegalStateException("Kits already set.");
        }

        /* renamed from: a */
        public final C0137d m10153a() {
            if (this.f323c == null) {
                this.f323c = C0074q.m10255a();
            }
            if (this.f324d == null) {
                this.f324d = new Handler(Looper.getMainLooper());
            }
            if (this.f325e == null) {
                this.f325e = this.f326f ? new C0136c() : new C0136c((byte) 0);
            }
            if (this.f328h == null) {
                this.f328h = this.f321a.getPackageName();
            }
            if (this.f329i == null) {
                this.f329i = AbstractC0143i.f337d;
            }
            AbstractC0147l[] lVarArr = this.f322b;
            Map hashMap = lVarArr == null ? new HashMap() : C0137d.m10160a(Arrays.asList(lVarArr));
            Context applicationContext = this.f321a.getApplicationContext();
            return new C0137d(applicationContext, hashMap, this.f323c, this.f324d, this.f325e, this.f326f, this.f329i, new C0043x(applicationContext, this.f328h, this.f327g, hashMap.values()), C0137d.m10163a(this.f321a));
        }
    }

    C0137d(Context context, Map<Class<? extends AbstractC0147l>, AbstractC0147l> map, C0074q qVar, Handler handler, AbstractC0150o oVar, boolean z, AbstractC0143i iVar, C0043x xVar, Activity activity) {
        this.f311e = context;
        this.f312f = map;
        this.f313g = qVar;
        this.f314h = handler;
        this.f309c = oVar;
        this.f310d = z;
        this.f315i = iVar;
        this.f316j = new C0140f(this, map.size());
        this.f317k = xVar;
        m10164a(activity);
    }

    /* renamed from: a */
    public static C0137d m10162a(Context context, AbstractC0147l... lVarArr) {
        if (f307a == null) {
            synchronized (C0137d.class) {
                try {
                    if (f307a == null) {
                        C0137d a = new C0138a(context).m10152a(lVarArr).m10153a();
                        f307a = a;
                        a.f318l = new C0000a(a.f311e);
                        a.f318l.m10409a(new C0139e(a));
                        Context context2 = a.f311e;
                        Future submit = a.f313g.submit(new CallableC0142h(context2.getPackageCodePath()));
                        Collection<AbstractC0147l> values = a.f312f.values();
                        C0151p pVar = new C0151p(submit, values);
                        ArrayList<AbstractC0147l> arrayList = new ArrayList(values);
                        Collections.sort(arrayList);
                        pVar.injectParameters(context2, a, AbstractC0143i.f337d, a.f317k);
                        for (AbstractC0147l lVar : arrayList) {
                            lVar.injectParameters(context2, a, a.f316j, a.f317k);
                        }
                        pVar.initialize();
                        StringBuilder sb = m10155c().mo10136a("Fabric", 3) ? new StringBuilder("Initializing io.fabric.sdk.android:fabric [Version: 1.4.6.29], with the following kits:\n") : null;
                        for (AbstractC0147l lVar2 : arrayList) {
                            lVar2.initializationTask.addDependency(pVar.initializationTask);
                            m10159a(a.f312f, lVar2);
                            lVar2.initialize();
                            if (sb != null) {
                                sb.append(lVar2.getIdentifier());
                                sb.append(" [Version: ");
                                sb.append(lVar2.getVersion());
                                sb.append("]\n");
                            }
                        }
                        if (sb != null) {
                            m10155c().mo10135a("Fabric", sb.toString());
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f307a;
    }

    /* renamed from: a */
    public static <T extends AbstractC0147l> T m10161a(Class<T> cls) {
        if (f307a != null) {
            return (T) f307a.f312f.get(cls);
        }
        throw new IllegalStateException("Must Initialize Fabric before using singleton()");
    }

    /* renamed from: a */
    static /* synthetic */ Activity m10163a(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        return null;
    }

    /* renamed from: a */
    static /* synthetic */ Map m10160a(Collection collection) {
        HashMap hashMap = new HashMap(collection.size());
        m10158a(hashMap, collection);
        return hashMap;
    }

    /* renamed from: a */
    private static void m10159a(Map<Class<? extends AbstractC0147l>, AbstractC0147l> map, AbstractC0147l lVar) {
        Class<?>[] a;
        AbstractC0065i iVar = lVar.dependsOnAnnotation;
        if (iVar != null) {
            for (Class<?> cls : iVar.m10262a()) {
                if (cls.isInterface()) {
                    for (AbstractC0147l lVar2 : map.values()) {
                        if (cls.isAssignableFrom(lVar2.getClass())) {
                            lVar.initializationTask.addDependency(lVar2.initializationTask);
                        }
                    }
                } else if (map.get(cls) != null) {
                    lVar.initializationTask.addDependency(map.get(cls).initializationTask);
                } else {
                    throw new C0077s("Referenced Kit was null, does the kit exist?");
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static void m10158a(Map<Class<? extends AbstractC0147l>, AbstractC0147l> map, Collection<? extends AbstractC0147l> collection) {
        for (AbstractC0147l lVar : collection) {
            map.put(lVar.getClass(), lVar);
            if (lVar instanceof AbstractC0148m) {
                m10158a(map, ((AbstractC0148m) lVar).getKits());
            }
        }
    }

    /* renamed from: c */
    public static AbstractC0150o m10155c() {
        return f307a == null ? f308b : f307a.f309c;
    }

    /* renamed from: d */
    public static boolean m10154d() {
        if (f307a == null) {
            return false;
        }
        return f307a.f310d;
    }

    /* renamed from: a */
    public final C0137d m10164a(Activity activity) {
        this.f319m = new WeakReference<>(activity);
        return this;
    }

    /* renamed from: a */
    public final Activity m10166a() {
        WeakReference<Activity> weakReference = this.f319m;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: b */
    public final ExecutorService m10157b() {
        return this.f313g;
    }
}
