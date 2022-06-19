package p193e.p194a.p786g0.p787a;

import android.view.View;
import com.google.android.material.textfield.TextInputEditText;
import p193e.p194a.p786g0.p787a.C14323b;
import p193e.p194a.p786g0.p791m.C14405a;
import s1.z.c.l;
/* renamed from: e.a.g0.a.d */
/* loaded from: classes14-dex2jar.jar:e/a/g0/a/d.class */
public final class View$OnClickListenerC14329d implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C14405a f41425a;

    /* renamed from: b */
    public final /* synthetic */ C14323b f41426b;

    public View$OnClickListenerC14329d(C14405a c14405a, C14323b c14323b) {
        this.f41425a = c14405a;
        this.f41426b = c14323b;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C14323b.AbstractC14326d abstractC14326d = this.f41426b.f41422e;
        if (abstractC14326d != null) {
            TextInputEditText textInputEditText = this.f41425a.f41545b;
            l.d(textInputEditText, "emailEditText");
            abstractC14326d.mo20264et(String.valueOf(textInputEditText.getText()));
        }
        this.f41426b.dismiss();
    }
}
