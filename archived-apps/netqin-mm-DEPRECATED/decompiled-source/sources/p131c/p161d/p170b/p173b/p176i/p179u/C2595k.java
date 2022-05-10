package p131c.p161d.p170b.p173b.p176i.p179u;

import android.content.Context;
import p131c.p161d.p170b.p173b.p176i.p180v.p181a.AbstractC2598b;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.b.b.i.u.k */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/u/k.class */
public final class C2595k implements AbstractC2598b<C2593j> {

    /* renamed from: a */
    public final AbstractC9866a<Context> f9660a;

    /* renamed from: b */
    public final AbstractC9866a<C2591h> f9661b;

    public C2595k(AbstractC9866a<Context> aVar, AbstractC9866a<C2591h> aVar2) {
        this.f9660a = aVar;
        this.f9661b = aVar2;
    }

    /* renamed from: a */
    public static C2593j m29460a(Context context, Object obj) {
        return new C2593j(context, (C2591h) obj);
    }

    /* renamed from: a */
    public static C2595k m29459a(AbstractC9866a<Context> aVar, AbstractC9866a<C2591h> aVar2) {
        return new C2595k(aVar, aVar2);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C2593j get() {
        return m29460a(this.f9660a.get(), this.f9661b.get());
    }
}
