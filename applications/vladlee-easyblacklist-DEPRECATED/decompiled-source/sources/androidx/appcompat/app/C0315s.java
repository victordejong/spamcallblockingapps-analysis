package androidx.appcompat.app;

import android.graphics.Rect;
import androidx.appcompat.widget.AbstractC0441aj;
/* renamed from: androidx.appcompat.app.s */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/s.class */
final class C0315s implements AbstractC0441aj.AbstractC0442a {

    /* renamed from: a */
    final /* synthetic */ AppCompatDelegateImpl f1338a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0315s(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f1338a = appCompatDelegateImpl;
    }

    @Override // androidx.appcompat.widget.AbstractC0441aj.AbstractC0442a
    /* renamed from: a */
    public final void mo9163a(Rect rect) {
        rect.top = this.f1338a.m9894i(rect.top);
    }
}
