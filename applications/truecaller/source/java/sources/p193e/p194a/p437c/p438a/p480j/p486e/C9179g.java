package p193e.p194a.p437c.p438a.p480j.p486e;

import com.google.android.material.chip.ChipGroup;
import io.agora.rtc.Constants;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import q3.a.x2.f;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.filters.view.FilterBottomSheetDialog$populateChipData$2", f = "FilterBottomSheetDialog.kt", l = {Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT}, m = "invokeSuspend")
/* renamed from: e.a.c.a.j.e.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/g.class */
public final class C9179g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f27919e;

    /* renamed from: f */
    public final /* synthetic */ C9162a f27920f;

    @e(c = "com.truecaller.insights.ui.filters.view.FilterBottomSheetDialog$populateChipData$2$1", f = "FilterBottomSheetDialog.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.j.e.g$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/g$a.class */
    public static final class C9180a extends i implements p<Boolean, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ boolean f27921e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9180a(d dVar) {
            super(2, dVar);
            C9179g.this = r5;
        }

        /* renamed from: i */
        public final d<s> m27818i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C9180a c9180a = new C9180a(dVar);
            Boolean bool = (Boolean) obj;
            bool.booleanValue();
            c9180a.f27921e = bool.booleanValue();
            return c9180a;
        }

        /* renamed from: k */
        public final Object m27817k(Object obj, Object obj2) {
            C9180a m27818i = m27818i(obj, (d) obj2);
            s sVar = s.a;
            m27818i.m27816s(sVar);
            return sVar;
        }

        /* renamed from: s */
        public final Object m27816s(Object obj) {
            C25225a.m3932a3(obj);
            if (this.f27921e) {
                C9162a c9162a = C9179g.this.f27920f;
                s1.a.l[] lVarArr = C9162a.f27891j;
                c9162a.m27839SA().f27494f.f27413a.clearFocus();
                C9162a c9162a2 = C9179g.this.f27920f;
                ChipGroup chipGroup = c9162a2.m27839SA().f27491c;
                l.d(chipGroup, "binding.categoryTags");
                C9162a.m27841QA(c9162a2, chipGroup);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9179g(C9162a c9162a, d dVar) {
        super(2, dVar);
        this.f27920f = c9162a;
    }

    /* renamed from: i */
    public final d<s> m27821i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C9179g(this.f27920f, dVar);
    }

    /* renamed from: k */
    public final Object m27820k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C9179g(this.f27920f, dVar).m27819s(s.a);
    }

    /* renamed from: s */
    public final Object m27819s(Object obj) {
        a aVar = a.a;
        int i = this.f27919e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C9162a c9162a = this.f27920f;
            s1.a.l[] lVarArr = C9162a.f27891j;
            f<Boolean> fVar = c9162a.m27838TA().f12915l;
            C9180a c9180a = new C9180a(null);
            this.f27919e = 1;
            if (s1.a.a.a.v0.f.d.g0(fVar, c9180a, this) == aVar) {
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
