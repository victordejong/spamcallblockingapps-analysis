package p193e.p194a.p852i.p867c0.p868o;

import android.widget.RadioButton;
import android.widget.RadioGroup;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
/* renamed from: e.a.i.c0.o.h$a */
/* loaded from: classes3-dex2jar.jar:e/a/i/c0/o/h$a.class */
public final class h$a implements RadioGroup.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ h f43017a;

    public h$a(h hVar) {
        this.f43017a = hVar;
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public final void onCheckedChanged(RadioGroup radioGroup, int i) {
        RadioButton radioButton = (RadioButton) radioGroup.findViewById(i);
        h hVar = this.f43017a;
        AbstractC15068e abstractC15068e = hVar.f43016d;
        String m35978b = hVar.f43014b.m35978b();
        l.d(radioButton, "button");
        abstractC15068e.m19184S(m35978b, radioButton.getText().toString());
        C19286f.m13689O(this.f43017a.d());
    }
}
