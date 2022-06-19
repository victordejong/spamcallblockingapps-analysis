package p193e.p194a.p437c.p438a.p442b.p443a;

import android.widget.CompoundButton;
import android.widget.TextView;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.a.l;
/* renamed from: e.a.c.a.b.a.w */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/w.class */
public final class C8752w implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ C8749v f26723a;

    public C8752w(C8749v c8749v) {
        this.f26723a = c8749v;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            C8749v c8749v = this.f26723a;
            l[] lVarArr = C8749v.f26712i;
            TextView textView = c8749v.m28092OA().f27627b;
            s1.z.c.l.d(textView, "binding.changeSettings");
            C19286f.m13684T(textView);
            return;
        }
        C8749v c8749v2 = this.f26723a;
        l[] lVarArr2 = C8749v.f26712i;
        TextView textView2 = c8749v2.m28092OA().f27627b;
        s1.z.c.l.d(textView2, "binding.changeSettings");
        C19286f.m13687Q(textView2);
    }
}
