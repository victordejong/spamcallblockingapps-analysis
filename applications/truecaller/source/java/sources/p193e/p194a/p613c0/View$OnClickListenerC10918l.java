package p193e.p194a.p613c0;

import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Toast;
import p193e.p194a.p1220s4.AbstractC20235a;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.c0.l */
/* loaded from: classes4-dex2jar.jar:e/a/c0/l.class */
public final class View$OnClickListenerC10918l implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ Button f32424a;

    /* renamed from: b */
    public final /* synthetic */ C10902a f32425b;

    /* renamed from: c */
    public final /* synthetic */ EditText f32426c;

    public View$OnClickListenerC10918l(Button button, C10902a c10902a, EditText editText, LinearLayout linearLayout) {
        this.f32424a = button;
        this.f32425b = c10902a;
        this.f32426c = editText;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AbstractC20235a abstractC20235a = this.f32425b.f32376h;
        if (abstractC20235a == null) {
            l.l("remoteConfig");
            throw null;
        }
        Toast.makeText(this.f32424a.getContext(), h.c(abstractC20235a.getString(this.f32426c.getText().toString()), "not found"), 1).show();
    }
}
