package p193e.p194a.p852i.p879e.p883g.p884a.p886f.p888b;

import android.widget.RadioButton;
import android.widget.RadioGroup;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
/* renamed from: e.a.i.e.g.a.f.b.j$a */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/g/a/f/b/j$a.class */
public final class j$a implements RadioGroup.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ j f43117a;

    public j$a(j jVar) {
        this.f43117a = jVar;
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public final void onCheckedChanged(RadioGroup radioGroup, int i) {
        RadioButton radioButton = (RadioButton) radioGroup.findViewById(i);
        j jVar = this.f43117a;
        AbstractC15142h abstractC15142h = jVar.h;
        String str = jVar.f.h;
        l.d(radioButton, "button");
        abstractC15142h.m19127S(str, radioButton.getText().toString());
        C19286f.m13689O(this.f43117a.e());
    }
}
