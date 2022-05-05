package androidx.appcompat.widget;

import android.view.View;
import androidx.core.p037g.C0717ae;
/* renamed from: androidx.appcompat.widget.bt */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/bt.class */
final class C0491bt extends C0717ae {

    /* renamed from: a */
    final /* synthetic */ int f2361a;

    /* renamed from: b */
    final /* synthetic */ C0489br f2362b;

    /* renamed from: c */
    private boolean f2363c = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0491bt(C0489br brVar, int i) {
        this.f2362b = brVar;
        this.f2361a = i;
    }

    @Override // androidx.core.p037g.C0717ae, androidx.core.p037g.AbstractC0716ad
    /* renamed from: a */
    public final void mo8442a(View view) {
        this.f2362b.f2342a.setVisibility(0);
    }

    @Override // androidx.core.p037g.C0717ae, androidx.core.p037g.AbstractC0716ad
    /* renamed from: b */
    public final void mo8441b(View view) {
        if (!this.f2363c) {
            this.f2362b.f2342a.setVisibility(this.f2361a);
        }
    }

    @Override // androidx.core.p037g.C0717ae, androidx.core.p037g.AbstractC0716ad
    /* renamed from: c */
    public final void mo8440c(View view) {
        this.f2363c = true;
    }
}
