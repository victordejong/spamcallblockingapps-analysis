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
@e(c = "com.truecaller.insights.ui.qa.view.MalanaSeedDataFragment$setupUpdatesSeedData$1", f = "MalanaSeedDataFragment.kt", l = {95, 96}, m = "invokeSuspend")
/* renamed from: e.a.c.a.m.c.s */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/s.class */
public final class C9342s extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f28386e;

    /* renamed from: f */
    public Object f28387f;

    /* renamed from: g */
    public int f28388g;

    /* renamed from: h */
    public final /* synthetic */ C9336o f28389h;

    @e(c = "com.truecaller.insights.ui.qa.view.MalanaSeedDataFragment$setupUpdatesSeedData$1$1", f = "MalanaSeedDataFragment.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.m.c.s$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/s$a.class */
    public static final class C9343a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ c0 f28391f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9343a(c0 c0Var, d dVar) {
            super(2, dVar);
            C9342s.this = r5;
            this.f28391f = c0Var;
        }

        /* renamed from: i */
        public final d<s> m27661i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9343a(this.f28391f, dVar);
        }

        /* renamed from: k */
        public final Object m27660k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C9342s c9342s = C9342s.this;
            c0 c0Var = this.f28391f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            C9336o c9336o = c9342s.f28389h;
            s1.a.l[] lVarArr = C9336o.f28370i;
            TextView textView = c9336o.m27673OA().f27677d;
            l.d(textView, "binding.updatesSeedData");
            textView.setText(c9342s.f28389h.m27672PA((String) c0Var.a));
            C9336o c9336o2 = c9342s.f28389h;
            TextView textView2 = c9336o2.m27673OA().f27677d;
            l.d(textView2, "binding.updatesSeedData");
            Objects.requireNonNull(c9336o2);
            textView2.setOnLongClickListener(new View$OnLongClickListenerC9340q(c9336o2, textView2));
            textView2.setOnClickListener(View$OnClickListenerC9341r.f28385a);
            return sVar;
        }

        /* renamed from: s */
        public final Object m27659s(Object obj) {
            C25225a.m3932a3(obj);
            C9336o c9336o = C9342s.this.f28389h;
            s1.a.l[] lVarArr = C9336o.f28370i;
            TextView textView = c9336o.m27673OA().f27677d;
            l.d(textView, "binding.updatesSeedData");
            textView.setText(C9342s.this.f28389h.m27672PA((String) this.f28391f.a));
            C9336o c9336o2 = C9342s.this.f28389h;
            TextView textView2 = c9336o2.m27673OA().f27677d;
            l.d(textView2, "binding.updatesSeedData");
            textView2.setOnLongClickListener(new View$OnLongClickListenerC9340q(c9336o2, textView2));
            textView2.setOnClickListener(View$OnClickListenerC9341r.f28385a);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9342s(C9336o c9336o, d dVar) {
        super(2, dVar);
        this.f28389h = c9336o;
    }

    /* renamed from: i */
    public final d<s> m27664i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C9342s(this.f28389h, dVar);
    }

    /* renamed from: k */
    public final Object m27663k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C9342s(this.f28389h, dVar).m27662s(s.a);
    }

    /* renamed from: s */
    public final Object m27662s(Object obj) {
        Object obj2;
        c0 c0Var;
        c0 c0Var2;
        a aVar = a.a;
        int i = this.f28388g;
        if (i == 0) {
            c0 m8633d0 = C22128a.m8633d0(obj);
            AbstractC10693a abstractC10693a = this.f28389h.f28376f;
            if (abstractC10693a == null) {
                l.l("qaManager");
                throw null;
            }
            this.f28386e = m8633d0;
            this.f28387f = m8633d0;
            this.f28388g = 1;
            obj2 = abstractC10693a.mo25739i(this);
            if (obj2 == aVar) {
                return aVar;
            }
            c0Var = m8633d0;
            c0Var2 = m8633d0;
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return s.a;
        } else {
            c0Var2 = (c0) this.f28387f;
            c0Var = (c0) this.f28386e;
            C25225a.m3932a3(obj);
            obj2 = obj;
        }
        c0Var2.a = (String) obj2;
        f fVar = this.f28389h.f28373c;
        if (fVar == null) {
            l.l("contextUI");
            throw null;
        }
        C9343a c9343a = new C9343a(c0Var, null);
        this.f28386e = null;
        this.f28387f = null;
        this.f28388g = 2;
        if (s1.a.a.a.v0.f.d.a4(fVar, c9343a, this) == aVar) {
            return aVar;
        }
        return s.a;
    }
}
