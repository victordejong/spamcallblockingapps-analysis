package p193e.p194a.p437c.p438a.p480j.p486e;

import com.google.android.material.button.MaterialButton;
import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p507p.p511d.C9468b;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.filters.view.FilterBottomSheetDialog$enableFilterChanges$1", f = "FilterBottomSheetDialog.kt", l = {163}, m = "invokeSuspend")
/* renamed from: e.a.c.a.j.e.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/e.class */
public final class C9175e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f27911e;

    /* renamed from: f */
    public final /* synthetic */ C9162a f27912f;

    @e(c = "com.truecaller.insights.ui.filters.view.FilterBottomSheetDialog$enableFilterChanges$1$1", f = "FilterBottomSheetDialog.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.j.e.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/e$a.class */
    public static final class C9176a extends i implements p<k<? extends Boolean, ? extends Boolean>, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f27913e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9176a(d dVar) {
            super(2, dVar);
            C9175e.this = r5;
        }

        /* renamed from: i */
        public final d<s> m27830i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C9176a c9176a = new C9176a(dVar);
            c9176a.f27913e = obj;
            return c9176a;
        }

        /* renamed from: k */
        public final Object m27829k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C9175e c9175e = C9175e.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            k kVar = (k) obj;
            boolean booleanValue = ((Boolean) kVar.a).booleanValue();
            boolean booleanValue2 = ((Boolean) kVar.b).booleanValue();
            C9162a c9162a = c9175e.f27912f;
            s1.a.l[] lVarArr = C9162a.f27891j;
            MaterialButton materialButton = c9162a.m27839SA().f27492d;
            l.d(materialButton, "binding.clearButton");
            materialButton.setEnabled(booleanValue);
            MaterialButton materialButton2 = c9175e.f27912f.m27839SA().f27490b;
            l.d(materialButton2, "binding.applyButton");
            materialButton2.setEnabled(booleanValue2);
            return sVar;
        }

        /* renamed from: s */
        public final Object m27828s(Object obj) {
            C25225a.m3932a3(obj);
            k kVar = (k) this.f27913e;
            boolean booleanValue = ((Boolean) kVar.a).booleanValue();
            boolean booleanValue2 = ((Boolean) kVar.b).booleanValue();
            C9162a c9162a = C9175e.this.f27912f;
            s1.a.l[] lVarArr = C9162a.f27891j;
            MaterialButton materialButton = c9162a.m27839SA().f27492d;
            l.d(materialButton, "binding.clearButton");
            materialButton.setEnabled(booleanValue);
            MaterialButton materialButton2 = C9175e.this.f27912f.m27839SA().f27490b;
            l.d(materialButton2, "binding.applyButton");
            materialButton2.setEnabled(booleanValue2);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9175e(C9162a c9162a, d dVar) {
        super(2, dVar);
        this.f27912f = c9162a;
    }

    /* renamed from: i */
    public final d<s> m27833i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C9175e(this.f27912f, dVar);
    }

    /* renamed from: k */
    public final Object m27832k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C9175e(this.f27912f, dVar).m27831s(s.a);
    }

    /* renamed from: s */
    public final Object m27831s(Object obj) {
        a aVar = a.a;
        int i = this.f27911e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C9162a c9162a = this.f27912f;
            s1.a.l[] lVarArr = C9162a.f27891j;
            InsightsSmartFeedViewModel m27838TA = c9162a.m27838TA();
            C9468b c9468b = new C9468b(m27838TA.f12911h, m27838TA);
            C9176a c9176a = new C9176a(null);
            this.f27911e = 1;
            if (s1.a.a.a.v0.f.d.g0(c9468b, c9176a, this) == aVar) {
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
