package androidx.viewpager.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.core.p037g.AbstractC0737p;
import androidx.core.p037g.C0719ag;
import androidx.core.p037g.C0741t;
/* renamed from: androidx.viewpager.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/g.class */
final class C1295g implements AbstractC0737p {

    /* renamed from: a */
    final /* synthetic */ ViewPager f5475a;

    /* renamed from: b */
    private final Rect f5476b = new Rect();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1295g(ViewPager viewPager) {
        this.f5475a = viewPager;
    }

    @Override // androidx.core.p037g.AbstractC0737p
    /* renamed from: a */
    public final C0719ag mo971a(View view, C0719ag agVar) {
        C0719ag a = C0741t.m8347a(view, agVar);
        if (a.m8430f()) {
            return a;
        }
        Rect rect = this.f5476b;
        rect.left = a.m8438a();
        rect.top = a.m8434b();
        rect.right = a.m8433c();
        rect.bottom = a.m8432d();
        int childCount = this.f5475a.getChildCount();
        for (int i = 0; i < childCount; i++) {
            C0719ag b = C0741t.m8335b(this.f5475a.getChildAt(i), a);
            rect.left = Math.min(b.m8438a(), rect.left);
            rect.top = Math.min(b.m8434b(), rect.top);
            rect.right = Math.min(b.m8433c(), rect.right);
            rect.bottom = Math.min(b.m8432d(), rect.bottom);
        }
        return a.m8437a(rect.left, rect.top, rect.right, rect.bottom);
    }
}
