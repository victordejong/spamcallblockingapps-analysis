package p193e.p194a.p437c.p438a.p480j.p486e;

import com.google.android.material.chip.ChipGroup;
import com.truecaller.insights.insightsui.CategoryModel;
import com.truecaller.insights.p168ui.filters.states.SmsFilterState;
import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import java.util.List;
import java.util.Objects;
import s1.s;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.j.e.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/b.class */
public final class C9171b extends m implements p<CategoryModel, Boolean, s> {

    /* renamed from: b */
    public final /* synthetic */ C9162a f27905b;

    /* renamed from: c */
    public final /* synthetic */ List f27906c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9171b(ChipGroup chipGroup, C9162a c9162a, List list, boolean z, boolean z2) {
        super(2);
        this.f27905b = c9162a;
        this.f27906c = list;
    }

    /* renamed from: k */
    public Object m27834k(Object obj, Object obj2) {
        CategoryModel categoryModel = (CategoryModel) obj;
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        l.e(categoryModel, "update");
        C9162a c9162a = this.f27905b;
        s1.a.l[] lVarArr = C9162a.f27891j;
        InsightsSmartFeedViewModel m27838TA = c9162a.m27838TA();
        Objects.requireNonNull(m27838TA);
        l.e(categoryModel, "model");
        m27838TA.f12910g.m35206b(categoryModel, booleanValue ? SmsFilterState.EditFilterMode.ADD : SmsFilterState.EditFilterMode.REMOVE);
        this.f27905b.m27839SA().f27494f.f27413a.clearFocus();
        C9162a c9162a2 = this.f27905b;
        ChipGroup chipGroup = c9162a2.m27839SA().f27491c;
        l.d(chipGroup, "binding.categoryTags");
        C9162a.m27841QA(c9162a2, chipGroup);
        return s.a;
    }
}
