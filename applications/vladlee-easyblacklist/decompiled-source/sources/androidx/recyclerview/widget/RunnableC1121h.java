package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.recyclerview.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h.class */
final class RunnableC1121h implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ArrayList f4806a;

    /* renamed from: b */
    final /* synthetic */ C1116e f4807b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1121h(C1116e eVar, ArrayList arrayList) {
        this.f4807b = eVar;
        this.f4806a = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Iterator it = this.f4806a.iterator();
        while (it.hasNext()) {
            RecyclerView.AbstractC1082t tVar = (RecyclerView.AbstractC1082t) it.next();
            C1116e eVar = this.f4807b;
            View view = tVar.f4658a;
            ViewPropertyAnimator animate = view.animate();
            eVar.f4783d.add(tVar);
            animate.alpha(1.0f).setDuration(eVar.m7160f()).setListener(new C1123j(eVar, tVar, view, animate)).start();
        }
        this.f4806a.clear();
        this.f4807b.f4780a.remove(this.f4806a);
    }
}
