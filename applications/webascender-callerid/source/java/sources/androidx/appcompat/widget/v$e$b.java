package androidx.appcompat.widget;

import android.view.ViewTreeObserver;
import androidx.appcompat.widget.v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v$e$b.class */
class v$e$b implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: f */
    final /* synthetic */ v.e f588f;

    v$e$b(v.e eVar) {
        this.f588f = eVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        v.e eVar = this.f588f;
        if (!eVar.U(eVar.R)) {
            this.f588f.dismiss();
            return;
        }
        this.f588f.S();
        v.e.R(this.f588f);
    }
}
