package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.C1116e;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.recyclerview.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/g.class */
final class RunnableC1120g implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ArrayList f4804a;

    /* renamed from: b */
    final /* synthetic */ C1116e f4805b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1120g(C1116e eVar, ArrayList arrayList) {
        this.f4805b = eVar;
        this.f4804a = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Iterator it = this.f4804a.iterator();
        while (it.hasNext()) {
            C1116e.C1117a aVar = (C1116e.C1117a) it.next();
            C1116e eVar = this.f4805b;
            RecyclerView.AbstractC1082t tVar = aVar.f4791a;
            View view = null;
            View view2 = tVar == null ? null : tVar.f4658a;
            RecyclerView.AbstractC1082t tVar2 = aVar.f4792b;
            if (tVar2 != null) {
                view = tVar2.f4658a;
            }
            if (view2 != null) {
                ViewPropertyAnimator duration = view2.animate().setDuration(eVar.m7157h());
                eVar.f4786g.add(aVar.f4791a);
                duration.translationX(aVar.f4795e - aVar.f4793c);
                duration.translationY(aVar.f4796f - aVar.f4794d);
                duration.alpha(0.0f).setListener(new C1125l(eVar, aVar, duration, view2)).start();
            }
            if (view != null) {
                ViewPropertyAnimator animate = view.animate();
                eVar.f4786g.add(aVar.f4792b);
                animate.translationX(0.0f).translationY(0.0f).setDuration(eVar.m7157h()).alpha(1.0f).setListener(new C1126m(eVar, aVar, animate, view)).start();
            }
        }
        this.f4804a.clear();
        this.f4805b.f4782c.remove(this.f4804a);
    }
}
