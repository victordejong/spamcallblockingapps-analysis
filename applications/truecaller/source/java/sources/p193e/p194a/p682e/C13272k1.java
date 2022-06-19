package p193e.p194a.p682e;

import android.view.View;
import com.tenor.android.core.constant.ViewAction;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p682e.C13282m1;
import s1.z.c.l;
/* renamed from: e.a.e.k1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/k1.class */
public final class C13272k1 implements C13282m1.AbstractC13284b {

    /* renamed from: a */
    public AbstractC18905m f38576a;

    public C13272k1(AbstractC18905m abstractC18905m) {
        l.e(abstractC18905m, "receiver");
        this.f38576a = abstractC18905m;
    }

    @Override // p193e.p194a.p682e.C13282m1.AbstractC13284b
    /* renamed from: a */
    public void mo21956a(int i, boolean z, View view) {
        l.e(view, ViewAction.VIEW);
        m21964d(z ? "ItemEvent.SWIPE_COMPLETED_FROM_START" : "ItemEvent.SWIPE_COMPLETED_FROM_END", i, view);
    }

    @Override // p193e.p194a.p682e.C13282m1.AbstractC13284b
    /* renamed from: b */
    public boolean mo21955b(int i, View view) {
        l.e(view, ViewAction.VIEW);
        return m21964d("ItemEvent.SWIPE_START", i, view);
    }

    @Override // p193e.p194a.p682e.C13282m1.AbstractC13284b
    /* renamed from: c */
    public void mo21954c() {
    }

    /* renamed from: d */
    public final boolean m21964d(String str, int i, View view) {
        return this.f38576a.mo14327t(new C18900h(str, i, -1L, view, view.getTag()));
    }
}
