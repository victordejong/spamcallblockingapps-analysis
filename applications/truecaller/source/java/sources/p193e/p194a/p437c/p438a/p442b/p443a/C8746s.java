package p193e.p194a.p437c.p438a.p442b.p443a;

import android.widget.CompoundButton;
import android.widget.TextView;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.a.l;
/* renamed from: e.a.c.a.b.a.s */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/s.class */
public final class C8746s implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ C8743r f26708a;

    public C8746s(C8743r c8743r) {
        this.f26708a = c8743r;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            C8743r c8743r = this.f26708a;
            l[] lVarArr = C8743r.f26697i;
            TextView textView = c8743r.m28095OA().f27656d;
            s1.z.c.l.d(textView, "binding.changeSettings");
            C19286f.m13684T(textView);
            return;
        }
        C8743r c8743r2 = this.f26708a;
        l[] lVarArr2 = C8743r.f26697i;
        TextView textView2 = c8743r2.m28095OA().f27656d;
        s1.z.c.l.d(textView2, "binding.changeSettings");
        C19286f.m13687Q(textView2);
    }
}
