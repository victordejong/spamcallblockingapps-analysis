package p193e.p194a.p773g.p774a.p776b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15864a;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15868b;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.acs.ui.fullscreen.AfterCallScreenPresenter$maybeSetVideoCallerIdAudioState$1", f = "AfterCallScreenPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.g.a.b.k */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/b/k.class */
public final class C14152k extends i implements p<AbstractC15868b, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f40851e;

    /* renamed from: f */
    public final /* synthetic */ C14153l f40852f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14152k(C14153l c14153l, d dVar) {
        super(2, dVar);
        this.f40852f = c14153l;
    }

    /* renamed from: i */
    public final d<s> m20661i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C14152k c14152k = new C14152k(this.f40852f, dVar);
        c14152k.f40851e = obj;
        return c14152k;
    }

    /* renamed from: k */
    public final Object m20660k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C14153l c14153l = this.f40852f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        if (((AbstractC15868b) obj) instanceof AbstractC15868b.C15873e) {
            AbstractC14149h abstractC14149h = (AbstractC14149h) c14153l.f57683a;
            AbstractC15864a.C15865a mo20681lj = abstractC14149h != null ? abstractC14149h.mo20681lj() : null;
            if ((mo20681lj instanceof AbstractC15864a.C15865a) && c14153l.f40857J0 == null) {
                AbstractC14149h abstractC14149h2 = (AbstractC14149h) c14153l.f57683a;
                if (abstractC14149h2 != null) {
                    abstractC14149h2.mo20666wz(mo20681lj.f44756a);
                }
                c14153l.m20645dl(mo20681lj.f44756a);
            }
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m20659s(Object obj) {
        C25225a.m3932a3(obj);
        if (((AbstractC15868b) this.f40851e) instanceof AbstractC15868b.C15873e) {
            AbstractC14149h abstractC14149h = (AbstractC14149h) this.f40852f.f57683a;
            AbstractC15864a.C15865a mo20681lj = abstractC14149h != null ? abstractC14149h.mo20681lj() : null;
            if (mo20681lj instanceof AbstractC15864a.C15865a) {
                C14153l c14153l = this.f40852f;
                if (c14153l.f40857J0 == null) {
                    AbstractC14149h abstractC14149h2 = (AbstractC14149h) c14153l.f57683a;
                    if (abstractC14149h2 != null) {
                        abstractC14149h2.mo20666wz(mo20681lj.f44756a);
                    }
                    this.f40852f.m20645dl(mo20681lj.f44756a);
                }
            }
        }
        return s.a;
    }
}
