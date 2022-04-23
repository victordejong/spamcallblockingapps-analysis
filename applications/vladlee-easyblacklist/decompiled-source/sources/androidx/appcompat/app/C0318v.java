package androidx.appcompat.app;

import android.view.View;
import androidx.core.p037g.AbstractC0716ad;
import androidx.core.p037g.C0717ae;
/* renamed from: androidx.appcompat.app.v */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/v.class */
final class C0318v extends C0717ae {

    /* renamed from: a */
    final /* synthetic */ RunnableC0317u f1341a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0318v(RunnableC0317u uVar) {
        this.f1341a = uVar;
    }

    @Override // androidx.core.p037g.C0717ae, androidx.core.p037g.AbstractC0716ad
    /* renamed from: a */
    public final void mo8442a(View view) {
        this.f1341a.f1340a.f1150h.setVisibility(0);
    }

    @Override // androidx.core.p037g.C0717ae, androidx.core.p037g.AbstractC0716ad
    /* renamed from: b */
    public final void mo8441b(View view) {
        this.f1341a.f1340a.f1150h.setAlpha(1.0f);
        this.f1341a.f1340a.f1153k.m8448a((AbstractC0716ad) null);
        this.f1341a.f1340a.f1153k = null;
    }
}
