package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/g$a.class */
class g$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ ArrayList f2056f;

    /* renamed from: g */
    final /* synthetic */ g f2057g;

    g$a(g gVar, ArrayList arrayList) {
        this.f2057g = gVar;
        this.f2056f = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.f2056f.iterator();
        while (it.hasNext()) {
            g$j g_j = (g$j) it.next();
            this.f2057g.animateMoveImpl(g_j.f2090a, g_j.f2091b, g_j.f2092c, g_j.f2093d, g_j.f2094e);
        }
        this.f2056f.clear();
        this.f2057g.mMovesList.remove(this.f2056f);
    }
}
