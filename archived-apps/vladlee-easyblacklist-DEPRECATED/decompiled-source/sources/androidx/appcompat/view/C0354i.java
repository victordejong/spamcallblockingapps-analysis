package androidx.appcompat.view;

import android.view.View;
import androidx.core.p037g.C0717ae;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.view.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/i.class */
public final class C0354i extends C0717ae {

    /* renamed from: a */
    final /* synthetic */ C0353h f1519a;

    /* renamed from: b */
    private boolean f1520b = false;

    /* renamed from: c */
    private int f1521c = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0354i(C0353h hVar) {
        this.f1519a = hVar;
    }

    @Override // androidx.core.p037g.C0717ae, androidx.core.p037g.AbstractC0716ad
    /* renamed from: a */
    public final void mo8442a(View view) {
        if (!this.f1520b) {
            this.f1520b = true;
            if (this.f1519a.f1514b != null) {
                this.f1519a.f1514b.mo8442a(null);
            }
        }
    }

    @Override // androidx.core.p037g.C0717ae, androidx.core.p037g.AbstractC0716ad
    /* renamed from: b */
    public final void mo8441b(View view) {
        int i = this.f1521c + 1;
        this.f1521c = i;
        if (i == this.f1519a.f1513a.size()) {
            if (this.f1519a.f1514b != null) {
                this.f1519a.f1514b.mo8441b(null);
            }
            this.f1521c = 0;
            this.f1520b = false;
            this.f1519a.m9660b();
        }
    }
}
