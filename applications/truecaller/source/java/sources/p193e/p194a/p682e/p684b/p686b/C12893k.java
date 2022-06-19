package p193e.p194a.p682e.p684b.p686b;

import javax.inject.Inject;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p195a.p235g1.AbstractC6254b;
import p193e.p194a.p195a.p271o.AbstractC7107p;
import s1.z.c.l;
/* renamed from: e.a.e.b.b.k */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/b/k.class */
public final class C12893k extends AbstractC18894c<AbstractC12892j> implements AbstractC12891i {

    /* renamed from: b */
    public final AbstractC6254b f37461b;

    /* renamed from: c */
    public final AbstractC7107p f37462c;

    /* renamed from: d */
    public final AbstractC12889g f37463d;

    /* renamed from: e */
    public final AbstractC12890h f37464e;

    @Inject
    public C12893k(AbstractC6254b abstractC6254b, AbstractC7107p abstractC7107p, AbstractC12889g abstractC12889g, AbstractC12890h abstractC12890h) {
        l.e(abstractC6254b, "translateManager");
        l.e(abstractC7107p, "storageManagerUtils");
        l.e(abstractC12889g, "callback");
        l.e(abstractC12890h, "model");
        this.f37461b = abstractC6254b;
        this.f37462c = abstractC7107p;
        this.f37463d = abstractC12889g;
        this.f37464e = abstractC12890h;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(AbstractC12892j abstractC12892j, int i) {
        AbstractC12892j abstractC12892j2 = abstractC12892j;
        l.e(abstractC12892j2, "itemView");
        String str = this.f37464e.mo22475e1().get(i);
        Long l = this.f37464e.mo22473if().get(str);
        abstractC12892j2.setText(this.f37461b.mo31547b(str));
        if (l != null) {
            abstractC12892j2.mo22471q0(this.f37462c.mo30114a(l.longValue()));
            abstractC12892j2.mo22470z2(true);
        } else {
            abstractC12892j2.mo22470z2(false);
        }
        abstractC12892j2.mo22472b(this.f37464e.mo22474f1().contains(str));
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f37464e.mo22475e1().size();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return this.f37464e.mo22475e1().get(i).hashCode();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        boolean z;
        l.e(c18900h, "event");
        String str = this.f37464e.mo22475e1().get(c18900h.f53002b);
        String str2 = c18900h.f53001a;
        int hashCode = str2.hashCode();
        if (hashCode == -1743572928) {
            if (str2.equals("ItemEvent.CLICKED")) {
                z = this.f37463d.mo22478k6(str);
            }
            z = false;
        } else if (hashCode != -1314591573) {
            if (hashCode == 1578591423 && str2.equals("lang.pack.ACTION_DELETE")) {
                z = this.f37463d.mo22476w5(str);
            }
            z = false;
        } else {
            if (str2.equals("ItemEvent.LONG_CLICKED")) {
                z = this.f37463d.mo22477p3(str);
            }
            z = false;
        }
        return z;
    }
}
