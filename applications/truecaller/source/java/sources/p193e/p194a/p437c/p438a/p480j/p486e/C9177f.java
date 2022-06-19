package p193e.p194a.p437c.p438a.p480j.p486e;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import com.truecaller.insights.smartcards.SmartCardCategory;
import java.util.List;
import java.util.Objects;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p480j.p482b.C9133b;
import p193e.p194a.p437c.p438a.p480j.p482b.C9134c;
import p193e.p194a.p437c.p438a.p507p.p511d.C9471c;
import p193e.p194a.p437c.p438a.p507p.p511d.C9472d;
import p193e.p194a.p437c.p438a.p520r.C9589f;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import q3.a.x2.f;
import q3.a.x2.w0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.filters.view.FilterBottomSheetDialog$populateChipData$1", f = "FilterBottomSheetDialog.kt", l = {146}, m = "invokeSuspend")
/* renamed from: e.a.c.a.j.e.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/f.class */
public final class C9177f extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f27915e;

    /* renamed from: f */
    public final /* synthetic */ C9162a f27916f;

    @e(c = "com.truecaller.insights.ui.filters.view.FilterBottomSheetDialog$populateChipData$1$1", f = "FilterBottomSheetDialog.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.j.e.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/f$a.class */
    public static final class C9178a extends i implements p<C9133b, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f27917e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9178a(d dVar) {
            super(2, dVar);
            C9177f.this = r5;
        }

        /* renamed from: i */
        public final d<s> m27824i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C9178a c9178a = new C9178a(dVar);
            c9178a.f27917e = obj;
            return c9178a;
        }

        /* renamed from: k */
        public final Object m27823k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C9178a c9178a = new C9178a(dVar);
            c9178a.f27917e = obj;
            s sVar = s.a;
            c9178a.m27822s(sVar);
            return sVar;
        }

        /* renamed from: s */
        public final Object m27822s(Object obj) {
            C25225a.m3932a3(obj);
            C9133b c9133b = (C9133b) this.f27917e;
            List<C9134c> list = c9133b.f27832a;
            boolean z = c9133b.f27833b;
            boolean z2 = c9133b.f27834c;
            C9162a c9162a = C9177f.this.f27916f;
            s1.a.l[] lVarArr = C9162a.f27891j;
            ChipGroup chipGroup = c9162a.m27839SA().f27491c;
            chipGroup.removeAllViews();
            for (C9134c c9134c : list) {
                C9171b c9171b = new C9171b(chipGroup, c9162a, list, z, z2);
                LayoutInflater layoutInflater = c9162a.getLayoutInflater();
                l.d(layoutInflater, "layoutInflater");
                Chip inflate = C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.layout_filter_chip_choice, (ViewGroup) c9162a.m27839SA().f27491c, false);
                Objects.requireNonNull(inflate, "null cannot be cast to non-null type com.google.android.material.chip.Chip");
                Chip chip = inflate;
                SmartCardCategory tagCategory = c9134c.f27835b.getTagCategory();
                Context context = chip.getContext();
                l.d(context, AnalyticsConstants.CONTEXT);
                chip.setText(C9589f.m27405c(tagCategory, context));
                Context context2 = chip.getContext();
                int m27407a = C9589f.m27407a(c9134c.f27835b.getTagCategory());
                Object obj2 = C26467a.f74235a;
                chip.setChipIcon(C26467a.C26470c.m1789b(context2, m27407a));
                chip.setChecked(c9134c.f27836c);
                chip.setOnCheckedChangeListener(new C9174d(c9134c, c9171b));
                chipGroup.addView(chip);
            }
            if (z) {
                if (!z2) {
                    chipGroup.addView(c9162a.m27840RA(C4078R.C4079drawable.ic_more_filters, C4078R.string.more_filters, new C25351m2(0, c9162a, list, z, z2)));
                } else {
                    chipGroup.addView(c9162a.m27840RA(C4078R.C4079drawable.ic_more_filters, C4078R.string.less_filters, new C25351m2(1, c9162a, list, z, z2)));
                }
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9177f(C9162a c9162a, d dVar) {
        super(2, dVar);
        this.f27916f = c9162a;
    }

    /* renamed from: i */
    public final d<s> m27827i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C9177f(this.f27916f, dVar);
    }

    /* renamed from: k */
    public final Object m27826k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C9177f(this.f27916f, dVar).m27825s(s.a);
    }

    /* renamed from: s */
    public final Object m27825s(Object obj) {
        a aVar = a.a;
        int i = this.f27915e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C9162a c9162a = this.f27916f;
            s1.a.l[] lVarArr = C9162a.f27891j;
            InsightsSmartFeedViewModel m27838TA = c9162a.m27838TA();
            f F0 = s1.a.a.a.v0.f.d.F0(s1.a.a.a.v0.f.d.P3(new w0(m27838TA.f12911h, m27838TA.f12915l, new C9472d(m27838TA, null)), new C9471c(null, m27838TA)));
            C9178a c9178a = new C9178a(null);
            this.f27915e = 1;
            if (s1.a.a.a.v0.f.d.g0(F0, c9178a, this) == aVar) {
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
