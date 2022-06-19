package p193e.p194a.p947k.p948a.p953d;

import android.content.Context;
import android.text.style.CharacterStyle;
import android.text.style.URLSpan;
import com.truecaller.videocallerid.C4718R;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1129p5.p1136w0.C19348b;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k.a.d.e */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/d/e.class */
public final class C15648e extends m implements p<CharacterStyle, Integer, CharacterStyle> {

    /* renamed from: b */
    public final /* synthetic */ C15639a f44193b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15648e(C15639a c15639a) {
        super(2);
        this.f44193b = c15639a;
    }

    /* renamed from: k */
    public Object m18553k(Object obj, Object obj2) {
        CharacterStyle characterStyle = (CharacterStyle) obj;
        ((Number) obj2).intValue();
        l.e(characterStyle, "style");
        C19348b c19348b = characterStyle;
        if (characterStyle instanceof URLSpan) {
            Context requireContext = this.f44193b.requireContext();
            int i = C4718R.color.tcx_payCustomBackground_light;
            Object obj3 = C26467a.f74235a;
            c19348b = new C19348b(C26467a.C26471d.m1787a(requireContext, i), new C15647d(this, characterStyle));
        }
        return c19348b;
    }
}
