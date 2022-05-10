package p131c.p161d.p282e.p289l.p290d.p291f;

import android.os.Bundle;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p282e.p289l.p290d.C5192b;
/* renamed from: c.d.e.l.d.f.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/f/c.class */
public class C5203c implements AbstractC5202b, AbstractC5201a {

    /* renamed from: a */
    public final C5205e f17876a;

    /* renamed from: b */
    public final int f17877b;

    /* renamed from: c */
    public final TimeUnit f17878c;

    /* renamed from: d */
    public final Object f17879d = new Object();

    /* renamed from: e */
    public CountDownLatch f17880e;

    public C5203c(C5205e eVar, int i, TimeUnit timeUnit) {
        this.f17876a = eVar;
        this.f17877b = i;
        this.f17878c = timeUnit;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p291f.AbstractC5202b
    /* renamed from: a */
    public void mo24281a(String str, Bundle bundle) {
        CountDownLatch countDownLatch = this.f17880e;
        if (countDownLatch != null && "_ae".equals(str)) {
            countDownLatch.countDown();
        }
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p291f.AbstractC5201a
    /* renamed from: b */
    public void mo24279b(String str, Bundle bundle) {
        synchronized (this.f17879d) {
            C5192b.m24319a().m24317a("Logging Crashlytics event to Firebase");
            this.f17880e = new CountDownLatch(1);
            this.f17876a.mo24279b(str, bundle);
            C5192b.m24319a().m24317a("Awaiting app exception callback from FA...");
            try {
                if (this.f17880e.await(this.f17877b, this.f17878c)) {
                    C5192b.m24319a().m24317a("App exception callback received from FA listener.");
                } else {
                    C5192b.m24319a().m24317a("Timeout exceeded while awaiting app exception callback from FA listener.");
                }
            } catch (InterruptedException e) {
                C5192b.m24319a().m24317a("Interrupted while awaiting app exception callback from FA listener.");
            }
            this.f17880e = null;
        }
    }
}
