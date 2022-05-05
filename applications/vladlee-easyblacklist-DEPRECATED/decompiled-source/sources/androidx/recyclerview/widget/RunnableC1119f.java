package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.C1116e;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.recyclerview.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/f.class */
final class RunnableC1119f implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ArrayList f4802a;

    /* renamed from: b */
    final /* synthetic */ C1116e f4803b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1119f(C1116e eVar, ArrayList arrayList) {
        this.f4803b = eVar;
        this.f4802a = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Iterator it = this.f4802a.iterator();
        while (it.hasNext()) {
            C1116e.C1118b bVar = (C1116e.C1118b) it.next();
            C1116e eVar = this.f4803b;
            RecyclerView.AbstractC1082t tVar = bVar.f4797a;
            int i = bVar.f4798b;
            int i2 = bVar.f4799c;
            int i3 = bVar.f4800d;
            int i4 = bVar.f4801e;
            View view = tVar.f4658a;
            int i5 = i3 - i;
            int i6 = i4 - i2;
            if (i5 != 0) {
                view.animate().translationX(0.0f);
            }
            if (i6 != 0) {
                view.animate().translationY(0.0f);
            }
            ViewPropertyAnimator animate = view.animate();
            eVar.f4784e.add(tVar);
            animate.setDuration(eVar.m7162e()).setListener(new C1124k(eVar, tVar, i5, view, i6, animate)).start();
        }
        this.f4802a.clear();
        this.f4803b.f4781b.remove(this.f4802a);
    }
}
