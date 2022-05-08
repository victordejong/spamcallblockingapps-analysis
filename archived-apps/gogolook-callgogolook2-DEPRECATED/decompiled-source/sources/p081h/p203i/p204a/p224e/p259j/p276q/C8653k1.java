package p081h.p203i.p204a.p224e.p259j.p276q;

import android.database.ContentObserver;
import android.os.Handler;
/* renamed from: h.i.a.e.j.q.k1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/k1.class */
public final class C8653k1 extends ContentObserver {

    /* renamed from: a */
    public final /* synthetic */ C8644j1 f19798a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8653k1(C8644j1 j1Var, Handler handler) {
        super(null);
        this.f19798a = j1Var;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.f19798a.m17447b();
        this.f19798a.m17445d();
    }
}
