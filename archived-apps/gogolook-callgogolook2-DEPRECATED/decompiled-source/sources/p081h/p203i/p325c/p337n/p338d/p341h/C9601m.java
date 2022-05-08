package p081h.p203i.p325c.p337n.p338d.p341h;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.media2.session.MediaSessionImplBase;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9148k;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p337n.p338d.AbstractC9512a;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p339f.AbstractC9522a;
import p081h.p203i.p325c.p337n.p338d.p340g.AbstractC9529b;
import p081h.p203i.p325c.p337n.p338d.p345k.C9767c;
import p081h.p203i.p325c.p337n.p338d.p346l.C9777i;
import p081h.p203i.p325c.p337n.p338d.p352p.AbstractC9809e;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.AbstractC9817e;
import p081h.p203i.p325c.p337n.p338d.p356r.C9831a;
/* renamed from: h.i.c.n.d.h.m */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/m.class */
public class C9601m {

    /* renamed from: a */
    public final Context f21862a;

    /* renamed from: b */
    public final C9435c f21863b;

    /* renamed from: c */
    public final C9613t f21864c;

    /* renamed from: d */
    public final long f21865d = System.currentTimeMillis();

    /* renamed from: e */
    public C9606n f21866e;

    /* renamed from: f */
    public C9606n f21867f;

    /* renamed from: g */
    public C9558k f21868g;

    /* renamed from: h */
    public final C9621y f21869h;

    /* renamed from: i */
    public final AbstractC9529b f21870i;

    /* renamed from: j */
    public final AbstractC9522a f21871j;

    /* renamed from: k */
    public ExecutorService f21872k;

    /* renamed from: l */
    public C9550i f21873l;

    /* renamed from: m */
    public AbstractC9512a f21874m;

    /* renamed from: h.i.c.n.d.h.m$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/m$a.class */
    public class CallableC9602a implements Callable<AbstractC9143h<Void>> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9809e f21875a;

        public CallableC9602a(AbstractC9809e eVar) {
            this.f21875a = eVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public AbstractC9143h<Void> call() throws Exception {
            return C9601m.this.m14755a(this.f21875a);
        }
    }

    /* renamed from: h.i.c.n.d.h.m$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/m$b.class */
    public class RunnableC9603b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9809e f21877a;

        public RunnableC9603b(AbstractC9809e eVar) {
            this.f21877a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9601m.this.m14755a(this.f21877a);
        }
    }

    /* renamed from: h.i.c.n.d.h.m$c */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/m$c.class */
    public class CallableC9604c implements Callable<Boolean> {
        public CallableC9604c() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            try {
                boolean d = C9601m.this.f21866e.m14738d();
                C9513b a = C9513b.m15015a();
                a.m15013a("Initialization marker file removed: " + d);
                return Boolean.valueOf(d);
            } catch (Exception e) {
                C9513b.m15015a().m15010b("Problem encountered deleting Crashlytics initialization marker.", e);
                return false;
            }
        }
    }

    /* renamed from: h.i.c.n.d.h.m$d */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/m$d.class */
    public class CallableC9605d implements Callable<Boolean> {
        public CallableC9605d() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            return Boolean.valueOf(C9601m.this.f21868g.m14821c());
        }
    }

    public C9601m(C9435c cVar, C9621y yVar, AbstractC9512a aVar, C9613t tVar, AbstractC9529b bVar, AbstractC9522a aVar2, ExecutorService executorService) {
        this.f21863b = cVar;
        this.f21864c = tVar;
        this.f21862a = cVar.m15173b();
        this.f21869h = yVar;
        this.f21874m = aVar;
        this.f21870i = bVar;
        this.f21871j = aVar2;
        this.f21872k = executorService;
        this.f21873l = new C9550i(executorService);
    }

    /* renamed from: a */
    public static boolean m14752a(String str, boolean z) {
        if (!z) {
            C9513b.m15015a().m15013a("Configured not to require a build ID.");
            return true;
        } else if (!C9546h.m14920b(str)) {
            return true;
        } else {
            Log.e("FirebaseCrashlytics", MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
            Log.e("FirebaseCrashlytics", ".     |  | ");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".   \\ |  | /");
            Log.e("FirebaseCrashlytics", ".    \\    /");
            Log.e("FirebaseCrashlytics", ".     \\  /");
            Log.e("FirebaseCrashlytics", ".      \\/");
            Log.e("FirebaseCrashlytics", MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
            Log.e("FirebaseCrashlytics", "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app's build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account.");
            Log.e("FirebaseCrashlytics", MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
            Log.e("FirebaseCrashlytics", ".      /\\");
            Log.e("FirebaseCrashlytics", ".     /  \\");
            Log.e("FirebaseCrashlytics", ".    /    \\");
            Log.e("FirebaseCrashlytics", ".   / |  | \\");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
            return false;
        }
    }

    /* renamed from: e */
    public static String m14742e() {
        return "17.3.0";
    }

    /* renamed from: a */
    public final AbstractC9143h<Void> m14755a(AbstractC9809e eVar) {
        m14744d();
        this.f21868g.m14876a();
        try {
            this.f21870i.mo14975a(C9595l.m14769a(this));
            AbstractC9817e a = eVar.mo14147a();
            if (!a.mo14138a().f22276a) {
                C9513b.m15015a().m15013a("Collection of crash reports disabled in Crashlytics settings.");
                return C9148k.m16000a((Exception) new RuntimeException("Collection of crash reports disabled in Crashlytics settings."));
            }
            if (!this.f21868g.m14831b(a.mo14136b().f22277a)) {
                C9513b.m15015a().m15013a("Could not finalize previous sessions.");
            }
            return this.f21868g.m14875a(1.0f, eVar.mo14146b());
        } catch (Exception e) {
            C9513b.m15015a().m15010b("Crashlytics encountered a problem during asynchronous initialization.", e);
            return C9148k.m16000a(e);
        } finally {
            m14746c();
        }
    }

    /* renamed from: a */
    public final void m14758a() {
        try {
            Boolean.TRUE.equals((Boolean) C9596l0.m14767a(this.f21873l.m14885b(new CallableC9605d())));
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public void m14754a(String str) {
        this.f21868g.m14871a(System.currentTimeMillis() - this.f21865d, str);
    }

    /* renamed from: a */
    public void m14753a(String str, String str2) {
        this.f21868g.m14825b(str, str2);
    }

    /* renamed from: a */
    public void m14751a(@NonNull Throwable th) {
        this.f21868g.m14839a(Thread.currentThread(), th);
    }

    /* renamed from: b */
    public AbstractC9143h<Void> m14748b(AbstractC9809e eVar) {
        return C9596l0.m14759a(this.f21872k, new CallableC9602a(eVar));
    }

    /* renamed from: b */
    public void m14747b(String str) {
        this.f21868g.m14813d(str);
    }

    /* renamed from: b */
    public boolean m14750b() {
        return this.f21866e.m14739c();
    }

    /* renamed from: c */
    public void m14746c() {
        this.f21873l.m14885b(new CallableC9604c());
    }

    /* renamed from: c */
    public final void m14745c(AbstractC9809e eVar) {
        Future<?> submit = this.f21872k.submit(new RunnableC9603b(eVar));
        C9513b.m15015a().m15013a("Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            submit.get(4L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            C9513b.m15015a().m15010b("Crashlytics was interrupted during initialization.", e);
        } catch (ExecutionException e2) {
            C9513b.m15015a().m15010b("Problem encountered during Crashlytics initialization.", e2);
        } catch (TimeoutException e3) {
            C9513b.m15015a().m15010b("Crashlytics timed out during initialization.", e3);
        }
    }

    /* renamed from: d */
    public void m14744d() {
        this.f21873l.m14891a();
        this.f21866e.m14741a();
        C9513b.m15015a().m15013a("Initialization marker file created.");
    }

    /* renamed from: d */
    public boolean m14743d(AbstractC9809e eVar) {
        String e = C9546h.m14915e(this.f21862a);
        C9513b a = C9513b.m15015a();
        a.m15013a("Mapping file ID is: " + e);
        if (m14752a(e, C9546h.m14936a(this.f21862a, "com.crashlytics.RequireBuildId", true))) {
            String b = this.f21863b.m15169d().m15149b();
            try {
                C9513b a2 = C9513b.m15015a();
                a2.m15009c("Initializing Crashlytics " + m14742e());
                C9777i iVar = new C9777i(this.f21862a);
                this.f21867f = new C9606n("crash_marker", iVar);
                this.f21866e = new C9606n("initialization_marker", iVar);
                C9767c cVar = new C9767c();
                C9533b a3 = C9533b.m14968a(this.f21862a, this.f21869h, b, e, new C9831a(this.f21862a));
                C9513b a4 = C9513b.m15015a();
                a4.m15013a("Installer package name is: " + a3.f21707c);
                this.f21868g = new C9558k(this.f21862a, this.f21873l, cVar, this.f21869h, this.f21864c, iVar, this.f21867f, a3, null, null, this.f21874m, this.f21871j, eVar);
                boolean b2 = m14750b();
                m14758a();
                this.f21868g.m14840a(Thread.getDefaultUncaughtExceptionHandler(), eVar);
                if (!b2 || !C9546h.m14922b(this.f21862a)) {
                    C9513b.m15015a().m15013a("Exception handling initialization successful");
                    return true;
                }
                C9513b.m15015a().m15013a("Crashlytics did not finish previous background initialization. Initializing synchronously.");
                m14745c(eVar);
                return false;
            } catch (Exception e2) {
                C9513b.m15015a().m15010b("Crashlytics was not started due to an exception during initialization", e2);
                this.f21868g = null;
                return false;
            }
        } else {
            throw new IllegalStateException("The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app's build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account.");
        }
    }
}
