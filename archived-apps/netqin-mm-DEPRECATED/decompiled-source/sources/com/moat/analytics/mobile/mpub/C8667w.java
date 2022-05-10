package com.moat.analytics.mobile.mpub;

import android.os.Handler;
import android.os.Looper;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.moat.analytics.mobile.mpub.w */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/w.class */
public class C8667w {

    /* renamed from: h */
    public static C8667w f33571h;

    /* renamed from: i */
    public static final Queue<C8674c> f33572i = new ConcurrentLinkedQueue();

    /* renamed from: j */
    public Handler f33580j;

    /* renamed from: f */
    public long f33578f = 1800000;

    /* renamed from: g */
    public long f33579g = 60000;

    /* renamed from: a */
    public volatile EnumC8675d f33573a = EnumC8675d.OFF;

    /* renamed from: b */
    public volatile boolean f33574b = false;

    /* renamed from: c */
    public volatile boolean f33575c = false;

    /* renamed from: d */
    public volatile int f33576d = 200;

    /* renamed from: e */
    public volatile int f33577e = 10;

    /* renamed from: k */
    public final AtomicBoolean f33581k = new AtomicBoolean(false);

    /* renamed from: l */
    public volatile long f33582l = 0;

    /* renamed from: m */
    public final AtomicInteger f33583m = new AtomicInteger(0);

    /* renamed from: n */
    public final AtomicBoolean f33584n = new AtomicBoolean(false);

    /* renamed from: com.moat.analytics.mobile.mpub.w$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/w$a.class */
    public class RunnableC8671a implements Runnable {

        /* renamed from: b */
        public final Handler f33590b;

        /* renamed from: c */
        public final String f33591c;

        /* renamed from: d */
        public final AbstractC8676e f33592d;

        public RunnableC8671a(String str, Handler handler, AbstractC8676e eVar) {
            this.f33592d = eVar;
            this.f33590b = handler;
            this.f33591c = "https://z.moatads.com/" + str + "/android/9d24c90/status.json";
        }

        /* renamed from: a */
        private void m4798a() {
            String b = m4796b();
            final C8642l lVar = new C8642l(b);
            C8667w.this.f33574b = lVar.m4889a();
            C8667w.this.f33575c = lVar.m4886b();
            C8667w.this.f33576d = lVar.m4884c();
            C8667w.this.f33577e = lVar.m4882d();
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.moat.analytics.mobile.mpub.w.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        RunnableC8671a.this.f33592d.mo4795a(lVar);
                    } catch (Exception e) {
                        C8643m.m4879a(e);
                    }
                }
            });
            C8667w.this.f33582l = System.currentTimeMillis();
            C8667w.this.f33584n.compareAndSet(true, false);
            if (b != null) {
                C8667w.this.f33583m.set(0);
            } else if (C8667w.this.f33583m.incrementAndGet() < 10) {
                C8667w wVar = C8667w.this;
                wVar.m4812a(wVar.f33579g);
            }
        }

        /* renamed from: b */
        private String m4796b() {
            String str;
            try {
                str = C8653q.m4840a(this.f33591c + "?ts=" + System.currentTimeMillis() + "&v=2.4.5").m4985b();
            } catch (Exception e) {
                str = null;
            }
            return str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                m4798a();
            } catch (Exception e) {
                C8643m.m4879a(e);
            }
            this.f33590b.removeCallbacks(this);
            Looper myLooper = Looper.myLooper();
            if (myLooper != null) {
                myLooper.quit();
            }
        }
    }

    /* renamed from: com.moat.analytics.mobile.mpub.w$b */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/w$b.class */
    public interface AbstractC8673b {
        /* renamed from: c */
        void mo4786c();

        /* renamed from: d */
        void mo4785d();
    }

    /* renamed from: com.moat.analytics.mobile.mpub.w$c */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/w$c.class */
    public class C8674c {

        /* renamed from: a */
        public final Long f33595a;

        /* renamed from: b */
        public final AbstractC8673b f33596b;

        public C8674c(Long l, AbstractC8673b bVar) {
            this.f33595a = l;
            this.f33596b = bVar;
        }
    }

    /* renamed from: com.moat.analytics.mobile.mpub.w$d */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/w$d.class */
    public enum EnumC8675d {
        OFF,
        ON
    }

    /* renamed from: com.moat.analytics.mobile.mpub.w$e */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/w$e.class */
    public interface AbstractC8676e {
        /* renamed from: a */
        void mo4795a(C8642l lVar);
    }

    public C8667w() {
        try {
            this.f33580j = new Handler(Looper.getMainLooper());
        } catch (Exception e) {
            C8643m.m4879a(e);
        }
    }

    /* renamed from: a */
    public static C8667w m4813a() {
        C8667w wVar;
        synchronized (C8667w.class) {
            try {
                if (f33571h == null) {
                    f33571h = new C8667w();
                }
                wVar = f33571h;
            } catch (Throwable th) {
                throw th;
            }
        }
        return wVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4812a(final long j) {
        if (this.f33584n.compareAndSet(false, true)) {
            C8652p.m4848a(3, "OnOff", this, "Performing status check.");
            new Thread() { // from class: com.moat.analytics.mobile.mpub.w.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Looper.prepare();
                    Handler handler = new Handler();
                    handler.postDelayed(new RunnableC8671a("MPUB", handler, new AbstractC8676e() { // from class: com.moat.analytics.mobile.mpub.w.1.1
                        @Override // com.moat.analytics.mobile.mpub.C8667w.AbstractC8676e
                        /* renamed from: a */
                        public void mo4795a(C8642l lVar) {
                            synchronized (C8667w.f33572i) {
                                try {
                                    boolean z = ((C8641k) MoatAnalytics.getInstance()).f33518a;
                                    if (C8667w.this.f33573a != lVar.m4881e() || (C8667w.this.f33573a == EnumC8675d.OFF && z)) {
                                        C8667w.this.f33573a = lVar.m4881e();
                                        if (C8667w.this.f33573a == EnumC8675d.OFF && z) {
                                            C8667w.this.f33573a = EnumC8675d.ON;
                                        }
                                        if (C8667w.this.f33573a == EnumC8675d.ON) {
                                            C8652p.m4848a(3, "OnOff", this, "Moat enabled - Version 2.4.5");
                                        }
                                        for (C8674c cVar : C8667w.f33572i) {
                                            if (C8667w.this.f33573a == EnumC8675d.ON) {
                                                cVar.f33596b.mo4786c();
                                            } else {
                                                cVar.f33596b.mo4785d();
                                            }
                                        }
                                    }
                                    while (!C8667w.f33572i.isEmpty()) {
                                        C8667w.f33572i.remove();
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                    }), j);
                    Looper.loop();
                }
            }.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m4803d() {
        synchronized (f33572i) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                Iterator<C8674c> it = f33572i.iterator();
                while (it.hasNext()) {
                    if (currentTimeMillis - it.next().f33595a.longValue() >= 60000) {
                        it.remove();
                    }
                }
                if (f33572i.size() >= 15) {
                    for (int i = 0; i < 5; i++) {
                        f33572i.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: e */
    private void m4801e() {
        if (this.f33581k.compareAndSet(false, true)) {
            this.f33580j.postDelayed(new Runnable() { // from class: com.moat.analytics.mobile.mpub.w.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (C8667w.f33572i.size() > 0) {
                            C8667w.this.m4803d();
                            C8667w.this.f33580j.postDelayed(this, 60000L);
                        } else {
                            C8667w.this.f33581k.compareAndSet(true, false);
                            C8667w.this.f33580j.removeCallbacks(this);
                        }
                    } catch (Exception e) {
                        C8643m.m4879a(e);
                    }
                }
            }, 60000L);
        }
    }

    /* renamed from: a */
    public void m4811a(AbstractC8673b bVar) {
        if (this.f33573a == EnumC8675d.ON) {
            bVar.mo4786c();
            return;
        }
        m4803d();
        f33572i.add(new C8674c(Long.valueOf(System.currentTimeMillis()), bVar));
        m4801e();
    }

    /* renamed from: b */
    public void m4808b() {
        if (System.currentTimeMillis() - this.f33582l > this.f33578f) {
            m4812a(0L);
        }
    }
}
