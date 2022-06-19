package p193e.p194a.p437c.p438a.p480j.p486e;

import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p480j.p482b.C9141j;
import p193e.p194a.p437c.p438a.p507p.p511d.C9481h;
import p193e.p194a.p437c.p438a.p507p.p511d.C9482i;
import p193e.p194a.p437c.p438a.p507p.p511d.C9483j;
import q3.a.i0;
import q3.a.x2.u0;
import q3.a.x2.w0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.filters.view.FilterBottomSheetDialog$populateRvData$1", f = "FilterBottomSheetDialog.kt", l = {173}, m = "invokeSuspend")
/* renamed from: e.a.c.a.j.e.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/h.class */
public final class C9181h extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f27923e;

    /* renamed from: f */
    public final /* synthetic */ C9162a f27924f;

    @e(c = "com.truecaller.insights.ui.filters.view.FilterBottomSheetDialog$populateRvData$1$1", f = "FilterBottomSheetDialog.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.j.e.h$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/h$a.class */
    public static final class C9182a extends i implements p<List<? extends C9141j>, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f27925e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9182a(d dVar) {
            super(2, dVar);
            C9181h.this = r5;
        }

        /* renamed from: i */
        public final d<s> m27812i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C9182a c9182a = new C9182a(dVar);
            c9182a.f27925e = obj;
            return c9182a;
        }

        /* renamed from: k */
        public final Object m27811k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C9181h c9181h = C9181h.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            boolean isEmpty = c9181h.f27924f.m27837UA().getCurrentList().isEmpty();
            c9181h.f27924f.m27837UA().submitList((List) obj);
            if (isEmpty) {
                c9181h.f27924f.m27839SA().f27495g.scheduleLayoutAnimation();
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m27810s(Object obj) {
            C25225a.m3932a3(obj);
            List<C9141j> list = (List) this.f27925e;
            boolean isEmpty = C9181h.this.f27924f.m27837UA().getCurrentList().isEmpty();
            C9181h.this.f27924f.m27837UA().submitList(list);
            if (isEmpty) {
                C9181h.this.f27924f.m27839SA().f27495g.scheduleLayoutAnimation();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9181h(C9162a c9162a, d dVar) {
        super(2, dVar);
        this.f27924f = c9162a;
    }

    /* renamed from: i */
    public final d<s> m27815i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C9181h(this.f27924f, dVar);
    }

    /* renamed from: k */
    public final Object m27814k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C9181h(this.f27924f, dVar).m27813s(s.a);
    }

    /* renamed from: s */
    public final Object m27813s(Object obj) {
        a aVar = a.a;
        int i = this.f27923e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C9162a c9162a = this.f27924f;
            s1.a.l[] lVarArr = C9162a.f27891j;
            InsightsSmartFeedViewModel m27838TA = c9162a.m27838TA();
            u0 u0Var = new u0(s1.a.a.a.v0.f.d.F0(s1.a.a.a.v0.f.d.P3(new w0(m27838TA.f12917n, m27838TA.f12911h, new C9482i(m27838TA, null)), new C9481h(null, m27838TA))), new C9483j(m27838TA, null));
            C9182a c9182a = new C9182a(null);
            this.f27923e = 1;
            if (s1.a.a.a.v0.f.d.g0(u0Var, c9182a, this) == aVar) {
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
