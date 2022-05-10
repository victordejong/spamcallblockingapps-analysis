package com.moat.analytics.mobile.inm;

import android.os.Handler;
import android.os.Looper;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.moat.analytics.mobile.inm.w */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/w.class */
public class C8586w {

    /* renamed from: h */
    public static C8586w f33354h;

    /* renamed from: i */
    public static final Queue<C8593c> f33355i = new ConcurrentLinkedQueue();

    /* renamed from: j */
    public Handler f33363j;

    /* renamed from: f */
    public long f33361f = 1800000;

    /* renamed from: g */
    public long f33362g = 60000;

    /* renamed from: a */
    public volatile EnumC8594d f33356a = EnumC8594d.OFF;

    /* renamed from: b */
    public volatile boolean f33357b = false;

    /* renamed from: c */
    public volatile boolean f33358c = false;

    /* renamed from: d */
    public volatile int f33359d = 200;

    /* renamed from: e */
    public volatile int f33360e = 10;

    /* renamed from: k */
    public final AtomicBoolean f33364k = new AtomicBoolean(false);

    /* renamed from: l */
    public volatile long f33365l = 0;

    /* renamed from: m */
    public final AtomicInteger f33366m = new AtomicInteger(0);

    /* renamed from: n */
    public final AtomicBoolean f33367n = new AtomicBoolean(false);

    /* renamed from: com.moat.analytics.mobile.inm.w$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/w$a.class */
    public class RunnableC8590a implements Runnable {

        /* renamed from: b */
        public final Handler f33373b;

        /* renamed from: c */
        public final String f33374c;

        /* renamed from: d */
        public final AbstractC8595e f33375d;

        public RunnableC8590a(String str, Handler handler, AbstractC8595e eVar) {
            this.f33375d = eVar;
            this.f33373b = handler;
            this.f33374c = "https://z.moatads.com/" + str + "/android/c334ae8/status.json";
        }

        /* renamed from: a */
        private void m5054a() {
            String b = m5052b();
            final C8561l lVar = new C8561l(b);
            C8586w.this.f33357b = lVar.m5145a();
            C8586w.this.f33358c = lVar.m5142b();
            C8586w.this.f33359d = lVar.m5140c();
            C8586w.this.f33360e = lVar.m5138d();
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.moat.analytics.mobile.inm.w.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        RunnableC8590a.this.f33375d.mo5051a(lVar);
                    } catch (Exception e) {
                        C8562m.m5135a(e);
                    }
                }
            });
            C8586w.this.f33365l = System.currentTimeMillis();
            C8586w.this.f33367n.compareAndSet(true, false);
            if (b != null) {
                C8586w.this.f33366m.set(0);
            } else if (C8586w.this.f33366m.incrementAndGet() < 10) {
                C8586w wVar = C8586w.this;
                wVar.m5068a(wVar.f33362g);
            }
        }

        /* renamed from: b */
        private String m5052b() {
            String str;
            try {
                str = C8572q.m5096a(this.f33374c + "?ts=" + System.currentTimeMillis() + "&v=2.5.0").m5241b();
            } catch (Exception e) {
                str = null;
            }
            return str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                m5054a();
            } catch (Exception e) {
                C8562m.m5135a(e);
            }
            this.f33373b.removeCallbacks(this);
            Looper myLooper = Looper.myLooper();
            if (myLooper != null) {
                myLooper.quit();
            }
        }
    }

    /* renamed from: com.moat.analytics.mobile.inm.w$b */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/w$b.class */
    public interface AbstractC8592b {
        /* renamed from: c */
        void mo5042c();

        /* renamed from: d */
        void mo5041d();
    }

    /* renamed from: com.moat.analytics.mobile.inm.w$c */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/w$c.class */
    public class C8593c {

        /* renamed from: a */
        public final Long f33378a;

        /* renamed from: b */
        public final AbstractC8592b f33379b;

        public C8593c(Long l, AbstractC8592b bVar) {
            this.f33378a = l;
            this.f33379b = bVar;
        }
    }

    /* renamed from: com.moat.analytics.mobile.inm.w$d */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/w$d.class */
    public enum EnumC8594d {
        OFF,
        ON
    }

    /* renamed from: com.moat.analytics.mobile.inm.w$e */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/w$e.class */
    public interface AbstractC8595e {
        /* renamed from: a */
        void mo5051a(C8561l lVar);
    }

    public C8586w() {
        try {
            this.f33363j = new Handler(Looper.getMainLooper());
        } catch (Exception e) {
            C8562m.m5135a(e);
        }
    }

    /* renamed from: a */
    public static C8586w m5069a() {
        C8586w wVar;
        synchronized (C8586w.class) {
            try {
                if (f33354h == null) {
                    f33354h = new C8586w();
                }
                wVar = f33354h;
            } catch (Throwable th) {
                throw th;
            }
        }
        return wVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m5068a(final long j) {
        if (this.f33367n.compareAndSet(false, true)) {
            C8571p.m5104a(3, "OnOff", this, "Performing status check.");
            new Thread() { // from class: com.moat.analytics.mobile.inm.w.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Looper.prepare();
                    Handler handler = new Handler();
                    handler.postDelayed(new RunnableC8590a("INM", handler, new AbstractC8595e() { // from class: com.moat.analytics.mobile.inm.w.1.1
                        @Override // com.moat.analytics.mobile.inm.C8586w.AbstractC8595e
                        /* renamed from: a */
                        public void mo5051a(C8561l lVar) {
                            synchronized (C8586w.f33355i) {
                                try {
                                    boolean z = ((C8560k) MoatAnalytics.getInstance()).f33301a;
                                    if (C8586w.this.f33356a != lVar.m5137e() || (C8586w.this.f33356a == EnumC8594d.OFF && z)) {
                                        C8586w.this.f33356a = lVar.m5137e();
                                        if (C8586w.this.f33356a == EnumC8594d.OFF && z) {
                                            C8586w.this.f33356a = EnumC8594d.ON;
                                        }
                                        if (C8586w.this.f33356a == EnumC8594d.ON) {
                                            C8571p.m5104a(3, "OnOff", this, "Moat enabled - Version 2.5.0");
                                        }
                                        for (C8593c cVar : C8586w.f33355i) {
                                            if (C8586w.this.f33356a == EnumC8594d.ON) {
                                                cVar.f33379b.mo5042c();
                                            } else {
                                                cVar.f33379b.mo5041d();
                                            }
                                        }
                                    }
                                    while (!C8586w.f33355i.isEmpty()) {
                                        C8586w.f33355i.remove();
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
    public void m5059d() {
        synchronized (f33355i) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                Iterator<C8593c> it = f33355i.iterator();
                while (it.hasNext()) {
                    if (currentTimeMillis - it.next().f33378a.longValue() >= 60000) {
                        it.remove();
                    }
                }
                if (f33355i.size() >= 15) {
                    for (int i = 0; i < 5; i++) {
                        f33355i.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: e */
    private void m5057e() {
        if (this.f33364k.compareAndSet(false, true)) {
            this.f33363j.postDelayed(new Runnable() { // from class: com.moat.analytics.mobile.inm.w.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (C8586w.f33355i.size() > 0) {
                            C8586w.this.m5059d();
                            C8586w.this.f33363j.postDelayed(this, 60000L);
                            return;
                        }
                        C8586w.this.f33364k.compareAndSet(true, false);
                        C8586w.this.f33363j.removeCallbacks(this);
                    } catch (Exception e) {
                        C8562m.m5135a(e);
                    }
                }
            }, 60000L);
        }
    }

    /* renamed from: a */
    public void m5067a(AbstractC8592b bVar) {
        if (this.f33356a == EnumC8594d.ON) {
            bVar.mo5042c();
            return;
        }
        m5059d();
        f33355i.add(new C8593c(Long.valueOf(System.currentTimeMillis()), bVar));
        m5057e();
    }

    /* renamed from: b */
    public void m5064b() {
        if (System.currentTimeMillis() - this.f33365l > this.f33361f) {
            m5068a(0L);
        }
    }
}
