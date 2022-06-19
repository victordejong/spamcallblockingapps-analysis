package p193e.p194a.p852i.p879e.p880a.p881a;

import android.view.View;
import s1.z.c.l;
/* renamed from: e.a.i.e.a.a.a$f */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/a/a/a$f.class */
public final class a$f implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ a f43106a;

    public a$f(a aVar) {
        this.f43106a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        g gVar = this.f43106a.f;
        if (gVar == null) {
            l.l("presenter");
            throw null;
        }
        AbstractC15132k abstractC15132k = (AbstractC15132k) gVar.f57683a;
        if (abstractC15132k == null) {
            return;
        }
        abstractC15132k.finish();
    }
}
