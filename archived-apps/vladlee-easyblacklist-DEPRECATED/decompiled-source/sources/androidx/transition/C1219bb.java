package androidx.transition;

import androidx.p026b.C0529a;
import androidx.transition.C1217ba;
import java.util.ArrayList;
/* renamed from: androidx.transition.bb */
/* loaded from: classes-dex2jar.jar:androidx/transition/bb.class */
final class C1219bb extends C1215az {

    /* renamed from: a */
    final /* synthetic */ C0529a f5235a;

    /* renamed from: b */
    final /* synthetic */ C1217ba.View$OnAttachStateChangeListenerC1218a f5236b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1219bb(C1217ba.View$OnAttachStateChangeListenerC1218a aVar, C0529a aVar2) {
        this.f5236b = aVar;
        this.f5235a = aVar2;
    }

    @Override // androidx.transition.C1215az, androidx.transition.Transition.AbstractC1183c
    /* renamed from: a */
    public final void mo6478a(Transition transition) {
        ((ArrayList) this.f5235a.get(this.f5236b.f5234b)).remove(transition);
    }
}
