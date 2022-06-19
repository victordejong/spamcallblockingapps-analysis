package p193e.p194a.p773g.p774a.p776b;

import com.truecaller.acs.p131ui.fullscreen.BackgroundMode;
import com.truecaller.data.entity.Contact;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15868b;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.acs.ui.fullscreen.AfterCallScreenPresenter$listenVideoPlayerEvents$1", f = "AfterCallScreenPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.g.a.b.j */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/b/j.class */
public final class C14151j extends i implements p<AbstractC15868b, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f40849e;

    /* renamed from: f */
    public final /* synthetic */ C14153l f40850f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14151j(C14153l c14153l, d dVar) {
        super(2, dVar);
        this.f40850f = c14153l;
    }

    /* renamed from: i */
    public final d<s> m20664i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C14151j c14151j = new C14151j(this.f40850f, dVar);
        c14151j.f40849e = obj;
        return c14151j;
    }

    /* renamed from: k */
    public final Object m20663k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C14151j c14151j = new C14151j(this.f40850f, dVar);
        c14151j.f40849e = obj;
        s sVar = s.a;
        c14151j.m20662s(sVar);
        return sVar;
    }

    /* renamed from: s */
    public final Object m20662s(Object obj) {
        C25225a.m3932a3(obj);
        AbstractC15868b abstractC15868b = (AbstractC15868b) this.f40849e;
        if ((abstractC15868b instanceof AbstractC15868b.C15874f) || (abstractC15868b instanceof AbstractC15868b.C15869a) || (abstractC15868b instanceof AbstractC15868b.C15873e)) {
            C14153l c14153l = this.f40850f;
            Objects.requireNonNull(c14153l);
            c14153l.f40853F0 = BackgroundMode.FULL_SCREEN_VIDEO;
            AbstractC14149h abstractC14149h = (AbstractC14149h) c14153l.f57683a;
            if (abstractC14149h != null) {
                abstractC14149h.mo20690d4(true);
            }
            c14153l.f40855H0 = true;
            Contact contact = c14153l.m20451Oj().f11539f;
            if (contact != null) {
                l.d(contact, "it");
                c14153l.m20656Rk(contact);
            }
            s1.a.a.a.v0.f.d.w2(c14153l, (f) null, (j0) null, new C14161m(c14153l, null), 3, (Object) null);
        } else if ((abstractC15868b instanceof AbstractC15868b.C15870b) || (abstractC15868b instanceof AbstractC15868b.C15872d)) {
            C14153l c14153l2 = this.f40850f;
            Objects.requireNonNull(c14153l2);
            c14153l2.f40853F0 = BackgroundMode.NONE;
            AbstractC14149h abstractC14149h2 = (AbstractC14149h) c14153l2.f57683a;
            if (abstractC14149h2 != null) {
                abstractC14149h2.mo20690d4(false);
            }
            Contact contact2 = c14153l2.m20451Oj().f11539f;
            if (contact2 != null) {
                l.d(contact2, "it");
                c14153l2.m20652Vk(contact2);
            }
            Contact contact3 = c14153l2.m20451Oj().f11539f;
            if (contact3 != null) {
                l.d(contact3, "it");
                c14153l2.m20656Rk(contact3);
            }
        }
        return s.a;
    }
}
