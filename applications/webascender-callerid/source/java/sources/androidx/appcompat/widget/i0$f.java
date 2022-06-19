package androidx.appcompat.widget;

import f.h.l.t;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i0$f.class */
public class i0$f implements Runnable {

    /* renamed from: f */
    final /* synthetic */ i0 f514f;

    i0$f(i0 i0Var) {
        this.f514f = i0Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0101e0 c0101e0 = this.f514f.h;
        if (c0101e0 == null || !t.P(c0101e0) || this.f514f.h.getCount() <= this.f514f.h.getChildCount()) {
            return;
        }
        int childCount = this.f514f.h.getChildCount();
        i0 i0Var = this.f514f;
        if (childCount > i0Var.t) {
            return;
        }
        i0Var.J.setInputMethodMode(2);
        this.f514f.b();
    }
}
