package p193e.p194a.p619d.p643d.p644a.p645a.p647b;

import com.truecaller.voip.contacts.p188ui.VoipContactsMvp$VoipContactSelectionSource;
import p193e.p194a.p1111o2.AbstractC18904l;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p643d.p644a.AbstractC11683t;
import p193e.p194a.p619d.p643d.p650c.C11694a;
import s1.z.c.l;
/* renamed from: e.a.d.d.a.a.b.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/a/b/c.class */
public final class C11650c extends AbstractC11648a implements AbstractC18904l {

    /* renamed from: b */
    public AbstractC11683t f34199b;

    @Override // p193e.p194a.p619d.p643d.p644a.p645a.p647b.AbstractC11648a
    /* renamed from: A */
    public void mo24321A(AbstractC11683t abstractC11683t) {
        l.e(abstractC11683t, "presenterProxy");
        this.f34199b = abstractC11683t;
    }

    @Override // p193e.p194a.p619d.p643d.p644a.p645a.p647b.AbstractC11648a
    /* renamed from: B */
    public void mo24320B() {
        this.f34199b = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r3 != null) goto L7;
     */
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<p193e.p194a.p619d.p643d.p650c.C11694a> m24319C() {
        /*
            r2 = this;
            r0 = r2
            e.a.d.d.a.t r0 = r0.f34199b
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L17
            r0 = r3
            java.util.List r0 = r0.mo24226y3()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L17
            goto L1b
        L17:
            s1.u.s r0 = s1.u.s.a
            r3 = r0
        L1b:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p643d.p644a.p645a.p647b.C11650c.m24319C():java.util.List");
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC11649b abstractC11649b = (AbstractC11649b) obj;
        l.e(abstractC11649b, "itemView");
        C11694a c11694a = m24319C().get(i);
        abstractC11649b.mo24318a(C19291g.m13621I(c11694a));
        abstractC11649b.mo24317m(C19291g.m13627G(c11694a));
        abstractC11649b.setTitle(c11694a.f34314c);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return m24319C().size();
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        Long id = m24319C().get(i).f34312a.getId();
        return id != null ? id.longValue() : (char) 65535;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        AbstractC11683t abstractC11683t;
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        if (str.hashCode() == -1743572928 && str.equals("ItemEvent.CLICKED") && (abstractC11683t = this.f34199b) != null) {
            abstractC11683t.mo24234ai(m24319C().get(c18900h.f53002b), c18900h.f53002b, VoipContactsMvp$VoipContactSelectionSource.SELECTION_LIST);
            return true;
        }
        return true;
    }
}
