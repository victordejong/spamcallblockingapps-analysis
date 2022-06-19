package p193e.p194a.p619d.p643d.p644a.p645a.p648c;

import p193e.p194a.p1111o2.AbstractC18904l;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p619d.p643d.p644a.AbstractC11683t;
import s1.z.c.l;
/* renamed from: e.a.d.d.a.a.c.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/a/c/b.class */
public final class C11653b extends AbstractC11652a implements AbstractC18904l {

    /* renamed from: b */
    public AbstractC11683t f34207b;

    /* renamed from: c */
    public boolean f34208c;

    @Override // p193e.p194a.p619d.p643d.p644a.p645a.p648c.AbstractC11652a
    /* renamed from: A */
    public void mo24316A(AbstractC11683t abstractC11683t) {
        l.e(abstractC11683t, "presenterProxy");
        this.f34207b = abstractC11683t;
    }

    @Override // p193e.p194a.p619d.p643d.p644a.p645a.p648c.AbstractC11652a
    /* renamed from: B */
    public void mo24315B() {
        this.f34207b = null;
    }

    @Override // p193e.p194a.p619d.p643d.p644a.p645a.p648c.AbstractC11652a
    /* renamed from: C */
    public void mo24314C(boolean z) {
        this.f34208c = z;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f34208c ? 1 : 0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return 1L;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        AbstractC11683t abstractC11683t;
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        if (str.hashCode() == -1743572928 && str.equals("ItemEvent.CLICKED") && (abstractC11683t = this.f34207b) != null) {
            abstractC11683t.mo24236X6();
            return true;
        }
        return true;
    }
}
