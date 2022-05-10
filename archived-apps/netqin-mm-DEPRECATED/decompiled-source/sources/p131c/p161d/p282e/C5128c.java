package p131c.p161d.p282e;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentDiscoveryService;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p012b.p035f.C0780a;
import p012b.p042i.p050l.C0922g;
import p131c.p161d.p282e.p288k.AbstractC5171h;
import p131c.p161d.p282e.p288k.C5162d;
import p131c.p161d.p282e.p288k.C5166f;
import p131c.p161d.p282e.p288k.C5175l;
import p131c.p161d.p282e.p288k.C5183q;
import p131c.p161d.p282e.p313o.AbstractC5472c;
import p131c.p161d.p282e.p339t.C5923a;
/* renamed from: c.d.e.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/c.class */
public class C5128c {

    /* renamed from: i */
    public static final Object f17718i = new Object();

    /* renamed from: j */
    public static final Executor f17719j = new ExecutorC5132d();

    /* renamed from: k */
    public static final Map<String, C5128c> f17720k = new C0780a();

    /* renamed from: a */
    public final Context f17721a;

    /* renamed from: b */
    public final String f17722b;

    /* renamed from: c */
    public final C5138h f17723c;

    /* renamed from: d */
    public final C5175l f17724d;

    /* renamed from: g */
    public final C5183q<C5923a> f17727g;

    /* renamed from: e */
    public final AtomicBoolean f17725e = new AtomicBoolean(false);

    /* renamed from: f */
    public final AtomicBoolean f17726f = new AtomicBoolean();

    /* renamed from: h */
    public final List<AbstractC5130b> f17728h = new CopyOnWriteArrayList();

    @KeepForSdk
    /* renamed from: c.d.e.c$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/c$b.class */
    public interface AbstractC5130b {
        @KeepForSdk
        /* renamed from: a */
        void m24457a(boolean z);
    }

    /* renamed from: c.d.e.c$c */
    /* loaded from: classes2-dex2jar.jar:c/d/e/c$c.class */
    public static class C5131c implements BackgroundDetector.BackgroundStateChangeListener {

        /* renamed from: a */
        public static AtomicReference<C5131c> f17729a = new AtomicReference<>();

        /* renamed from: b */
        public static void m24455b(Context context) {
            if (PlatformVersion.m17067a() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (f17729a.get() == null) {
                    C5131c cVar = new C5131c();
                    if (f17729a.compareAndSet(null, cVar)) {
                        BackgroundDetector.m17736a(application);
                        BackgroundDetector.m17733b().m17735a(cVar);
                    }
                }
            }
        }

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        /* renamed from: a */
        public void mo17731a(boolean z) {
            synchronized (C5128c.f17718i) {
                try {
                    Iterator it = new ArrayList(C5128c.f17720k.values()).iterator();
                    while (it.hasNext()) {
                        C5128c cVar = (C5128c) it.next();
                        if (cVar.f17725e.get()) {
                            cVar.m24469a(z);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: c.d.e.c$d */
    /* loaded from: classes2-dex2jar.jar:c/d/e/c$d.class */
    public static class ExecutorC5132d implements Executor {

        /* renamed from: a */
        public static final Handler f17730a = new Handler(Looper.getMainLooper());

        public ExecutorC5132d() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            f17730a.post(runnable);
        }
    }

    /* renamed from: c.d.e.c$e */
    /* loaded from: classes2-dex2jar.jar:c/d/e/c$e.class */
    public static class C5133e extends BroadcastReceiver {

        /* renamed from: b */
        public static AtomicReference<C5133e> f17731b = new AtomicReference<>();

        /* renamed from: a */
        public final Context f17732a;

        public C5133e(Context context) {
            this.f17732a = context;
        }

        /* renamed from: b */
        public static void m24452b(Context context) {
            if (f17731b.get() == null) {
                C5133e eVar = new C5133e(context);
                if (f17731b.compareAndSet(null, eVar)) {
                    context.registerReceiver(eVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        /* renamed from: a */
        public void m24454a() {
            this.f17732a.unregisterReceiver(this);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (C5128c.f17718i) {
                try {
                    for (C5128c cVar : C5128c.f17720k.values()) {
                        cVar.m24462f();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            m24454a();
        }
    }

    public C5128c(Context context, String str, C5138h hVar) {
        new CopyOnWriteArrayList();
        Preconditions.m17288a(context);
        this.f17721a = context;
        Preconditions.m17281b(str);
        this.f17722b = str;
        Preconditions.m17288a(hVar);
        this.f17723c = hVar;
        List<AbstractC5171h> a = C5166f.m24373a(context, ComponentDiscoveryService.class).m24374a();
        a.add(new FirebaseCommonRegistrar());
        this.f17724d = new C5175l(f17719j, a, C5162d.m24391a(context, Context.class, new Class[0]), C5162d.m24391a(this, C5128c.class, new Class[0]), C5162d.m24391a(hVar, C5138h.class, new Class[0]));
        this.f17727g = new C5183q<>(C5127b.m24479a(this, context));
    }

    /* renamed from: a */
    public static C5128c m24476a(Context context, C5138h hVar) {
        return m24475a(context, hVar, "[DEFAULT]");
    }

    /* renamed from: a */
    public static C5128c m24475a(Context context, C5138h hVar, String str) {
        C5128c cVar;
        C5131c.m24455b(context);
        String a = m24470a(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f17718i) {
            boolean z = !f17720k.containsKey(a);
            Preconditions.m17279b(z, "FirebaseApp name " + a + " already exists!");
            Preconditions.m17287a(context, "Application context cannot be null.");
            cVar = new C5128c(context, a, hVar);
            f17720k.put(a, cVar);
        }
        cVar.m24462f();
        return cVar;
    }

    /* renamed from: a */
    public static /* synthetic */ C5923a m24473a(C5128c cVar, Context context) {
        return new C5923a(context, cVar.m24463e(), (AbstractC5472c) cVar.f17724d.mo24330a(AbstractC5472c.class));
    }

    /* renamed from: a */
    public static String m24470a(String str) {
        return str.trim();
    }

    /* renamed from: a */
    public static List<C5128c> m24477a(Context context) {
        ArrayList arrayList;
        synchronized (f17718i) {
            arrayList = new ArrayList(f17720k.values());
        }
        return arrayList;
    }

    /* renamed from: b */
    public static C5128c m24467b(Context context) {
        synchronized (f17718i) {
            if (f17720k.containsKey("[DEFAULT]")) {
                return m24458j();
            }
            C5138h a = C5138h.m24446a(context);
            if (a == null) {
                Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                return null;
            }
            return m24476a(context, a);
        }
    }

    /* renamed from: j */
    public static C5128c m24458j() {
        C5128c cVar;
        synchronized (f17718i) {
            cVar = f17720k.get("[DEFAULT]");
            if (cVar == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + ProcessUtils.m17053a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return cVar;
    }

    @KeepForSdk
    /* renamed from: a */
    public <T> T m24471a(Class<T> cls) {
        m24478a();
        return (T) this.f17724d.mo24330a(cls);
    }

    /* renamed from: a */
    public final void m24478a() {
        Preconditions.m17279b(!this.f17726f.get(), "FirebaseApp was deleted");
    }

    /* renamed from: a */
    public final void m24469a(boolean z) {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        for (AbstractC5130b bVar : this.f17728h) {
            bVar.m24457a(z);
        }
    }

    /* renamed from: b */
    public Context m24468b() {
        m24478a();
        return this.f17721a;
    }

    /* renamed from: c */
    public String m24465c() {
        m24478a();
        return this.f17722b;
    }

    /* renamed from: d */
    public C5138h m24464d() {
        m24478a();
        return this.f17723c;
    }

    @KeepForSdk
    /* renamed from: e */
    public String m24463e() {
        return Base64Utils.m17109c(m24465c().getBytes(Charset.defaultCharset())) + "+" + Base64Utils.m17109c(m24464d().m24445b().getBytes(Charset.defaultCharset()));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C5128c)) {
            return false;
        }
        return this.f17722b.equals(((C5128c) obj).m24465c());
    }

    /* renamed from: f */
    public final void m24462f() {
        if (!C0922g.m35494a(this.f17721a)) {
            Log.i("FirebaseApp", "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app " + m24465c());
            C5133e.m24452b(this.f17721a);
            return;
        }
        Log.i("FirebaseApp", "Device unlocked: initializing all Firebase APIs for app " + m24465c());
        this.f17724d.m24362a(m24460h());
    }

    @KeepForSdk
    /* renamed from: g */
    public boolean m24461g() {
        m24478a();
        return this.f17727g.get().m22696a();
    }

    @KeepForSdk
    /* renamed from: h */
    public boolean m24460h() {
        return "[DEFAULT]".equals(m24465c());
    }

    public int hashCode() {
        return this.f17722b.hashCode();
    }

    public String toString() {
        Objects.ToStringHelper a = Objects.m17296a(this);
        a.m17293a("name", this.f17722b);
        a.m17293a("options", this.f17723c);
        return a.toString();
    }
}
