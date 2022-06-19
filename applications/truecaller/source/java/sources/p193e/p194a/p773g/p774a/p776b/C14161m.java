package p193e.p194a.p773g.p774a.p776b;

import com.truecaller.data.entity.Contact;
import com.truecaller.videocallerid.data.VideoType;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.AbstractC16111h;
import p193e.p194a.p947k.p971l.C16120b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.acs.ui.fullscreen.AfterCallScreenPresenter$maybeUpdateUserBadge$1", f = "AfterCallScreenPresenter.kt", l = {454}, m = "invokeSuspend")
/* renamed from: e.a.g.a.b.m */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/b/m.class */
public final class C14161m extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f40887e;

    /* renamed from: f */
    public int f40888f;

    /* renamed from: g */
    public final /* synthetic */ C14153l f40889g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14161m(C14153l c14153l, d dVar) {
        super(2, dVar);
        this.f40889g = c14153l;
    }

    /* renamed from: i */
    public final d<s> m20627i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14161m(this.f40889g, dVar);
    }

    /* renamed from: k */
    public final Object m20626k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14161m(this.f40889g, dVar).m20625s(s.a);
    }

    /* renamed from: s */
    public final Object m20625s(Object obj) {
        Contact contact;
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f40888f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            String str = this.f40889g.m20451Oj().f11535b;
            if (str != null) {
                l.d(str, "historyEvent.normalizedNumber ?: return@launch");
                contact = this.f40889g.m20451Oj().f11539f;
                if (contact != null) {
                    l.d(contact, "historyEvent.contact ?: return@launch");
                    AbstractC16111h abstractC16111h = this.f40889g.f40864Q0;
                    this.f40887e = contact;
                    this.f40888f = 1;
                    obj = abstractC16111h.mo17851Q(str, this);
                    if (obj == aVar) {
                        return aVar;
                    }
                }
            }
            return sVar;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            contact = (Contact) this.f40887e;
            C25225a.m3932a3(obj);
        }
        C16120b c16120b = (C16120b) obj;
        if (c16120b != null) {
            if (c16120b.f45432f == VideoType.SelfieVideo) {
                C14153l c14153l = this.f40889g;
                c14153l.m20470Bk(contact, c14153l.f41033y0.mo8993b(contact));
            } else {
                AbstractC14149h abstractC14149h = (AbstractC14149h) this.f40889g.f57683a;
                if (abstractC14149h != null) {
                    abstractC14149h.mo20551Si();
                }
            }
        }
        return sVar;
    }
}
