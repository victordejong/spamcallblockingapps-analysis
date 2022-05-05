package androidx.appcompat.app;

import android.view.View;
/* renamed from: androidx.appcompat.app.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/b.class */
final class View$OnClickListenerC0296b implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ C0274a f1299a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC0296b(C0274a aVar) {
        this.f1299a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f1299a.f1203a) {
            this.f1299a.m9866b();
        } else if (this.f1299a.f1204b != null) {
            this.f1299a.f1204b.onClick(view);
        }
    }
}
