package com.hiya.stingray.p000ui.login.verification;

import android.view.View;
import android.widget.EditText;
import androidx.fragment.app.e;
import com.hiya.stingray.o;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.login.verification.j$f */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/verification/j$f.class */
final class j$f implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ j f127f;

    j$f(j jVar) {
        this.f127f = jVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        EditText editText = (EditText) this.f127f.f1(o.O0);
        k.c(editText, "editText");
        editText.getText().clear();
        a i1 = j.i1(this.f127f);
        e activity = this.f127f.getActivity();
        if (activity != null) {
            k.c(activity, "activity!!");
            i1.z(activity);
            return;
        }
        k.o();
        throw null;
    }
}
