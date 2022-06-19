package p193e.p194a.p619d.p628c.p629a.p631p.p632a;

import com.truecaller.voip.C4781R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.C11821a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12020a;
import q3.a.i0;
import q3.a.x2.g;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.util.view.tile.VoipContactTilePresenter$updateCallSettings$1", f = "VoipContactTilePresenter.kt", l = {310}, m = "invokeSuspend")
/* renamed from: e.a.d.c.a.p.a.r */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/r.class */
public final class C11237r extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33154e;

    /* renamed from: f */
    public final /* synthetic */ C11243u f33155f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC12020a f33156g;

    /* renamed from: e.a.d.c.a.p.a.r$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/r$a.class */
    public static final class C11238a implements g<C11821a> {
        public C11238a() {
            C11237r.this = r4;
        }

        /* renamed from: a */
        public Object m24994a(Object obj, d dVar) {
            C11821a c11821a = (C11821a) obj;
            StringBuilder sb = new StringBuilder();
            sb.append(C11237r.this.f33156g.mo23701d());
            sb.append(' ');
            sb.append(c11821a);
            sb.toString();
            AbstractC11231p abstractC11231p = (AbstractC11231p) C11237r.this.f33155f.f57683a;
            if (abstractC11231p != null) {
                abstractC11231p.mo24978b(c11821a.f34737a);
            }
            if (c11821a.f34738b) {
                C11243u c11243u = C11237r.this.f33155f;
                Integer num = new Integer(C4781R.string.voip_contact_tile_status_on_hold);
                Integer num2 = new Integer(C4781R.color.voip_contact_tile_call_status_orange);
                AbstractC11231p abstractC11231p2 = (AbstractC11231p) c11243u.f57683a;
                if (abstractC11231p2 != null) {
                    abstractC11231p2.mo24974l(num.intValue(), num2.intValue());
                    abstractC11231p2.mo24971x0(false);
                    abstractC11231p2.mo24973o(false);
                }
            } else {
                C11237r.this.f33155f.m24985Ij();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11237r(C11243u c11243u, AbstractC12020a abstractC12020a, d dVar) {
        super(2, dVar);
        this.f33155f = c11243u;
        this.f33156g = abstractC12020a;
    }

    /* renamed from: i */
    public final d<s> m24997i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11237r(this.f33155f, this.f33156g, dVar);
    }

    /* renamed from: k */
    public final Object m24996k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11237r(this.f33155f, this.f33156g, dVar).m24995s(s.a);
    }

    /* renamed from: s */
    public final Object m24995s(Object obj) {
        a aVar = a.a;
        int i = this.f33154e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<C11821a> mo23702b = this.f33156g.mo23702b();
            C11238a c11238a = new C11238a();
            this.f33154e = 1;
            if (mo23702b.c(c11238a, this) == aVar) {
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
