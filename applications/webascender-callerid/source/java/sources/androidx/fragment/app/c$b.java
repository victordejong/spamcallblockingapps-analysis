package androidx.fragment.app;

import androidx.fragment.app.AbstractC0265f0;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$b.class */
class c$b implements Runnable {

    /* renamed from: f */
    final /* synthetic */ List f1452f;

    /* renamed from: g */
    final /* synthetic */ AbstractC0265f0.C0269e f1453g;

    /* renamed from: h */
    final /* synthetic */ c f1454h;

    c$b(c cVar, List list, AbstractC0265f0.C0269e c0269e) {
        this.f1454h = cVar;
        this.f1452f = list;
        this.f1453g = c0269e;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f1452f.contains(this.f1453g)) {
            this.f1452f.remove(this.f1453g);
            this.f1454h.s(this.f1453g);
        }
    }
}
