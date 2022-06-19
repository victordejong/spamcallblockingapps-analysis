package p193e.p194a.p437c.p438a.p494m.p497c;

import android.widget.TextView;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p596t.AbstractC10693a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.qa.view.MalanaSeedDataFragment$setupMalanaLocalSeedData$1", f = "MalanaSeedDataFragment.kt", l = {86}, m = "invokeSuspend")
/* renamed from: e.a.c.a.m.c.p */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/p.class */
public final class C9338p extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f28379e;

    /* renamed from: f */
    public final /* synthetic */ C9336o f28380f;

    @e(c = "com.truecaller.insights.ui.qa.view.MalanaSeedDataFragment$setupMalanaLocalSeedData$1$1", f = "MalanaSeedDataFragment.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.m.c.p$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/p$a.class */
    public static final class C9339a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ c0 f28382f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9339a(c0 c0Var, d dVar) {
            super(2, dVar);
            C9338p.this = r5;
            this.f28382f = c0Var;
        }

        /* renamed from: i */
        public final d<s> m27667i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9339a(this.f28382f, dVar);
        }

        /* renamed from: k */
        public final Object m27666k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C9338p c9338p = C9338p.this;
            c0 c0Var = this.f28382f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            C9336o c9336o = c9338p.f28380f;
            s1.a.l[] lVarArr = C9336o.f28370i;
            TextView textView = c9336o.m27673OA().f27675b;
            l.d(textView, "binding.localSeedData");
            textView.setText(c9338p.f28380f.m27672PA((String) c0Var.a));
            C9336o c9336o2 = c9338p.f28380f;
            TextView textView2 = c9336o2.m27673OA().f27675b;
            l.d(textView2, "binding.localSeedData");
            Objects.requireNonNull(c9336o2);
            textView2.setOnLongClickListener(new View$OnLongClickListenerC9340q(c9336o2, textView2));
            textView2.setOnClickListener(View$OnClickListenerC9341r.f28385a);
            return sVar;
        }

        /* renamed from: s */
        public final Object m27665s(Object obj) {
            C25225a.m3932a3(obj);
            C9336o c9336o = C9338p.this.f28380f;
            s1.a.l[] lVarArr = C9336o.f28370i;
            TextView textView = c9336o.m27673OA().f27675b;
            l.d(textView, "binding.localSeedData");
            textView.setText(C9338p.this.f28380f.m27672PA((String) this.f28382f.a));
            C9336o c9336o2 = C9338p.this.f28380f;
            TextView textView2 = c9336o2.m27673OA().f27675b;
            l.d(textView2, "binding.localSeedData");
            textView2.setOnLongClickListener(new View$OnLongClickListenerC9340q(c9336o2, textView2));
            textView2.setOnClickListener(View$OnClickListenerC9341r.f28385a);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9338p(C9336o c9336o, d dVar) {
        super(2, dVar);
        this.f28380f = c9336o;
    }

    /* renamed from: i */
    public final d<s> m27670i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C9338p(this.f28380f, dVar);
    }

    /* renamed from: k */
    public final Object m27669k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C9338p(this.f28380f, dVar).m27668s(s.a);
    }

    /* renamed from: s */
    public final Object m27668s(Object obj) {
        a aVar = a.a;
        int i = this.f28379e;
        if (i == 0) {
            c0 m8633d0 = C22128a.m8633d0(obj);
            AbstractC10693a abstractC10693a = this.f28380f.f28376f;
            if (abstractC10693a == null) {
                l.l("qaManager");
                throw null;
            }
            String mo25745c = abstractC10693a.mo25745c();
            if (mo25745c == null) {
                mo25745c = "Seed is null";
            }
            m8633d0.a = mo25745c;
            f fVar = this.f28380f.f28373c;
            if (fVar == null) {
                l.l("contextUI");
                throw null;
            }
            C9339a c9339a = new C9339a(m8633d0, null);
            this.f28379e = 1;
            if (s1.a.a.a.v0.f.d.a4(fVar, c9339a, this) == aVar) {
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
