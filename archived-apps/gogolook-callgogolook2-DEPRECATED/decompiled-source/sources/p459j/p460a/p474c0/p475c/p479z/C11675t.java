package p459j.p460a.p474c0.p475c.p479z;

import android.os.AsyncTask;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
/* renamed from: j.a.c0.c.z.t */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/t.class */
public class C11675t {

    /* renamed from: a */
    public static final Executor f26203a = Executors.newFixedThreadPool(10);

    /* renamed from: b */
    public static final Executor f26204b = Executors.newSingleThreadExecutor(new ThreadFactoryC11676a());

    /* renamed from: j.a.c0.c.z.t$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/t$a.class */
    public static final class ThreadFactoryC11676a implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setPriority(1);
            return thread;
        }
    }

    /* renamed from: j.a.c0.c.z.t$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/t$b.class */
    public class AsyncTaskC11677b extends AsyncTask<Void, Void, C11678c<T>> {

        /* renamed from: a */
        public Exception f26205a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC11646d f26206b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC11672r f26207c;

        public AsyncTaskC11677b(AbstractC11646d dVar, AbstractC11672r rVar) {
            this.f26206b = dVar;
            this.f26207c = rVar;
        }

        /* renamed from: a */
        public C11678c<T> doInBackground(Void... voidArr) {
            AbstractC11646d dVar = this.f26206b;
            if (dVar != null && !dVar.mo9044d()) {
                return null;
            }
            try {
                return C11675t.this.m8649b(this.f26207c);
            } catch (Exception e) {
                this.f26205a = e;
                return null;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public void onPostExecute(C11678c<T> cVar) {
            boolean z = true;
            if (cVar != 0) {
                C12151d.m7008a(this.f26205a);
                if (cVar.f26209a.m8609i() <= 0) {
                    z = false;
                }
                C12151d.m6999b(z);
                try {
                    if (this.f26206b != null) {
                        this.f26206b.mo7924a(this.f26206b, cVar.f26209a, cVar.f26210b);
                    }
                } finally {
                    cVar.f26209a.m8606l();
                    cVar.m8644a();
                }
            } else if (this.f26205a != null) {
                C12153d0.m6986b("MessagingApp", "Asynchronous media loading failed, key=" + this.f26207c.getKey(), this.f26205a);
                AbstractC11646d dVar = this.f26206b;
                if (dVar != null) {
                    dVar.mo7923a(dVar, this.f26205a);
                }
            } else {
                AbstractC11646d dVar2 = this.f26206b;
                boolean z2 = true;
                if (dVar2 != null) {
                    z2 = !dVar2.mo9044d();
                }
                C12151d.m6999b(z2);
                if (C12153d0.m6992a("MessagingApp", 2)) {
                    C12153d0.m6983d("MessagingApp", "media request not processed, no longer bound; key=" + C12153d0.m6993a(this.f26207c.getKey()));
                }
            }
        }
    }

    /* renamed from: j.a.c0.c.z.t$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/t$c.class */
    public class C11678c<T extends AbstractC11685y> {

        /* renamed from: a */
        public final T f26209a;

        /* renamed from: b */
        public final boolean f26210b;

        /* renamed from: c */
        public final List<AbstractC11672r<T>> f26211c;

        public C11678c(T t, boolean z, List<AbstractC11672r<T>> list) {
            this.f26209a = t;
            this.f26210b = z;
            this.f26211c = list;
        }

        /* renamed from: a */
        public void m8644a() {
            for (AbstractC11672r<T> rVar : this.f26211c) {
                C11675t.this.m8653a(rVar, C11675t.f26204b);
            }
        }
    }

    /* renamed from: j.a.c0.c.z.t$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/t$d.class */
    public interface AbstractC11679d<T extends AbstractC11685y> {
        /* renamed from: a */
        void mo7924a(AbstractC11672r<T> rVar, T t, boolean z);

        /* renamed from: a */
        void mo7923a(AbstractC11672r<T> rVar, Exception exc);
    }

    /* renamed from: b */
    public static C11675t m8650b() {
        return AbstractC11516a.m9413n().mo9401h();
    }

    /* renamed from: a */
    public final <T extends AbstractC11685y> T m8656a(AbstractC11672r<T> rVar) {
        C11670p<T> b;
        T a;
        if (rVar.mo8662a() != 3 || (b = rVar.mo8660b()) == null || (a = b.m8670a(rVar.getKey())) == null) {
            return null;
        }
        return a;
    }

    /* renamed from: a */
    public final <T extends AbstractC11685y> T m8654a(AbstractC11672r<T> rVar, List<AbstractC11672r<T>> list) throws Exception {
        T a = rVar.mo8661a(list);
        C12151d.m7000b(a);
        a.m8617b();
        if (a.mo8608j()) {
            m8655a((AbstractC11672r<AbstractC11672r<T>>) rVar, (AbstractC11672r<T>) a);
        }
        return a;
    }

    /* renamed from: a */
    public <T extends AbstractC11685y> void m8655a(AbstractC11672r<T> rVar, T t) {
        C12151d.m6999b(t != null);
        C11670p<T> b = rVar.mo8660b();
        if (b != null) {
            b.mo8637a(rVar.getKey(), t);
            if (C12153d0.m6992a("MessagingApp", 2)) {
                C12153d0.m6983d("MessagingApp", "added media resource to " + b.m8669b() + ". key=" + C12153d0.m6993a(rVar.getKey()));
            }
        }
    }

    /* renamed from: a */
    public final <T extends AbstractC11685y> void m8653a(AbstractC11672r<T> rVar, Executor executor) {
        AbstractC11646d dVar = rVar instanceof AbstractC11646d ? (AbstractC11646d) rVar : null;
        if (dVar == null || dVar.mo9044d()) {
            new AsyncTaskC11677b(dVar, rVar).executeOnExecutor(executor, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final <T extends AbstractC11685y> C11678c<T> m8649b(AbstractC11672r<T> rVar) throws Exception {
        AbstractC11685y yVar;
        ArrayList arrayList = new ArrayList();
        AbstractC11685y a = m8656a(rVar);
        if (a == null) {
            yVar = m8654a(rVar, arrayList);
        } else if (a.mo8607k()) {
            AbstractC11672r<? extends AbstractC11685y> a2 = a.mo8618a(rVar);
            C12151d.m7000b(a2);
            a.m8606l();
            yVar = m8654a((AbstractC11672r<AbstractC11685y>) a2, (List<AbstractC11672r<AbstractC11685y>>) arrayList);
        } else {
            yVar = a;
        }
        return new C11678c<>(yVar, a != null, arrayList);
    }

    /* renamed from: c */
    public <T extends AbstractC11685y> void m8648c(AbstractC11672r<T> rVar) {
        m8653a(rVar, f26203a);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x008d  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T extends p459j.p460a.p474c0.p475c.p479z.AbstractC11685y> T m8647d(p459j.p460a.p474c0.p475c.p479z.AbstractC11672r<T> r5) {
        /*
            r4 = this;
            p459j.p460a.p474c0.p499h.C12151d.m7002b()
            r0 = r4
            r1 = r5
            j.a.c0.c.z.t$c r0 = r0.m8649b(r1)     // Catch: all -> 0x0041, Exception -> 0x0047
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r6
            T extends j.a.c0.c.z.y r0 = r0.f26209a     // Catch: all -> 0x0038, Exception -> 0x003c
            int r0 = r0.m8609i()     // Catch: all -> 0x0038, Exception -> 0x003c
            if (r0 <= 0) goto L_0x001b
            r0 = 1
            r8 = r0
            goto L_0x001e
        L_0x001b:
            r0 = 0
            r8 = r0
        L_0x001e:
            r0 = r6
            r7 = r0
            r0 = r8
            p459j.p460a.p474c0.p499h.C12151d.m6999b(r0)     // Catch: all -> 0x0038, Exception -> 0x003c
            r0 = r6
            r7 = r0
            r0 = r6
            T extends j.a.c0.c.z.y r0 = r0.f26209a     // Catch: all -> 0x0038, Exception -> 0x003c
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0035
            r0 = r6
            r0.m8644a()
        L_0x0035:
            r0 = r9
            return r0
        L_0x0038:
            r5 = move-exception
            goto L_0x0089
        L_0x003c:
            r9 = move-exception
            goto L_0x004b
        L_0x0041:
            r5 = move-exception
            r0 = 0
            r7 = r0
            goto L_0x0089
        L_0x0047:
            r9 = move-exception
            r0 = 0
            r6 = r0
        L_0x004b:
            r0 = r6
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x0038
            r10 = r0
            r0 = r6
            r7 = r0
            r0 = r10
            r0.<init>()     // Catch: all -> 0x0038
            r0 = r6
            r7 = r0
            r0 = r10
            java.lang.String r1 = "Synchronous media loading failed, key="
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0038
            r0 = r6
            r7 = r0
            r0 = r10
            r1 = r5
            java.lang.String r1 = r1.getKey()     // Catch: all -> 0x0038
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0038
            r0 = r6
            r7 = r0
            java.lang.String r0 = "MessagingApp"
            r1 = r10
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x0038
            r2 = r9
            p459j.p460a.p474c0.p499h.C12153d0.m6986b(r0, r1, r2)     // Catch: all -> 0x0038
            r0 = r6
            if (r0 == 0) goto L_0x0087
            r0 = r6
            r0.m8644a()
        L_0x0087:
            r0 = 0
            return r0
        L_0x0089:
            r0 = r7
            if (r0 == 0) goto L_0x0091
            r0 = r7
            r0.m8644a()
        L_0x0091:
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p475c.p479z.C11675t.m8647d(j.a.c0.c.z.r):j.a.c0.c.z.y");
    }
}
