package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.ComponentName;
/* renamed from: h.i.a.e.m.b.z2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/z2.class */
public final class RunnableC9095z2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ComponentName f20782a;

    /* renamed from: b */
    public final /* synthetic */ ServiceConnectionC9085x2 f20783b;

    public RunnableC9095z2(ServiceConnectionC9085x2 x2Var, ComponentName componentName) {
        this.f20783b = x2Var;
        this.f20782a = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f20783b.f20762c.m16537a(this.f20782a);
    }
}
