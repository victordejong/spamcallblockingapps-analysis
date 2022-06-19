package p193e.p194a.p619d.p628c.p629a.p631p.p632a;

import com.truecaller.voip.C4781R;
import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12020a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.util.view.tile.VoipContactTilePresenter$updateCallStates$1", f = "VoipContactTilePresenter.kt", l = {310}, m = "invokeSuspend")
/* renamed from: e.a.d.c.a.p.a.s */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/s.class */
public final class C11239s extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33158e;

    /* renamed from: f */
    public final /* synthetic */ C11243u f33159f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC12020a f33160g;

    /* renamed from: e.a.d.c.a.p.a.s$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/s$a.class */
    public static final class C11240a implements g<AbstractC12022c> {
        public C11240a() {
            C11239s.this = r4;
        }

        /* renamed from: a */
        public Object m24990a(Object obj, d dVar) {
            Integer num;
            AbstractC12022c abstractC12022c = (AbstractC12022c) obj;
            StringBuilder sb = new StringBuilder();
            sb.append(C11239s.this.f33160g.mo23701d());
            sb.append(' ');
            sb.append(abstractC12022c);
            sb.toString();
            C11239s c11239s = C11239s.this;
            C11243u c11243u = c11239s.f33159f;
            AbstractC12020a abstractC12020a = c11239s.f33160g;
            if (!c11243u.f33168f) {
                if (l.a(abstractC12022c, AbstractC12022c.C12023a.f35245b)) {
                    int i = C4781R.string.voip_contact_tile_status_connecting;
                    int i2 = C4781R.color.voip_contact_tile_call_status_orange;
                    boolean mo23703a = abstractC12020a.mo23703a();
                    AbstractC11231p abstractC11231p = (AbstractC11231p) c11243u.f57683a;
                    if (abstractC11231p != null) {
                        abstractC11231p.mo24974l(Integer.valueOf(i).intValue(), Integer.valueOf(i2).intValue());
                        abstractC11231p.mo24971x0(false);
                        abstractC11231p.mo24973o(mo23703a);
                    }
                } else if (l.a(abstractC12022c, AbstractC12022c.C12034d.f35255b)) {
                    int i3 = C4781R.string.voip_contact_tile_status_ringing;
                    int i4 = C4781R.color.voip_contact_tile_call_status_green;
                    boolean mo23703a2 = abstractC12020a.mo23703a();
                    AbstractC11231p abstractC11231p2 = (AbstractC11231p) c11243u.f57683a;
                    if (abstractC11231p2 != null) {
                        abstractC11231p2.mo24974l(Integer.valueOf(i3).intValue(), Integer.valueOf(i4).intValue());
                        abstractC11231p2.mo24971x0(false);
                        abstractC11231p2.mo24973o(mo23703a2);
                    }
                } else if (l.a(abstractC12022c, AbstractC12022c.C12033c.f35254b)) {
                    c11243u.m24985Ij();
                } else if (abstractC12022c instanceof AbstractC12022c.AbstractC12024b) {
                    if (abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12028d) {
                        num = Integer.valueOf(C4781R.string.voip_contact_tile_status_ended_invite_canceled);
                    } else if (abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12029e) {
                        num = Integer.valueOf(C4781R.string.voip_contact_tile_status_ended_invite_rejected);
                    } else if (abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12032h) {
                        num = Integer.valueOf(C4781R.string.voip_contact_tile_status_ended_offline);
                    } else if (abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12031g) {
                        num = Integer.valueOf(C4781R.string.voip_contact_tile_status_ended_no_answer);
                    } else if (abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12025a) {
                        num = Integer.valueOf(C4781R.string.voip_contact_tile_status_ended_busy);
                    } else if (abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12026b) {
                        num = Integer.valueOf(C4781R.string.voip_contact_tile_status_ended_failed);
                    } else if (abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12030f) {
                        num = Integer.valueOf(C4781R.string.voip_contact_tile_status_ended);
                    } else if (!(abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12027c)) {
                        throw new s1.i();
                    } else {
                        c11243u.m24985Ij();
                        AbstractC11231p abstractC11231p3 = (AbstractC11231p) c11243u.f57683a;
                        if (abstractC11231p3 != null) {
                            abstractC11231p3.mo24981A();
                        }
                        num = null;
                    }
                    if (num != null) {
                        int intValue = num.intValue();
                        int i5 = C4781R.color.voip_contact_tile_call_status_red;
                        AbstractC11231p abstractC11231p4 = (AbstractC11231p) c11243u.f57683a;
                        if (abstractC11231p4 != null) {
                            abstractC11231p4.mo24974l(Integer.valueOf(intValue).intValue(), Integer.valueOf(i5).intValue());
                            abstractC11231p4.mo24971x0(false);
                            abstractC11231p4.mo24973o(false);
                        }
                    }
                }
            }
            if (abstractC12022c instanceof AbstractC12022c.C12033c) {
                C11239s c11239s2 = C11239s.this;
                C11243u c11243u2 = c11239s2.f33159f;
                if (c11243u2.f33170h == null) {
                    c11243u2.f33170h = s1.a.a.a.v0.f.d.w2(c11243u2, (f) null, (j0) null, new C11237r(c11243u2, c11239s2.f33160g, null), 3, (Object) null);
                }
            }
            if (abstractC12022c instanceof AbstractC12022c.AbstractC12024b) {
                p1 p1Var = C11239s.this.f33159f.f33170h;
                if (p1Var != null) {
                    s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
                }
                C11239s.this.f33159f.f33170h = null;
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11239s(C11243u c11243u, AbstractC12020a abstractC12020a, d dVar) {
        super(2, dVar);
        this.f33159f = c11243u;
        this.f33160g = abstractC12020a;
    }

    /* renamed from: i */
    public final d<s> m24993i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11239s(this.f33159f, this.f33160g, dVar);
    }

    /* renamed from: k */
    public final Object m24992k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11239s(this.f33159f, this.f33160g, dVar).m24991s(s.a);
    }

    /* renamed from: s */
    public final Object m24991s(Object obj) {
        a aVar = a.a;
        int i = this.f33158e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            q3.a.x2.f z0 = s1.a.a.a.v0.f.d.z0(this.f33160g.getState(), 100L);
            C11240a c11240a = new C11240a();
            this.f33158e = 1;
            if (z0.c(c11240a, this) == aVar) {
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
