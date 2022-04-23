package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.C3134a;
import com.google.firebase.FirebaseApp;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.p071a.AbstractC3136b;
import com.google.firebase.p071a.AbstractC3138d;
import com.google.firebase.p071a.C3135a;
import com.google.firebase.p074d.AbstractC3182g;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceId.class */
public class FirebaseInstanceId {

    /* renamed from: a */
    private static final long f19038a = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: b */
    private static C3232w f19039b;

    /* renamed from: c */
    private static ScheduledExecutorService f19040c;

    /* renamed from: d */
    private final Executor f19041d;

    /* renamed from: e */
    private final FirebaseApp f19042e;

    /* renamed from: f */
    private final C3224o f19043f;

    /* renamed from: g */
    private AbstractC3211b f19044g;

    /* renamed from: h */
    private final C3227r f19045h;

    /* renamed from: i */
    private final C3187aa f19046i;

    /* renamed from: j */
    private boolean f19047j;

    /* renamed from: k */
    private final C3183a f19048k;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.firebase.iid.FirebaseInstanceId$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceId$a.class */
    public final class C3183a {

        /* renamed from: c */
        private final AbstractC3138d f19051c;

        /* renamed from: d */
        private AbstractC3136b<C3134a> f19052d;

        /* renamed from: b */
        private final boolean f19050b = m540c();

        /* renamed from: e */
        private Boolean f19053e = m541b();

        C3183a(AbstractC3138d dVar) {
            this.f19051c = dVar;
            if (this.f19053e == null && this.f19050b) {
                this.f19052d = new AbstractC3136b(this) { // from class: com.google.firebase.iid.ao

                    /* renamed from: a */
                    private final FirebaseInstanceId.C3183a f19090a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f19090a = this;
                    }

                    @Override // com.google.firebase.p071a.AbstractC3136b
                    /* renamed from: a */
                    public final void mo519a(C3135a aVar) {
                        FirebaseInstanceId.C3183a aVar2 = this.f19090a;
                        synchronized (aVar2) {
                            if (aVar2.m542a()) {
                                FirebaseInstanceId.this.m545j();
                            }
                        }
                    }
                };
                dVar.mo587a(C3134a.class, this.f19052d);
            }
        }

        /* renamed from: b */
        private final Boolean m541b() {
            ApplicationInfo applicationInfo;
            Context a = FirebaseInstanceId.this.f19042e.m664a();
            SharedPreferences sharedPreferences = a.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = a.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(a.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }

        /* renamed from: c */
        private final boolean m540c() {
            try {
                Class.forName("com.google.firebase.messaging.FirebaseMessaging");
                return true;
            } catch (ClassNotFoundException e) {
                Context a = FirebaseInstanceId.this.f19042e.m664a();
                Intent intent = new Intent("com.google.firebase.MESSAGING_EVENT");
                intent.setPackage(a.getPackageName());
                ResolveInfo resolveService = a.getPackageManager().resolveService(intent, 0);
                return (resolveService == null || resolveService.serviceInfo == null) ? false : true;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final boolean m542a() {
            synchronized (this) {
                if (this.f19053e != null) {
                    return this.f19053e.booleanValue();
                }
                return this.f19050b && FirebaseInstanceId.this.f19042e.isDataCollectionDefaultEnabled();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirebaseInstanceId(FirebaseApp firebaseApp, AbstractC3138d dVar, AbstractC3182g gVar) {
        this(firebaseApp, new C3224o(firebaseApp.m664a()), C3193ag.m524b(), C3193ag.m524b(), dVar, gVar);
    }

    private FirebaseInstanceId(FirebaseApp firebaseApp, C3224o oVar, Executor executor, Executor executor2, AbstractC3138d dVar, AbstractC3182g gVar) {
        this.f19047j = false;
        if (C3224o.m467a(firebaseApp) != null) {
            synchronized (FirebaseInstanceId.class) {
                try {
                    if (f19039b == null) {
                        f19039b = new C3232w(firebaseApp.m664a());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f19042e = firebaseApp;
            this.f19043f = oVar;
            if (this.f19044g == null) {
                AbstractC3211b bVar = (AbstractC3211b) firebaseApp.m659a(AbstractC3211b.class);
                this.f19044g = (bVar == null || !bVar.mo490a()) ? new C3203aq(firebaseApp, oVar, executor, gVar) : bVar;
            }
            this.f19044g = this.f19044g;
            this.f19041d = executor2;
            this.f19046i = new C3187aa(f19039b);
            this.f19048k = new C3183a(dVar);
            this.f19045h = new C3227r(executor);
            if (this.f19048k.m542a()) {
                m545j();
                return;
            }
            return;
        }
        throw new IllegalStateException("FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID");
    }

    /* renamed from: a */
    public static FirebaseInstanceId m567a() {
        return getInstance(FirebaseApp.getInstance());
    }

    /* renamed from: a */
    private final <T> T m565a(Task<T> task) {
        try {
            return (T) Tasks.await(task, 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | TimeoutException e) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                if ("INSTANCE_ID_RESET".equals(cause.getMessage())) {
                    m548g();
                }
                throw ((IOException) cause);
            } else if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else {
                throw new IOException(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m562a(Runnable runnable, long j) {
        synchronized (FirebaseInstanceId.class) {
            try {
                if (f19040c == null) {
                    f19040c = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("FirebaseInstanceId"));
                }
                f19040c.schedule(runnable, j, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private static C3235z m553b(String str, String str2) {
        return f19039b.m446a("", str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static boolean m549f() {
        if (!Log.isLoggable("FirebaseInstanceId", 3)) {
            return Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseInstanceId", 3);
        }
        return true;
    }

    public static FirebaseInstanceId getInstance(FirebaseApp firebaseApp) {
        return (FirebaseInstanceId) firebaseApp.m659a(FirebaseInstanceId.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public final void m545j() {
        if (m563a(m551d()) || this.f19046i.m535a()) {
            m544k();
        }
    }

    /* renamed from: k */
    private final void m544k() {
        synchronized (this) {
            if (!this.f19047j) {
                m566a(0L);
            }
        }
    }

    /* renamed from: l */
    private static String m543l() {
        return C3224o.m465a(f19039b.m443b("").m511a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ Task m560a(final String str, final String str2) {
        final String l = m543l();
        C3235z b = m553b(str, str2);
        if (!m563a(b)) {
            return Tasks.forResult(new C3208av(l, b.f19162a));
        }
        final String a = C3235z.m430a(b);
        return this.f19045h.m458a(str, str2, new AbstractC3228s(this, l, a, str, str2) { // from class: com.google.firebase.iid.al

            /* renamed from: a */
            private final FirebaseInstanceId f19078a;

            /* renamed from: b */
            private final String f19079b;

            /* renamed from: c */
            private final String f19080c;

            /* renamed from: d */
            private final String f19081d;

            /* renamed from: e */
            private final String f19082e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19078a = this;
                this.f19079b = l;
                this.f19080c = a;
                this.f19081d = str;
                this.f19082e = str2;
            }

            @Override // com.google.firebase.iid.AbstractC3228s
            /* renamed from: a */
            public final Task mo457a() {
                return this.f19078a.m559a(this.f19079b, this.f19081d, this.f19082e);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ Task m559a(final String str, final String str2, final String str3) {
        return this.f19044g.mo489a(str, str2, str3).onSuccessTask(this.f19041d, new SuccessContinuation(this, str2, str3, str) { // from class: com.google.firebase.iid.an

            /* renamed from: a */
            private final FirebaseInstanceId f19086a;

            /* renamed from: b */
            private final String f19087b;

            /* renamed from: c */
            private final String f19088c;

            /* renamed from: d */
            private final String f19089d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19086a = this;
                this.f19087b = str2;
                this.f19088c = str3;
                this.f19089d = str;
            }

            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.f19086a.m558a(this.f19087b, this.f19088c, this.f19089d, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ Task m558a(String str, String str2, String str3, String str4) {
        f19039b.m445a("", str, str2, str4, this.f19043f.m464b());
        return Tasks.forResult(new C3208av(str3, str4));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m566a(long j) {
        synchronized (this) {
            m562a(new RunnableC3234y(this, this.f19046i, Math.min(Math.max(30L, j << 1), f19038a)), j);
            this.f19047j = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m561a(String str) {
        C3235z d = m551d();
        if (!m563a(d)) {
            m565a(this.f19044g.mo488b(m543l(), d.f19162a, str));
            return;
        }
        throw new IOException("token not available");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m557a(boolean z) {
        synchronized (this) {
            this.f19047j = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m563a(C3235z zVar) {
        return zVar == null || zVar.m427b(this.f19043f.m464b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final FirebaseApp m556b() {
        return this.f19042e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m554b(String str) {
        C3235z d = m551d();
        if (!m563a(d)) {
            m565a(this.f19044g.mo487c(m543l(), d.f19162a, str));
            return;
        }
        throw new IOException("token not available");
    }

    /* renamed from: c */
    public final String m552c() {
        m545j();
        return m543l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final C3235z m551d() {
        return m553b(C3224o.m467a(this.f19042e), "*");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final String m550e() {
        final String a = C3224o.m467a(this.f19042e);
        if (Looper.getMainLooper() != Looper.myLooper()) {
            return ((AbstractC3185a) m565a(Tasks.forResult(null).continueWithTask(this.f19041d, new Continuation(this, a, "*") { // from class: com.google.firebase.iid.am

                /* renamed from: a */
                private final FirebaseInstanceId f19083a;

                /* renamed from: b */
                private final String f19084b;

                /* renamed from: c */
                private final String f19085c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f19083a = this;
                    this.f19084b = a;
                    this.f19085c = r6;
                }

                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task) {
                    return this.f19083a.m560a(this.f19084b, this.f19085c);
                }
            }))).mo512a();
        }
        throw new IOException("MAIN_THREAD");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final void m548g() {
        synchronized (this) {
            f19039b.m444b();
            if (this.f19048k.m542a()) {
                m544k();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final boolean m547h() {
        return this.f19044g.mo490a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final void m546i() {
        f19039b.m440c("");
        m544k();
    }
}
