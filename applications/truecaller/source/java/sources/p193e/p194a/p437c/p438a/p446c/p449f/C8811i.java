package p193e.p194a.p437c.p438a.p446c.p449f;

import com.amazon.device.ads.DtbConstants;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p446c.p450g.C8836f;
import p193e.p194a.p437c.p438a.p446c.p451h.p454m.C8867a;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import p193e.p194a.p437c.p579q.C10516k;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.h;
@e(c = "com.truecaller.insights.ui.important.domain.GetUpdatesFlowUseCase$execute$1", f = "GetUpdatesFlowUseCase.kt", l = {80}, m = "invokeSuspend")
/* renamed from: e.a.c.a.c.f.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/i.class */
public final class C8811i extends i implements p<g<? super C8836f>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f26880e;

    /* renamed from: f */
    public int f26881f;

    /* renamed from: g */
    public final /* synthetic */ C8813j f26882g;

    /* renamed from: e.a.c.a.c.f.i$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/i$a.class */
    public static final class C8812a implements g<List<? extends C10516k>> {

        /* renamed from: b */
        public final /* synthetic */ g f26884b;

        public C8812a(g gVar) {
            C8811i.this = r4;
            this.f26884b = gVar;
        }

        /* renamed from: a */
        public Object m28041a(List<? extends C10516k> list, d<? super s> dVar) {
            List<? extends C10516k> list2 = list;
            g gVar = this.f26884b;
            C8813j c8813j = C8811i.this.f26882g;
            Objects.requireNonNull(c8813j);
            l.e(list2, "items");
            AdapterItem.C4117i c4117i = new AdapterItem.C4117i(C4078R.string.updates, list2.isEmpty() ^ true ? Integer.valueOf(C4078R.string.updates_subtitle) : null, 0L, c8813j.m28040d(list2.size()), null, !c8813j.f26888e.mo26824p0() ? Integer.valueOf(C4078R.string.updates_page_view_all_tooltip) : null, null, 84);
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list2, 10));
            for (C10516k c10516k : list2) {
                arrayList.add(new AdapterItem.C4118j(C8867a.m27993f(c10516k, false), 0L, 2));
            }
            Object a = gVar.a(new C8836f(c4117i, new AbstractC9235b.C9244i(-13131L, arrayList)), dVar);
            return a == a.a ? a : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8811i(C8813j c8813j, d dVar) {
        super(2, dVar);
        this.f26882g = c8813j;
    }

    /* renamed from: i */
    public final d<s> m28044i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C8811i c8811i = new C8811i(this.f26882g, dVar);
        c8811i.f26880e = obj;
        return c8811i;
    }

    /* renamed from: k */
    public final Object m28043k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C8811i c8811i = new C8811i(this.f26882g, dVar);
        c8811i.f26880e = obj;
        return c8811i.m28042s(s.a);
    }

    /* renamed from: s */
    public final Object m28042s(Object obj) {
        a aVar = a.a;
        int i = this.f26881f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            g gVar = (g) this.f26880e;
            f<List<C10516k>> mo25849t = this.f26882g.f26885b.mo25849t(3, C22128a.m8638c() - (((w3.b.a.e0.i) h.q(30)).a * DtbConstants.SIS_CHECKIN_INTERVAL));
            C8812a c8812a = new C8812a(gVar);
            this.f26881f = 1;
            if (mo25849t.c(c8812a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
