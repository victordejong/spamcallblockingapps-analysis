package p193e.p194a.p619d.p628c.p629a.p631p.p632a;

import com.tenor.android.core.constant.StringConstant;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.voip.C4781R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p627b0.C11161a;
import p193e.p194a.p619d.p637c0.AbstractC11416j;
import p193e.p194a.p619d.p637c0.p642z1.C11593e;
import q3.a.i0;
import q3.a.x2.g;
import q3.a.x2.i1;
import s1.f0.v;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.util.view.tile.VoipContactTilePresenter$updateCallUser$1", f = "VoipContactTilePresenter.kt", l = {310}, m = "invokeSuspend")
/* renamed from: e.a.d.c.a.p.a.t */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/t.class */
public final class C11241t extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33162e;

    /* renamed from: f */
    public final /* synthetic */ C11243u f33163f;

    /* renamed from: g */
    public final /* synthetic */ C11593e f33164g;

    /* renamed from: e.a.d.c.a.p.a.t$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/t$a.class */
    public static final class C11242a implements g<AbstractC11416j> {
        public C11242a() {
            C11241t.this = r4;
        }

        /* renamed from: a */
        public Object m24986a(Object obj, d dVar) {
            AbstractC11231p abstractC11231p;
            AbstractC11416j abstractC11416j = (AbstractC11416j) obj;
            if (abstractC11416j instanceof AbstractC11416j.C11419c) {
                AbstractC11231p abstractC11231p2 = (AbstractC11231p) C11241t.this.f33163f.f57683a;
                if (abstractC11231p2 != null) {
                    abstractC11231p2.mo24975i(true);
                }
            } else if (abstractC11416j instanceof AbstractC11416j.C11418b) {
                AbstractC11231p abstractC11231p3 = (AbstractC11231p) C11241t.this.f33163f.f57683a;
                if (abstractC11231p3 != null) {
                    abstractC11231p3.mo24975i(false);
                }
                C11243u c11243u = C11241t.this.f33163f;
                C11161a c11161a = ((AbstractC11416j.C11418b) abstractC11416j).f33540a;
                AbstractC11231p abstractC11231p4 = (AbstractC11231p) c11243u.f57683a;
                if (abstractC11231p4 != null) {
                    abstractC11231p4.setAvatarConfig(C19291g.m13618J(c11161a));
                    abstractC11231p4.setName((String) s1.u.i.B(v.U(c11161a.f32995c, new String[]{StringConstant.SPACE}, false, 0, 6)));
                }
            } else if ((abstractC11416j instanceof AbstractC11416j.C11417a) && (abstractC11231p = (AbstractC11231p) C11241t.this.f33163f.f57683a) != null) {
                abstractC11231p.mo24975i(false);
                abstractC11231p.setAvatarConfig(new AvatarXConfig(null, null, null, null, false, false, false, false, false, false, false, false, false, false, null, false, 65535));
                String mo13768b = C11241t.this.f33163f.f33174l.mo13768b(C4781R.string.voip_non_identified_contact, new Object[0]);
                l.d(mo13768b, "resourceProvider.getStri…p_non_identified_contact)");
                abstractC11231p.setName(mo13768b);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11241t(C11243u c11243u, C11593e c11593e, d dVar) {
        super(2, dVar);
        this.f33163f = c11243u;
        this.f33164g = c11593e;
    }

    /* renamed from: i */
    public final d<s> m24989i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11241t(this.f33163f, this.f33164g, dVar);
    }

    /* renamed from: k */
    public final Object m24988k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11241t(this.f33163f, this.f33164g, dVar).m24987s(s.a);
    }

    /* renamed from: s */
    public final Object m24987s(Object obj) {
        a aVar = a.a;
        int i = this.f33162e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<AbstractC11416j> i1Var = this.f33164g.f33991b;
            C11242a c11242a = new C11242a();
            this.f33162e = 1;
            if (i1Var.c(c11242a, this) == aVar) {
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
