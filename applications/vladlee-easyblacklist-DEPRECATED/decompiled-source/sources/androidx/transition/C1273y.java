package androidx.transition;

import android.view.View;
import androidx.transition.Transition;
import java.util.ArrayList;
/* renamed from: androidx.transition.y */
/* loaded from: classes-dex2jar.jar:androidx/transition/y.class */
final class C1273y implements Transition.AbstractC1183c {

    /* renamed from: a */
    final /* synthetic */ Object f5338a;

    /* renamed from: b */
    final /* synthetic */ ArrayList f5339b;

    /* renamed from: c */
    final /* synthetic */ Object f5340c;

    /* renamed from: d */
    final /* synthetic */ ArrayList f5341d;

    /* renamed from: e */
    final /* synthetic */ Object f5342e;

    /* renamed from: f */
    final /* synthetic */ ArrayList f5343f;

    /* renamed from: g */
    final /* synthetic */ C1270v f5344g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1273y(C1270v vVar, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
        this.f5344g = vVar;
        this.f5338a = obj;
        this.f5339b = arrayList;
        this.f5340c = obj2;
        this.f5341d = arrayList2;
        this.f5342e = obj3;
        this.f5343f = arrayList3;
    }

    @Override // androidx.transition.Transition.AbstractC1183c
    /* renamed from: a */
    public final void mo6479a() {
    }

    @Override // androidx.transition.Transition.AbstractC1183c
    /* renamed from: a */
    public final void mo6478a(Transition transition) {
    }

    @Override // androidx.transition.Transition.AbstractC1183c
    /* renamed from: b */
    public final void mo6477b() {
    }

    @Override // androidx.transition.Transition.AbstractC1183c
    /* renamed from: c */
    public final void mo6476c() {
        Object obj = this.f5338a;
        if (obj != null) {
            this.f5344g.mo6482b(obj, this.f5339b, (ArrayList<View>) null);
        }
        Object obj2 = this.f5340c;
        if (obj2 != null) {
            this.f5344g.mo6482b(obj2, this.f5341d, (ArrayList<View>) null);
        }
        Object obj3 = this.f5342e;
        if (obj3 != null) {
            this.f5344g.mo6482b(obj3, this.f5343f, (ArrayList<View>) null);
        }
    }
}
