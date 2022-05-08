package p081h.p203i.p325c.p337n.p338d.p339f;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import p081h.p203i.p325c.p337n.p338d.C9513b;
/* renamed from: h.i.c.n.d.f.c */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/f/c.class */
public class C9524c implements AbstractC9523b, AbstractC9522a {

    /* renamed from: a */
    public final C9526e f21692a;

    /* renamed from: b */
    public final int f21693b;

    /* renamed from: c */
    public final TimeUnit f21694c;

    /* renamed from: d */
    public final Object f21695d = new Object();

    /* renamed from: e */
    public CountDownLatch f21696e;

    public C9524c(@NonNull C9526e eVar, int i, TimeUnit timeUnit) {
        this.f21692a = eVar;
        this.f21693b = i;
        this.f21694c = timeUnit;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p339f.AbstractC9522a
    /* renamed from: a */
    public void mo14976a(@NonNull String str, @Nullable Bundle bundle) {
        synchronized (this.f21695d) {
            C9513b.m15015a().m15013a("Logging Crashlytics event to Firebase");
            this.f21696e = new CountDownLatch(1);
            this.f21692a.mo14976a(str, bundle);
            C9513b.m15015a().m15013a("Awaiting app exception callback from FA...");
            try {
                if (this.f21696e.await(this.f21693b, this.f21694c)) {
                    C9513b.m15015a().m15013a("App exception callback received from FA listener.");
                } else {
                    C9513b.m15015a().m15013a("Timeout exceeded while awaiting app exception callback from FA listener.");
                }
            } catch (InterruptedException e) {
                C9513b.m15015a().m15013a("Interrupted while awaiting app exception callback from FA listener.");
            }
            this.f21696e = null;
        }
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p339f.AbstractC9523b
    public void onEvent(@NonNull String str, @NonNull Bundle bundle) {
        CountDownLatch countDownLatch = this.f21696e;
        if (countDownLatch != null && "_ae".equals(str)) {
            countDownLatch.countDown();
        }
    }
}
