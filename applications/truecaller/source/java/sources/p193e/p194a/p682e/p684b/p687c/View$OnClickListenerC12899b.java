package p193e.p194a.p682e.p684b.p687c;

import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
/* renamed from: e.a.e.b.c.b */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/c/b.class */
public final class View$OnClickListenerC12899b implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ SwitchCompat f37485a;

    public View$OnClickListenerC12899b(SwitchCompat switchCompat) {
        this.f37485a = switchCompat;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SwitchCompat switchCompat = this.f37485a;
        if (switchCompat != null) {
            switchCompat.toggle();
        }
    }
}
