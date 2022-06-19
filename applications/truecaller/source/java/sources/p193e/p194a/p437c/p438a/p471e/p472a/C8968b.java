package p193e.p194a.p437c.p438a.p471e.p472a;

import java.util.List;
import java.util.Objects;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p194a.p437c.p438a.p471e.p474c.AbstractC8990f;
import p193e.p194a.p437c.p579q.AbstractC10490a;
import s1.s;
import s1.z.c.l;
/* renamed from: e.a.c.a.e.a.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/e/a/b.class */
public final class C8968b<T> implements AbstractC27012l0<List<? extends AbstractC8990f>> {

    /* renamed from: a */
    public final /* synthetic */ C8962a f27271a;

    public C8968b(C8962a c8962a) {
        this.f27271a = c8962a;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(List<? extends AbstractC8990f> list) {
        List<? extends AbstractC8990f> list2 = list;
        l.d(list2, "it");
        for (AbstractC8990f abstractC8990f : list2) {
            if (abstractC8990f instanceof AbstractC8990f.C8994d) {
                s1.z.b.l<? super AbstractC10490a, s> lVar = this.f27271a.f27259a;
                if (lVar != null) {
                    s sVar = (s) lVar.d(AbstractC10490a.AbstractC10491a.C10492a.f31199a);
                }
            } else if (abstractC8990f instanceof AbstractC8990f.C8993c) {
                Objects.requireNonNull(C8977i.f27285f);
                C8977i c8977i = new C8977i();
                c8977i.f27286a = false;
                c8977i.show(this.f27271a.getParentFragmentManager(), C8977i.f27284e);
            } else if (abstractC8990f instanceof AbstractC8990f.C8992b) {
                this.f27271a.dismiss();
            }
        }
    }
}
