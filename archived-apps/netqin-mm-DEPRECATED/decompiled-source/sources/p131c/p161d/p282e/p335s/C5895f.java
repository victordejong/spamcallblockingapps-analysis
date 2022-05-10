package p131c.p161d.p282e.p335s;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.installations.FirebaseInstallationsException;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p334r.AbstractC5887a;
import p131c.p161d.p282e.p335s.p336o.AbstractC5911c;
import p131c.p161d.p282e.p335s.p336o.C5910b;
import p131c.p161d.p282e.p335s.p337p.C5919c;
import p131c.p161d.p282e.p351v.AbstractC6063i;
/* renamed from: c.d.e.s.f */
/* loaded from: classes2-dex2jar.jar:c/d/e/s/f.class */
public class C5895f implements AbstractC5898g {

    /* renamed from: l */
    public static final Object f19202l = new Object();

    /* renamed from: m */
    public static final ThreadFactory f19203m = new ThreadFactoryC5896a();

    /* renamed from: a */
    public final C5128c f19204a;

    /* renamed from: b */
    public final C5919c f19205b;

    /* renamed from: c */
    public final PersistedInstallation f19206c;

    /* renamed from: d */
    public final C5906n f19207d;

    /* renamed from: e */
    public final C5910b f19208e;

    /* renamed from: f */
    public final C5904l f19209f;

    /* renamed from: g */
    public final Object f19210g;

    /* renamed from: h */
    public final ExecutorService f19211h;

    /* renamed from: i */
    public final ExecutorService f19212i;

    /* renamed from: j */
    public String f19213j;

    /* renamed from: k */
    public final List<AbstractC5905m> f19214k;

    /* renamed from: c.d.e.s.f$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/s/f$a.class */
    public class ThreadFactoryC5896a implements ThreadFactory {

        /* renamed from: a */
        public final AtomicInteger f19215a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f19215a.getAndIncrement())));
        }
    }

    /* renamed from: c.d.e.s.f$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/s/f$b.class */
    public static /* synthetic */ class C5897b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19216a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f19217b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x004a -> B:19:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004e -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0052 -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0056 -> B:21:0x003e). Please submit an issue!!! */
        static {
            int[] iArr = new int[TokenResult.ResponseCode.values().length];
            f19217b = iArr;
            try {
                iArr[TokenResult.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19217b[TokenResult.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19217b[TokenResult.ResponseCode.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[InstallationResponse.ResponseCode.values().length];
            f19216a = iArr2;
            try {
                iArr2[InstallationResponse.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19216a[InstallationResponse.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public C5895f(C5128c cVar, AbstractC5887a<AbstractC6063i> aVar, AbstractC5887a<HeartBeatInfo> aVar2) {
        this(new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f19203m), cVar, new C5919c(cVar.m24468b(), aVar, aVar2), new PersistedInstallation(cVar), C5906n.m22761d(), new C5910b(cVar), new C5904l());
    }

    public C5895f(ExecutorService executorService, C5128c cVar, C5919c cVar2, PersistedInstallation persistedInstallation, C5906n nVar, C5910b bVar, C5904l lVar) {
        this.f19210g = new Object();
        this.f19214k = new ArrayList();
        this.f19204a = cVar;
        this.f19205b = cVar2;
        this.f19206c = persistedInstallation;
        this.f19207d = nVar;
        this.f19208e = bVar;
        this.f19209f = lVar;
        this.f19211h = executorService;
        this.f19212i = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f19203m);
    }

    /* renamed from: a */
    public static C5895f m22806a(C5128c cVar) {
        Preconditions.m17283a(cVar != null, "Null is not a valid value of FirebaseApp.");
        return (C5895f) cVar.m24471a(AbstractC5898g.class);
    }

    /* renamed from: j */
    public static C5895f m22784j() {
        return m22806a(C5128c.m24458j());
    }

    /* renamed from: a */
    public final AbstractC5911c m22802a(AbstractC5911c cVar) throws FirebaseInstallationsException {
        TokenResult a = this.f19205b.m22718a(m22795c(), cVar.mo22745c(), m22786h(), cVar.mo22743e());
        int i = C5897b.f19217b[a.mo7280a().ordinal()];
        if (i == 1) {
            return cVar.m22749a(a.mo7279b(), a.mo7278c(), this.f19207d.m22764b());
        }
        if (i == 2) {
            return cVar.m22750a("BAD CONFIG");
        }
        if (i == 3) {
            m22800a((String) null);
            return cVar.m22733o();
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
    }

    /* renamed from: a */
    public final Task<AbstractC5902k> m22807a() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        m22803a(new C5900i(this.f19207d, taskCompletionSource));
        return taskCompletionSource.m8600a();
    }

    @Override // p131c.p161d.p282e.p335s.AbstractC5898g
    /* renamed from: a */
    public Task<AbstractC5902k> mo22783a(boolean z) {
        m22785i();
        Task<AbstractC5902k> a = m22807a();
        this.f19211h.execute(RunnableC5893d.m22809a(this, z));
        return a;
    }

    /* renamed from: a */
    public final void m22803a(AbstractC5905m mVar) {
        synchronized (this.f19210g) {
            this.f19214k.add(mVar);
        }
    }

    /* renamed from: a */
    public final void m22801a(Exception exc) {
        synchronized (this.f19210g) {
            try {
                Iterator<AbstractC5905m> it = this.f19214k.iterator();
                while (it.hasNext()) {
                    if (it.next().mo22769a(exc)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final void m22800a(String str) {
        synchronized (this) {
            this.f19213j = str;
        }
    }

    /* renamed from: b */
    public final Task<String> m22799b() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        m22803a(new C5901j(taskCompletionSource));
        return taskCompletionSource.m8600a();
    }

    /* renamed from: b */
    public final void m22797b(AbstractC5911c cVar) {
        synchronized (f19202l) {
            C5891b a = C5891b.m22811a(this.f19204a.m24468b(), "generatefid.lock");
            this.f19206c.m7294a(cVar);
            if (a != null) {
                a.m22812a();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0064  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m22796b(boolean r6) {
        /*
            r5 = this;
            r0 = r5
            c.d.e.s.o.c r0 = r0.m22788f()
            r7 = r0
            r0 = r7
            boolean r0 = r0.m22740h()     // Catch: FirebaseInstallationsException -> 0x0082
            if (r0 != 0) goto L_0x0032
            r0 = r7
            boolean r0 = r0.m22737k()     // Catch: FirebaseInstallationsException -> 0x0082
            if (r0 == 0) goto L_0x0016
            goto L_0x0032
        L_0x0016:
            r0 = r6
            if (r0 != 0) goto L_0x0029
            r0 = r5
            c.d.e.s.n r0 = r0.f19207d     // Catch: FirebaseInstallationsException -> 0x0082
            r1 = r7
            boolean r0 = r0.m22767a(r1)     // Catch: FirebaseInstallationsException -> 0x0082
            if (r0 == 0) goto L_0x0028
            goto L_0x0029
        L_0x0028:
            return
        L_0x0029:
            r0 = r5
            r1 = r7
            c.d.e.s.o.c r0 = r0.m22802a(r1)     // Catch: FirebaseInstallationsException -> 0x0082
            r7 = r0
            goto L_0x0038
        L_0x0032:
            r0 = r5
            r1 = r7
            c.d.e.s.o.c r0 = r0.m22791d(r1)     // Catch: FirebaseInstallationsException -> 0x0082
            r7 = r0
        L_0x0038:
            r0 = r5
            r1 = r7
            r0.m22797b(r1)
            r0 = r7
            boolean r0 = r0.m22738j()
            if (r0 == 0) goto L_0x004c
            r0 = r5
            r1 = r7
            java.lang.String r1 = r1.mo22745c()
            r0.m22800a(r1)
        L_0x004c:
            r0 = r7
            boolean r0 = r0.m22740h()
            if (r0 == 0) goto L_0x0064
            r0 = r5
            com.google.firebase.installations.FirebaseInstallationsException r1 = new com.google.firebase.installations.FirebaseInstallationsException
            r2 = r1
            com.google.firebase.installations.FirebaseInstallationsException$Status r3 = com.google.firebase.installations.FirebaseInstallationsException.Status.BAD_CONFIG
            r2.<init>(r3)
            r0.m22801a(r1)
            goto L_0x0081
        L_0x0064:
            r0 = r7
            boolean r0 = r0.m22739i()
            if (r0 == 0) goto L_0x007c
            r0 = r5
            java.io.IOException r1 = new java.io.IOException
            r2 = r1
            java.lang.String r3 = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."
            r2.<init>(r3)
            r0.m22801a(r1)
            goto L_0x0081
        L_0x007c:
            r0 = r5
            r1 = r7
            r0.m22789e(r1)
        L_0x0081:
            return
        L_0x0082:
            r7 = move-exception
            r0 = r5
            r1 = r7
            r0.m22801a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p282e.p335s.C5895f.m22796b(boolean):void");
    }

    /* renamed from: c */
    public String m22795c() {
        return this.f19204a.m24464d().m24447a();
    }

    /* renamed from: c */
    public final String m22794c(AbstractC5911c cVar) {
        if ((!this.f19204a.m24465c().equals("CHIME_ANDROID_SDK") && !this.f19204a.m24460h()) || !cVar.m22736l()) {
            return this.f19209f.m22773a();
        }
        String a = this.f19208e.m22760a();
        String str = a;
        if (TextUtils.isEmpty(a)) {
            str = this.f19209f.m22773a();
        }
        return str;
    }

    /* renamed from: c */
    public final void m22793c(boolean z) {
        AbstractC5911c g = m22787g();
        AbstractC5911c cVar = g;
        if (z) {
            cVar = g.m22734n();
        }
        m22789e(cVar);
        this.f19212i.execute(RunnableC5894e.m22808a(this, z));
    }

    /* renamed from: d */
    public final AbstractC5911c m22791d(AbstractC5911c cVar) throws FirebaseInstallationsException {
        InstallationResponse a = this.f19205b.m22717a(m22795c(), cVar.mo22745c(), m22786h(), m22792d(), (cVar.mo22745c() == null || cVar.mo22745c().length() != 11) ? null : this.f19208e.m22752d());
        int i = C5897b.f19216a[a.mo7289d().ordinal()];
        if (i == 1) {
            return cVar.m22748a(a.mo7291b(), a.mo7290c(), this.f19207d.m22764b(), a.mo7292a().mo7279b(), a.mo7292a().mo7278c());
        }
        if (i == 2) {
            return cVar.m22750a("BAD CONFIG");
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
    }

    /* renamed from: d */
    public String m22792d() {
        return this.f19204a.m24464d().m24445b();
    }

    /* renamed from: e */
    public final String m22790e() {
        String str;
        synchronized (this) {
            str = this.f19213j;
        }
        return str;
    }

    /* renamed from: e */
    public final void m22789e(AbstractC5911c cVar) {
        synchronized (this.f19210g) {
            try {
                Iterator<AbstractC5905m> it = this.f19214k.iterator();
                while (it.hasNext()) {
                    if (it.next().mo22770a(cVar)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: f */
    public final AbstractC5911c m22788f() {
        AbstractC5911c b;
        synchronized (f19202l) {
            C5891b a = C5891b.m22811a(this.f19204a.m24468b(), "generatefid.lock");
            b = this.f19206c.m7293b();
            if (a != null) {
                a.m22812a();
            }
        }
        return b;
    }

    /* renamed from: g */
    public final AbstractC5911c m22787g() {
        AbstractC5911c cVar;
        synchronized (f19202l) {
            C5891b a = C5891b.m22811a(this.f19204a.m24468b(), "generatefid.lock");
            AbstractC5911c b = this.f19206c.m7293b();
            cVar = b;
            if (b.m22739i()) {
                String c = m22794c(b);
                PersistedInstallation persistedInstallation = this.f19206c;
                cVar = b.m22746b(c);
                persistedInstallation.m7294a(cVar);
            }
            if (a != null) {
                a.m22812a();
            }
        }
        return cVar;
    }

    @Override // p131c.p161d.p282e.p335s.AbstractC5898g
    public Task<String> getId() {
        m22785i();
        String e = m22790e();
        if (e != null) {
            return Tasks.m8591a(e);
        }
        Task<String> b = m22799b();
        this.f19211h.execute(RunnableC5892c.m22810a(this));
        return b;
    }

    /* renamed from: h */
    public String m22786h() {
        return this.f19204a.m24464d().m24443d();
    }

    /* renamed from: i */
    public final void m22785i() {
        Preconditions.m17285a(m22792d(), (Object) "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.m17285a(m22786h(), (Object) "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.m17285a(m22795c(), (Object) "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.m17283a(C5906n.m22763b(m22792d()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.m17283a(C5906n.m22765a(m22795c()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }
}
