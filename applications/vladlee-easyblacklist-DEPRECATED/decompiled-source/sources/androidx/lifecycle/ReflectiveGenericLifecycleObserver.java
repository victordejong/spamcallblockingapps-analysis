package androidx.lifecycle;

import androidx.lifecycle.AbstractC0927f;
import androidx.lifecycle.C0920a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReflectiveGenericLifecycleObserver.class */
public class ReflectiveGenericLifecycleObserver implements AbstractC0930g {

    /* renamed from: a */
    private final Object f3886a;

    /* renamed from: b */
    private final C0920a.C0921a f3887b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f3886a = obj;
        this.f3887b = C0920a.f3889a.m7590b(this.f3886a.getClass());
    }

    @Override // androidx.lifecycle.AbstractC0930g
    /* renamed from: a */
    public final void mo6700a(AbstractC0932i iVar, AbstractC0927f.EnumC0928a aVar) {
        this.f3887b.m7588a(iVar, aVar, this.f3886a);
    }
}
