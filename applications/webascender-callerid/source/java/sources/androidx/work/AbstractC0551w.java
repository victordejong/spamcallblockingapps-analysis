package androidx.work;

import android.content.Context;
import androidx.work.impl.j;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.work.w */
/* loaded from: classes-dex2jar.jar:androidx/work/w.class */
public abstract class AbstractC0551w {
    protected AbstractC0551w() {
    }

    /* renamed from: i */
    public static AbstractC0551w m4291i(Context context) {
        return j.q(context);
    }

    /* renamed from: j */
    public static void m4290j(Context context, C0467b c0467b) {
        j.j(context, c0467b);
    }

    /* renamed from: a */
    public final AbstractC0549u m4299a(String str, EnumC0477g enumC0477g, o oVar) {
        return m4298b(str, enumC0477g, Collections.singletonList(oVar));
    }

    /* renamed from: b */
    public abstract AbstractC0549u m4298b(String str, EnumC0477g enumC0477g, List<o> list);

    /* renamed from: c */
    public abstract AbstractC0543p m4297c(String str);

    /* renamed from: d */
    public final AbstractC0543p m4296d(AbstractC0552x abstractC0552x) {
        return m4295e(Collections.singletonList(abstractC0552x));
    }

    /* renamed from: e */
    public abstract AbstractC0543p m4295e(List<? extends AbstractC0552x> list);

    /* renamed from: f */
    public abstract AbstractC0543p m4294f(String str, EnumC0476f enumC0476f, q qVar);

    /* renamed from: g */
    public AbstractC0543p m4293g(String str, EnumC0477g enumC0477g, o oVar) {
        return m4292h(str, enumC0477g, Collections.singletonList(oVar));
    }

    /* renamed from: h */
    public abstract AbstractC0543p m4292h(String str, EnumC0477g enumC0477g, List<o> list);
}
