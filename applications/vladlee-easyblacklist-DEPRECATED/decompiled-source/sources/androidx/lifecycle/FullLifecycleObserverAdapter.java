package androidx.lifecycle;

import androidx.lifecycle.AbstractC0927f;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/FullLifecycleObserverAdapter.class */
public class FullLifecycleObserverAdapter implements AbstractC0930g {

    /* renamed from: a */
    private final AbstractC0923b f3867a;

    /* renamed from: b */
    private final AbstractC0930g f3868b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FullLifecycleObserverAdapter(AbstractC0923b bVar, AbstractC0930g gVar) {
        this.f3867a = bVar;
        this.f3868b = gVar;
    }

    @Override // androidx.lifecycle.AbstractC0930g
    /* renamed from: a */
    public final void mo6700a(AbstractC0932i iVar, AbstractC0927f.EnumC0928a aVar) {
        switch (C0924c.f3896a[aVar.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            default:
                AbstractC0930g gVar = this.f3868b;
                if (gVar != null) {
                    gVar.mo6700a(iVar, aVar);
                    return;
                }
                return;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
    }
}
