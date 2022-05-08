package com.google.firebase;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.core.p032c.C0627d;
import androidx.p026b.C0529a;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.components.C3150b;
import com.google.firebase.components.C3155f;
import com.google.firebase.components.C3160i;
import com.google.firebase.components.C3172s;
import com.google.firebase.p071a.AbstractC3137c;
import com.google.firebase.p073c.C3148a;
import com.google.firebase.p074d.C3177b;
import com.google.firebase.p074d.C3181f;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/firebase/FirebaseApp.class */
public class FirebaseApp {

    /* renamed from: d */
    private final Context f18940d;

    /* renamed from: e */
    private final String f18941e;

    /* renamed from: f */
    private final C3147c f18942f;

    /* renamed from: g */
    private final C3160i f18943g;

    /* renamed from: j */
    private final C3172s<C3148a> f18946j;

    /* renamed from: b */
    private static final Object f18938b = new Object();

    /* renamed from: c */
    private static final Executor f18939c = new ExecutorC3132b((byte) 0);

    /* renamed from: a */
    static final Map<String, FirebaseApp> f18937a = new C0529a();

    /* renamed from: h */
    private final AtomicBoolean f18944h = new AtomicBoolean(false);

    /* renamed from: i */
    private final AtomicBoolean f18945i = new AtomicBoolean();

    /* renamed from: k */
    private final List<Object> f18947k = new CopyOnWriteArrayList();

    /* renamed from: l */
    private final List<Object> f18948l = new CopyOnWriteArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.firebase.FirebaseApp$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/FirebaseApp$a.class */
    public static final class C3131a implements BackgroundDetector.BackgroundStateChangeListener {

        /* renamed from: a */
        private static AtomicReference<C3131a> f18949a = new AtomicReference<>();

        private C3131a() {
        }

        /* renamed from: a */
        static /* synthetic */ void m650a(Context context) {
            if (PlatformVersion.isAtLeastIceCreamSandwich() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (f18949a.get() == null) {
                    C3131a aVar = new C3131a();
                    if (f18949a.compareAndSet(null, aVar)) {
                        BackgroundDetector.initialize(application);
                        BackgroundDetector.getInstance().addListener(aVar);
                    }
                }
            }
        }

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public final void onBackgroundStateChanged(boolean z) {
            synchronized (FirebaseApp.f18938b) {
                Iterator it = new ArrayList(FirebaseApp.f18937a.values()).iterator();
                while (it.hasNext()) {
                    FirebaseApp firebaseApp = (FirebaseApp) it.next();
                    if (firebaseApp.f18944h.get()) {
                        FirebaseApp.m655c(firebaseApp);
                    }
                }
            }
        }
    }

    /* renamed from: com.google.firebase.FirebaseApp$b */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/FirebaseApp$b.class */
    private static final class ExecutorC3132b implements Executor {

        /* renamed from: a */
        private static final Handler f18950a = new Handler(Looper.getMainLooper());

        private ExecutorC3132b() {
        }

        /* synthetic */ ExecutorC3132b(byte b) {
            this();
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            f18950a.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.firebase.FirebaseApp$c */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/FirebaseApp$c.class */
    public static final class C3133c extends BroadcastReceiver {

        /* renamed from: a */
        private static AtomicReference<C3133c> f18951a = new AtomicReference<>();

        /* renamed from: b */
        private final Context f18952b;

        private C3133c(Context context) {
            this.f18952b = context;
        }

        /* renamed from: a */
        static /* synthetic */ void m649a(Context context) {
            if (f18951a.get() == null) {
                C3133c cVar = new C3133c(context);
                if (f18951a.compareAndSet(null, cVar)) {
                    context.registerReceiver(cVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            synchronized (FirebaseApp.f18938b) {
                for (FirebaseApp firebaseApp : FirebaseApp.f18937a.values()) {
                    firebaseApp.m651g();
                }
            }
            this.f18952b.unregisterReceiver(this);
        }
    }

    private FirebaseApp(Context context, String str, C3147c cVar) {
        this.f18940d = (Context) Preconditions.checkNotNull(context);
        this.f18941e = Preconditions.checkNotEmpty(str);
        this.f18942f = (C3147c) Preconditions.checkNotNull(cVar);
        this.f18943g = new C3160i(f18939c, C3155f.m617a(context).m618a(), C3150b.m634a(context, Context.class, new Class[0]), C3150b.m634a(this, FirebaseApp.class, new Class[0]), C3150b.m634a(cVar, C3147c.class, new Class[0]), C3181f.m569a("fire-android", ""), C3181f.m569a("fire-core", "19.0.0"), C3177b.m576b());
        this.f18946j = new C3172s<>(C3145b.m643a(this, context));
    }

    /* renamed from: a */
    public static FirebaseApp m663a(Context context) {
        synchronized (f18938b) {
            if (f18937a.containsKey("[DEFAULT]")) {
                return getInstance();
            }
            C3147c a = C3147c.m641a(context);
            if (a == null) {
                Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                return null;
            }
            return m662a(context, a, "[DEFAULT]");
        }
    }

    /* renamed from: a */
    private static FirebaseApp m662a(Context context, C3147c cVar, String str) {
        FirebaseApp firebaseApp;
        C3131a.m650a(context);
        String trim = str.trim();
        Context context2 = context;
        if (context.getApplicationContext() != null) {
            context2 = context.getApplicationContext();
        }
        synchronized (f18938b) {
            boolean z = !f18937a.containsKey(trim);
            Preconditions.checkState(z, "FirebaseApp name " + trim + " already exists!");
            Preconditions.checkNotNull(context2, "Application context cannot be null.");
            firebaseApp = new FirebaseApp(context2, trim, cVar);
            f18937a.put(trim, firebaseApp);
        }
        firebaseApp.m651g();
        return firebaseApp;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ C3148a m660a(FirebaseApp firebaseApp, Context context) {
        return new C3148a(context, Base64Utils.encodeUrlSafeNoPadding(firebaseApp.m653e().getBytes(Charset.defaultCharset())) + "+" + Base64Utils.encodeUrlSafeNoPadding(firebaseApp.m658b().m642a().getBytes(Charset.defaultCharset())), (AbstractC3137c) firebaseApp.f18943g.mo582a(AbstractC3137c.class));
    }

    /* renamed from: c */
    static /* synthetic */ void m655c(FirebaseApp firebaseApp) {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        Iterator<Object> it = firebaseApp.f18947k.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* renamed from: e */
    private String m653e() {
        m652f();
        return this.f18941e;
    }

    /* renamed from: f */
    private void m652f() {
        Preconditions.checkState(!this.f18945i.get(), "FirebaseApp was deleted");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public void m651g() {
        if (!C0627d.m8686a(this.f18940d)) {
            C3133c.m649a(this.f18940d);
        } else {
            this.f18943g.m610a(m656c());
        }
    }

    public static FirebaseApp getInstance() {
        FirebaseApp firebaseApp;
        synchronized (f18938b) {
            firebaseApp = f18937a.get("[DEFAULT]");
            if (firebaseApp == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + ProcessUtils.getMyProcessName() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return firebaseApp;
    }

    /* renamed from: a */
    public final Context m664a() {
        m652f();
        return this.f18940d;
    }

    /* renamed from: a */
    public final <T> T m659a(Class<T> cls) {
        m652f();
        return (T) this.f18943g.mo582a(cls);
    }

    /* renamed from: b */
    public final C3147c m658b() {
        m652f();
        return this.f18942f;
    }

    /* renamed from: c */
    public final boolean m656c() {
        return "[DEFAULT]".equals(m653e());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FirebaseApp)) {
            return false;
        }
        return this.f18941e.equals(((FirebaseApp) obj).m653e());
    }

    public int hashCode() {
        return this.f18941e.hashCode();
    }

    public boolean isDataCollectionDefaultEnabled() {
        m652f();
        return this.f18946j.mo583a().m639a();
    }

    public String toString() {
        return Objects.toStringHelper(this).add(AppMeasurementSdk.ConditionalUserProperty.NAME, this.f18941e).add("options", this.f18942f).toString();
    }
}
