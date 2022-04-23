package androidx.appcompat.app;

import android.view.View;
import androidx.core.p037g.AbstractC0716ad;
import androidx.core.p037g.C0717ae;
import androidx.core.p037g.C0741t;
/* renamed from: androidx.appcompat.app.w */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/w.class */
final class C0319w extends C0717ae {

    /* renamed from: a */
    final /* synthetic */ AppCompatDelegateImpl f1342a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0319w(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f1342a = appCompatDelegateImpl;
    }

    @Override // androidx.core.p037g.C0717ae, androidx.core.p037g.AbstractC0716ad
    /* renamed from: a */
    public final void mo8442a(View view) {
        this.f1342a.f1150h.setVisibility(0);
        this.f1342a.f1150h.sendAccessibilityEvent(32);
        if (this.f1342a.f1150h.getParent() instanceof View) {
            C0741t.m8312s((View) this.f1342a.f1150h.getParent());
        }
    }

    @Override // androidx.core.p037g.C0717ae, androidx.core.p037g.AbstractC0716ad
    /* renamed from: b */
    public final void mo8441b(View view) {
        this.f1342a.f1150h.setAlpha(1.0f);
        this.f1342a.f1153k.m8448a((AbstractC0716ad) null);
        this.f1342a.f1153k = null;
    }
}
