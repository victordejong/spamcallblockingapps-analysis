package p193e.p194a.p682e.p700d2.p701p;

import com.truecaller.bottombar.BottomBarButtonType;
import java.util.Comparator;
import java.util.List;
import p193e.p194a.p431b3.AbstractC8626c;
import s1.z.c.l;
/* renamed from: e.a.e.d2.p.c */
/* loaded from: classes15-dex2jar.jar:e/a/e/d2/p/c.class */
public final class C13241c implements Comparator<AbstractC8626c> {

    /* renamed from: a */
    public final List<BottomBarButtonType> f38486a;

    /* JADX WARN: Multi-variable type inference failed */
    public C13241c(List<? extends BottomBarButtonType> list) {
        l.e(list, "order");
        this.f38486a = list;
    }

    @Override // java.util.Comparator
    public int compare(AbstractC8626c abstractC8626c, AbstractC8626c abstractC8626c2) {
        AbstractC8626c abstractC8626c3 = abstractC8626c;
        AbstractC8626c abstractC8626c4 = abstractC8626c2;
        l.e(abstractC8626c3, "o1");
        l.e(abstractC8626c4, "o2");
        return l.g(this.f38486a.indexOf(abstractC8626c3.mo21981e()), this.f38486a.indexOf(abstractC8626c4.mo21981e()));
    }
}
