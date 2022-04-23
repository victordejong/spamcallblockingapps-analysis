package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0927f;
/* renamed from: androidx.savedstate.b */
/* loaded from: classes-dex2jar.jar:androidx/savedstate/b.class */
public final class C1153b {

    /* renamed from: a */
    private final AbstractC1154c f4920a;

    /* renamed from: b */
    private final C1150a f4921b = new C1150a();

    private C1153b(AbstractC1154c cVar) {
        this.f4920a = cVar;
    }

    /* renamed from: a */
    public static C1153b m6693a(AbstractC1154c cVar) {
        return new C1153b(cVar);
    }

    /* renamed from: a */
    public final C1150a m6695a() {
        return this.f4921b;
    }

    /* renamed from: a */
    public final void m6694a(Bundle bundle) {
        AbstractC0927f lifecycle = this.f4920a.getLifecycle();
        if (lifecycle.mo7584a() == AbstractC0927f.EnumC0929b.INITIALIZED) {
            lifecycle.mo7580a(new Recreator(this.f4920a));
            this.f4921b.m6698a(lifecycle, bundle);
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    /* renamed from: b */
    public final void m6692b(Bundle bundle) {
        this.f4921b.m6699a(bundle);
    }
}
