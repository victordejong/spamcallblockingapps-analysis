package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$h.class */
class c$h implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AbstractC0252b0 f1468f;

    /* renamed from: g */
    final /* synthetic */ View f1469g;

    /* renamed from: h */
    final /* synthetic */ Rect f1470h;

    c$h(c cVar, AbstractC0252b0 abstractC0252b0, View view, Rect rect) {
        this.f1468f = abstractC0252b0;
        this.f1469g = view;
        this.f1470h = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1468f.m5837k(this.f1469g, this.f1470h);
    }
}
