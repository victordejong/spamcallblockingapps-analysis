package p193e.p194a.p947k.p948a.p954e;

import com.truecaller.videocallerid.p186db.hiddencontacts.HiddenContact;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p947k.p973n.p975e.AbstractC16166a;
import p193e.p194a.p947k.p973n.p975e.C16167b;
import p193e.p194a.p947k.p973n.p975e.C16175c;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.ui.manageincomingvideo.ManageIncomingVideoSettingPresenter$onRemoveItemClicked$1", f = "ManageIncomingVideoSettingPresenter.kt", l = {66}, m = "invokeSuspend")
/* renamed from: e.a.k.a.e.h */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/e/h.class */
public final class C15665h extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f44223e;

    /* renamed from: f */
    public final /* synthetic */ C15666i f44224f;

    /* renamed from: g */
    public final /* synthetic */ C15657a f44225g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15665h(C15666i c15666i, C15657a c15657a, d dVar) {
        super(2, dVar);
        this.f44224f = c15666i;
        this.f44225g = c15657a;
    }

    /* renamed from: i */
    public final d<s> m18533i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C15665h(this.f44224f, this.f44225g, dVar);
    }

    /* renamed from: k */
    public final Object m18532k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C15665h(this.f44224f, this.f44225g, dVar).m18531s(s.a);
    }

    /* renamed from: s */
    public final Object m18531s(Object obj) {
        Object obj2 = s.a;
        Object obj3 = a.a;
        int i = this.f44223e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC16166a abstractC16166a = this.f44224f.f44226d;
            HiddenContact hiddenContact = new HiddenContact(this.f44225g.f44206b);
            this.f44223e = 1;
            C16167b c16167b = (C16167b) abstractC16166a;
            Object m13546h1 = C19291g.m13546h1(c16167b.f45618b, new C16175c(c16167b, hiddenContact, null), this);
            if (m13546h1 != obj3) {
                m13546h1 = obj2;
            }
            if (m13546h1 == obj3) {
                return obj3;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C15666i c15666i = this.f44224f;
        Objects.requireNonNull(c15666i);
        s1.a.a.a.v0.f.d.w2(c15666i, (f) null, (j0) null, new C15662f(c15666i, null), 3, (Object) null);
        return obj2;
    }
}
