package p193e.p194a.p703e3.p710k;

import android.content.Context;
import javax.inject.Provider;
import p193e.p194a.p1129p5.p1135v0.AbstractC19335b;
/* renamed from: e.a.e3.k.h */
/* loaded from: classes6-dex2jar.jar:e/a/e3/k/h.class */
public final class C13432h implements Object<C13431g> {

    /* renamed from: a */
    public final Provider<Context> f38997a;

    /* renamed from: b */
    public final Provider<AbstractC19335b> f38998b;

    public C13432h(Provider<Context> provider, Provider<AbstractC19335b> provider2) {
        this.f38997a = provider;
        this.f38998b = provider2;
    }

    public Object get() {
        return new C13431g((Context) this.f38997a.get(), (AbstractC19335b) this.f38998b.get());
    }
}
