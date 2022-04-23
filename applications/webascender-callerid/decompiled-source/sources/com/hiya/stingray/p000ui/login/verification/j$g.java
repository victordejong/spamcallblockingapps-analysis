package com.hiya.stingray.p000ui.login.verification;

import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.fragment.app.e;
import com.hiya.stingray.o;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.login.verification.j$g */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/verification/j$g.class */
final class j$g implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ j f128f;

    j$g(j jVar) {
        this.f128f = jVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        TextView textView = (TextView) this.f128f.f1(o.V0);
        k.c(textView, "errorTv");
        textView.setVisibility(8);
        if (j.j1(this.f128f)) {
            this.f128f.q1().m1184f();
            a i1 = j.i1(this.f128f);
            EditText editText = (EditText) this.f128f.f1(o.O0);
            k.c(editText, "editText");
            String obj = editText.getText().toString();
            e activity = this.f128f.getActivity();
            if (activity != null) {
                k.c(activity, "activity!!");
                i1.y(obj, activity);
                return;
            }
            k.o();
            throw null;
        }
        this.f128f.q1().m1189a();
        a i12 = j.i1(this.f128f);
        StringBuilder sb = new StringBuilder();
        sb.append(j.h1(this.f128f));
        EditText editText2 = (EditText) this.f128f.f1(o.O0);
        k.c(editText2, "editText");
        sb.append(editText2.getText().toString());
        String sb2 = sb.toString();
        e activity2 = this.f128f.getActivity();
        if (activity2 != null) {
            k.c(activity2, "activity!!");
            i12.A(sb2, activity2);
            return;
        }
        k.o();
        throw null;
    }
}
