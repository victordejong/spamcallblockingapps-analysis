package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0329h;
/* renamed from: androidx.savedstate.b */
/* loaded from: classes-dex2jar.jar:androidx/savedstate/b.class */
public final class C0442b {

    /* renamed from: a */
    private final c f2287a;

    /* renamed from: b */
    private final SavedStateRegistry f2288b = new SavedStateRegistry();

    private C0442b(c cVar) {
        this.f2287a = cVar;
    }

    /* renamed from: a */
    public static C0442b m4738a(c cVar) {
        return new C0442b(cVar);
    }

    /* renamed from: b */
    public SavedStateRegistry m4737b() {
        return this.f2288b;
    }

    /* renamed from: c */
    public void m4736c(Bundle bundle) {
        AbstractC0329h lifecycle = this.f2287a.getLifecycle();
        if (lifecycle.m5438b() == AbstractC0329h.EnumC0332c.INITIALIZED) {
            lifecycle.m5439a(new Recreator(this.f2287a));
            this.f2288b.m4744b(lifecycle, bundle);
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    /* renamed from: d */
    public void m4735d(Bundle bundle) {
        this.f2288b.m4743c(bundle);
    }
}
