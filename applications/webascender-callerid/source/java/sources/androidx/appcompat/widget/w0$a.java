package androidx.appcompat.widget;

import android.view.View;
import android.view.Window;
import androidx.appcompat.view.menu.a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/w0$a.class */
class w0$a implements View.OnClickListener {

    /* renamed from: f */
    final a f597f;

    /* renamed from: g */
    final /* synthetic */ w0 f598g;

    w0$a(w0 w0Var) {
        this.f598g = w0Var;
        this.f597f = new a(w0Var.a.getContext(), 0, 16908332, 0, 0, w0Var.i);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        w0 w0Var = this.f598g;
        Window.Callback callback = w0Var.l;
        if (callback == null || !w0Var.m) {
            return;
        }
        callback.onMenuItemSelected(0, this.f597f);
    }
}
