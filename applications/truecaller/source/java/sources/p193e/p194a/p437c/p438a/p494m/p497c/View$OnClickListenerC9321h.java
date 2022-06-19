package p193e.p194a.p437c.p438a.p494m.p497c;

import android.view.View;
import android.widget.EditText;
import p193e.p194a.p437c.p438a.p477g.C9090z0;
import s1.a.l;
/* renamed from: e.a.c.a.m.c.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/h.class */
public final class View$OnClickListenerC9321h implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ AbstractC9319g f28340a;

    public View$OnClickListenerC9321h(AbstractC9319g abstractC9319g) {
        this.f28340a = abstractC9319g;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AbstractC9319g abstractC9319g = this.f28340a;
        l[] lVarArr = AbstractC9319g.f28338b;
        C9090z0 m27699QA = abstractC9319g.m27699QA();
        AbstractC9319g abstractC9319g2 = this.f28340a;
        EditText editText = m27699QA.f27745a;
        s1.z.c.l.d(editText, "appVersion");
        String obj = editText.getText().toString();
        EditText editText2 = m27699QA.f27746b;
        s1.z.c.l.d(editText2, "countryCode");
        String obj2 = editText2.getText().toString();
        EditText editText3 = m27699QA.f27748d;
        s1.z.c.l.d(editText3, "offsetVersion");
        abstractC9319g2.mo27701OA(obj, obj2, editText3.getText().toString());
    }
}
