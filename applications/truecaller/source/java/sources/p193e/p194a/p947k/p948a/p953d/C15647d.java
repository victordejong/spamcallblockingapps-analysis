package p193e.p194a.p947k.p948a.p953d;

import android.text.style.CharacterStyle;
import android.text.style.URLSpan;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k.a.d.d */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/d/d.class */
public final class C15647d extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C15648e f44191b;

    /* renamed from: c */
    public final /* synthetic */ CharacterStyle f44192c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15647d(C15648e c15648e, CharacterStyle characterStyle) {
        super(0);
        this.f44191b = c15648e;
        this.f44192c = characterStyle;
    }

    public Object invoke() {
        AbstractC15649f abstractC15649f = this.f44191b.f44193b.f44181e;
        if (abstractC15649f == null) {
            l.l("presenter");
            throw null;
        }
        String url = ((URLSpan) this.f44192c).getURL();
        l.d(url, "style.url");
        l.e(url, "url");
        AbstractC15650g abstractC15650g = (AbstractC15650g) ((C15654k) abstractC15649f).f57683a;
        if (abstractC15650g != null) {
            abstractC15650g.mo18552b(url);
        }
        return s.a;
    }
}
