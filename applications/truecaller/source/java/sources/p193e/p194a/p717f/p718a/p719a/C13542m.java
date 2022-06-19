package p193e.p194a.p717f.p718a.p719a;

import com.truecaller.data.entity.Contact;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1064m5.AbstractC18240c;
import p193e.p194a.p294b.p344j.AbstractC7946a;
import p193e.p194a.p294b.p344j.C7951b;
import p193e.p194a.p717f.p734z.AbstractC13801a0;
import p193e.p194a.p717f.p734z.C13803b0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.incoming.IncomingCallPresenter$subscribeToBusinessVideoCallerIdPlaying$1", f = "IncomingCallPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.f.a.a.m */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/a/m.class */
public final class C13542m extends i implements p<String, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C13530i f39285e;

    /* renamed from: f */
    public final /* synthetic */ Contact f39286f;

    /* renamed from: g */
    public final /* synthetic */ boolean f39287g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13542m(C13530i c13530i, Contact contact, boolean z, d dVar) {
        super(2, dVar);
        this.f39285e = c13530i;
        this.f39286f = contact;
        this.f39287g = z;
    }

    /* renamed from: i */
    public final d<s> m21641i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13542m(this.f39285e, this.f39286f, this.f39287g, dVar);
    }

    /* renamed from: k */
    public final Object m21640k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C13530i c13530i = this.f39285e;
        Contact contact = this.f39286f;
        boolean z = this.f39287g;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        AbstractC13528g abstractC13528g = (AbstractC13528g) c13530i.f57683a;
        if (abstractC13528g != null) {
            abstractC13528g.mo21688nx();
        }
        AbstractC18240c abstractC18240c = c13530i.f39497d;
        if (abstractC18240c != null && (abstractC18240c instanceof C7951b)) {
            c13530i.f39226n = true;
            AbstractC13801a0 abstractC13801a0 = c13530i.f39235w;
            boolean z2 = c13530i.f39226n;
            C13803b0 c13803b0 = (C13803b0) abstractC13801a0;
            Objects.requireNonNull(c13803b0);
            if (contact != null) {
                c13803b0.f40021d.m29086Jj(new AbstractC7946a.C7950d(contact, z, z2));
            }
            AbstractC13528g abstractC13528g2 = (AbstractC13528g) c13530i.f57683a;
            if (abstractC13528g2 != null) {
                abstractC13528g2.mo21406zl();
            }
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m21639s(Object obj) {
        C25225a.m3932a3(obj);
        AbstractC13528g abstractC13528g = (AbstractC13528g) this.f39285e.f57683a;
        if (abstractC13528g != null) {
            abstractC13528g.mo21688nx();
        }
        C13530i c13530i = this.f39285e;
        AbstractC18240c abstractC18240c = c13530i.f39497d;
        if (abstractC18240c != null && (abstractC18240c instanceof C7951b)) {
            c13530i.f39226n = true;
            C13530i c13530i2 = this.f39285e;
            AbstractC13801a0 abstractC13801a0 = c13530i2.f39235w;
            Contact contact = this.f39286f;
            boolean z = this.f39287g;
            boolean z2 = c13530i2.f39226n;
            C13803b0 c13803b0 = (C13803b0) abstractC13801a0;
            Objects.requireNonNull(c13803b0);
            if (contact != null) {
                c13803b0.f40021d.m29086Jj(new AbstractC7946a.C7950d(contact, z, z2));
            }
            AbstractC13528g abstractC13528g2 = (AbstractC13528g) this.f39285e.f57683a;
            if (abstractC13528g2 != null) {
                abstractC13528g2.mo21406zl();
            }
        }
        return s.a;
    }
}
