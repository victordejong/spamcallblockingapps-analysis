package p193e.p194a.p437c.p438a.p494m.p497c;

import android.content.Context;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import java.util.List;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p494m.p496b.C9285t;
import p193e.p194a.p437c.p438a.p494m.p496b.C9289x;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.qa.view.InsightsUpdatesClassViewer$setupSpinner$1", f = "InsightsUpdatesClassViewer.kt", l = {85}, m = "invokeSuspend")
/* renamed from: e.a.c.a.m.c.n */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/n.class */
public final class C9335n extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f28368e;

    /* renamed from: f */
    public final /* synthetic */ C9322i f28369f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9335n(C9322i c9322i, d dVar) {
        super(2, dVar);
        this.f28369f = c9322i;
    }

    /* renamed from: i */
    public final d<s> m27676i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C9335n(this.f28369f, dVar);
    }

    /* renamed from: k */
    public final Object m27675k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C9335n(this.f28369f, dVar).m27674s(s.a);
    }

    /* renamed from: s */
    public final Object m27674s(Object obj) {
        a aVar = a.a;
        int i = this.f28368e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C9322i c9322i = this.f28369f;
            Context requireContext = this.f28369f.requireContext();
            l.d(requireContext, "requireContext()");
            C9285t c9285t = new C9285t(requireContext);
            Objects.requireNonNull(c9322i);
            l.e(c9285t, "<set-?>");
            c9322i.f28344c = c9285t;
            C9285t m27691RA = this.f28369f.m27691RA();
            s1.u.s sVar = s1.u.s.a;
            Objects.requireNonNull(m27691RA);
            l.e(sVar, "items");
            m27691RA.f28255a.clear();
            m27691RA.f28255a.addAll(sVar);
            m27691RA.notifyDataSetChanged();
            C9289x m27694OA = C9322i.m27694OA(this.f28369f);
            this.f28368e = 1;
            Object mo27189a = m27694OA.f28262a.mo27189a(this);
            obj = mo27189a;
            if (mo27189a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        List list = (List) obj;
        C9285t m27691RA2 = this.f28369f.m27691RA();
        Objects.requireNonNull(m27691RA2);
        l.e(list, "items");
        m27691RA2.f28255a.clear();
        m27691RA2.f28255a.addAll(list);
        m27691RA2.notifyDataSetChanged();
        this.f28369f.m27691RA().notifyDataSetChanged();
        Spinner spinner = this.f28369f.m27693PA().f27704a;
        l.d(spinner, "binding.classSelector");
        spinner.setAdapter((SpinnerAdapter) this.f28369f.m27691RA());
        return s.a;
    }
}
