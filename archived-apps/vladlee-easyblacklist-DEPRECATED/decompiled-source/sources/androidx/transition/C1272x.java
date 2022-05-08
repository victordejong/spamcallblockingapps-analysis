package androidx.transition;

import android.view.View;
import androidx.transition.Transition;
import java.util.ArrayList;
/* renamed from: androidx.transition.x */
/* loaded from: classes-dex2jar.jar:androidx/transition/x.class */
final class C1272x implements Transition.AbstractC1183c {

    /* renamed from: a */
    final /* synthetic */ View f5335a;

    /* renamed from: b */
    final /* synthetic */ ArrayList f5336b;

    /* renamed from: c */
    final /* synthetic */ C1270v f5337c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1272x(C1270v vVar, View view, ArrayList arrayList) {
        this.f5337c = vVar;
        this.f5335a = view;
        this.f5336b = arrayList;
    }

    @Override // androidx.transition.Transition.AbstractC1183c
    /* renamed from: a */
    public final void mo6479a() {
    }

    @Override // androidx.transition.Transition.AbstractC1183c
    /* renamed from: a */
    public final void mo6478a(Transition transition) {
        transition.mo6579b(this);
        this.f5335a.setVisibility(8);
        int size = this.f5336b.size();
        for (int i = 0; i < size; i++) {
            ((View) this.f5336b.get(i)).setVisibility(0);
        }
    }

    @Override // androidx.transition.Transition.AbstractC1183c
    /* renamed from: b */
    public final void mo6477b() {
    }

    @Override // androidx.transition.Transition.AbstractC1183c
    /* renamed from: c */
    public final void mo6476c() {
    }
}
