package p193e.p194a.p437c.p438a.p494m.p497c;

import android.text.Editable;
import android.view.View;
import android.widget.Toast;
import com.google.android.material.textfield.TextInputEditText;
import p193e.p194a.p437c.p596t.AbstractC10693a;
import s1.a.l;
/* renamed from: e.a.c.a.m.c.y */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/y.class */
public final class View$OnClickListenerC9366y implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C9364x f28465a;

    public View$OnClickListenerC9366y(C9364x c9364x) {
        this.f28465a = c9364x;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C9364x c9364x = this.f28465a;
        l[] lVarArr = C9364x.f28462c;
        TextInputEditText textInputEditText = c9364x.m27635OA().f27685a;
        s1.z.c.l.d(textInputEditText, "binding.flagValue");
        Editable text = textInputEditText.getText();
        AbstractC10693a abstractC10693a = this.f28465a.f28463a;
        if (abstractC10693a == null) {
            s1.z.c.l.l("qaManager");
            throw null;
        }
        abstractC10693a.mo25740h(String.valueOf(text));
        Toast.makeText(this.f28465a.getContext(), "The feature flag updated locally", 1).show();
    }
}
