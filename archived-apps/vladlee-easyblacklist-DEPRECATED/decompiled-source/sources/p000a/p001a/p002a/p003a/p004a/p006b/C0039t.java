package p000a.p001a.p002a.p003a.p004a.p006b;

import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0137d;
/* renamed from: a.a.a.a.a.b.t */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/t.class */
final class C0039t extends AbstractRunnableC0025i {

    /* renamed from: a */
    final /* synthetic */ String f72a;

    /* renamed from: b */
    final /* synthetic */ ExecutorService f73b;

    /* renamed from: c */
    final /* synthetic */ long f74c = 2;

    /* renamed from: d */
    final /* synthetic */ TimeUnit f75d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0039t(String str, ExecutorService executorService, TimeUnit timeUnit) {
        this.f72a = str;
        this.f73b = executorService;
        this.f75d = timeUnit;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p006b.AbstractRunnableC0025i
    public final void onRun() {
        try {
            AbstractC0150o c = C0137d.m10155c();
            c.mo10135a("Fabric", "Executing shutdown hook for " + this.f72a);
            this.f73b.shutdown();
            if (!this.f73b.awaitTermination(this.f74c, this.f75d)) {
                AbstractC0150o c2 = C0137d.m10155c();
                c2.mo10135a("Fabric", this.f72a + " did not shut down in the allocated time. Requesting immediate shutdown.");
                this.f73b.shutdownNow();
            }
        } catch (InterruptedException e) {
            C0137d.m10155c().mo10135a("Fabric", String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", this.f72a));
            this.f73b.shutdownNow();
        }
    }
}
