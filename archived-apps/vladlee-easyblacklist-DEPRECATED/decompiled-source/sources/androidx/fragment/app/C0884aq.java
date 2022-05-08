package androidx.fragment.app;

import androidx.lifecycle.AbstractC0927f;
import androidx.lifecycle.AbstractC0932i;
import androidx.lifecycle.C0933j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.aq */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/aq.class */
public final class C0884aq implements AbstractC0932i {

    /* renamed from: a */
    private C0933j f3750a = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7786a() {
        if (this.f3750a == null) {
            this.f3750a = new C0933j(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7785a(AbstractC0927f.EnumC0928a aVar) {
        this.f3750a.m7583a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m7784b() {
        return this.f3750a != null;
    }

    @Override // androidx.lifecycle.AbstractC0932i
    public final AbstractC0927f getLifecycle() {
        m7786a();
        return this.f3750a;
    }
}
