package androidx.appcompat.widget;

import android.view.View;
import androidx.appcompat.view.menu.C0358a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.bs */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/bs.class */
public final class View$OnClickListenerC0490bs implements View.OnClickListener {

    /* renamed from: a */
    final C0358a f2359a;

    /* renamed from: b */
    final /* synthetic */ C0489br f2360b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC0490bs(C0489br brVar) {
        this.f2360b = brVar;
        this.f2359a = new C0358a(this.f2360b.f2342a.getContext(), this.f2360b.f2343b);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f2360b.f2344c != null && this.f2360b.f2345d) {
            this.f2360b.f2344c.onMenuItemSelected(0, this.f2359a);
        }
    }
}
