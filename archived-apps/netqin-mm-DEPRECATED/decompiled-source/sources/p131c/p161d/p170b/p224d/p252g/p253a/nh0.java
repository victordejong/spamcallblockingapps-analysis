package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzaa;
import com.google.android.gms.internal.ads.zzaj;
/* renamed from: c.d.b.d.g.a.nh0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/nh0.class */
public final class nh0 implements Runnable {

    /* renamed from: a */
    public final zzaa f14251a;

    /* renamed from: b */
    public final zzaj f14252b;

    /* renamed from: c */
    public final Runnable f14253c;

    public nh0(zzaa zzaaVar, zzaj zzajVar, Runnable runnable) {
        this.f14251a = zzaaVar;
        this.f14252b = zzajVar;
        this.f14253c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f14251a.m16958e();
        if (this.f14252b.m16732a()) {
            this.f14251a.mo15541a((zzaa) this.f14252b.f24141a);
        } else {
            this.f14251a.m16966a(this.f14252b.f24143c);
        }
        if (this.f14252b.f24144d) {
            this.f14251a.m16964a("intermediate-response");
        } else {
            this.f14251a.m16961b("done");
        }
        Runnable runnable = this.f14253c;
        if (runnable != null) {
            runnable.run();
        }
    }
}
