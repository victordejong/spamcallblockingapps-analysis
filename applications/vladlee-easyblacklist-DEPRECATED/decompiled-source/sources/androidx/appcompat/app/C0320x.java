package androidx.appcompat.app;

import android.view.View;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.core.p037g.AbstractC0716ad;
import androidx.core.p037g.C0717ae;
import androidx.core.p037g.C0741t;
/* renamed from: androidx.appcompat.app.x */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/x.class */
final class C0320x extends C0717ae {

    /* renamed from: a */
    final /* synthetic */ AppCompatDelegateImpl.C0266c f1343a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0320x(AppCompatDelegateImpl.C0266c cVar) {
        this.f1343a = cVar;
    }

    @Override // androidx.core.p037g.C0717ae, androidx.core.p037g.AbstractC0716ad
    /* renamed from: b */
    public final void mo8441b(View view) {
        AppCompatDelegateImpl.this.f1150h.setVisibility(8);
        if (AppCompatDelegateImpl.this.f1151i != null) {
            AppCompatDelegateImpl.this.f1151i.dismiss();
        } else if (AppCompatDelegateImpl.this.f1150h.getParent() instanceof View) {
            C0741t.m8312s((View) AppCompatDelegateImpl.this.f1150h.getParent());
        }
        AppCompatDelegateImpl.this.f1150h.removeAllViews();
        AppCompatDelegateImpl.this.f1153k.m8448a((AbstractC0716ad) null);
        AppCompatDelegateImpl.this.f1153k = null;
    }
}
