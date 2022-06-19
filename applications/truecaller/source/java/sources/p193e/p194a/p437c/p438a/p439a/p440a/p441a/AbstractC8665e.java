package p193e.p194a.p437c.p438a.p439a.p440a.p441a;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import java.util.LinkedHashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p419m.p420a.C8505a;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c.a.a.a.a.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/a/a/a/e.class */
public abstract class AbstractC8665e<T> extends RecyclerView.AbstractC0313c0 {

    /* renamed from: a */
    public final int f26541a;

    /* renamed from: b */
    public final int f26542b;

    /* renamed from: c */
    public final Map<Long, Boolean> f26543c;

    /* renamed from: d */
    public final AbstractC9114h f26544d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC8665e(View view, AbstractC9114h abstractC9114h) {
        super(view);
        l.e(view, "itemView");
        this.f26544d = abstractC9114h;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) (!(layoutParams instanceof ViewGroup.MarginLayoutParams) ? null : layoutParams);
        this.f26541a = marginLayoutParams != null ? marginLayoutParams.topMargin : 0;
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) (!(layoutParams2 instanceof ViewGroup.MarginLayoutParams) ? null : layoutParams2);
        this.f26542b = marginLayoutParams2 != null ? marginLayoutParams2.bottomMargin : 0;
        l.d(view.getContext(), "itemView.context");
        this.f26543c = new LinkedHashMap();
    }

    /* renamed from: N4 */
    public final C8243a m28131N4() {
        return new C8243a(new C19235i0(C22128a.m8700J(this.itemView, "itemView", "itemView.context")));
    }

    /* renamed from: O4 */
    public final AvatarXConfig m28130O4(C8505a c8505a) {
        l.e(c8505a, "addressProfile");
        return new AvatarXConfig(c8505a.f26292c, c8505a.f26290a, null, null, false, false, true, false, false, false, false, false, false, false, null, false, 65468);
    }

    /* renamed from: P4 */
    public final void m28129P4(String str, String str2, String str3, boolean z, String str4, String str5) {
        C22128a.m8699J0(str, "feature", str2, "category", str4, AnalyticsConstants.CONTEXT, str5, "actionInfo");
        AbstractC9114h abstractC9114h = this.f26544d;
        if (abstractC9114h != null) {
            Object obj = "";
            String str6 = true & true ? "" : null;
            String str7 = true & true ? "" : null;
            String str8 = true & true ? "" : null;
            String str9 = true & true ? "" : null;
            String str10 = true & true ? "" : null;
            if (!(true & true)) {
                obj = null;
            }
            LinkedHashMap linkedHashMap = true & true ? new LinkedHashMap() : null;
            l.e(str6, "feature");
            l.e(str7, "eventCategory");
            l.e(str8, "eventInfo");
            l.e(str9, AnalyticsConstants.CONTEXT);
            l.e(str10, "actionType");
            l.e(obj, "actionInfo");
            l.e(linkedHashMap, "propertyMap");
            l.e(str, "<set-?>");
            l.e(str2, "<set-?>");
            l.e("click", "<set-?>");
            l.e(str5, "<set-?>");
            String m26803a = C10031q.m26803a(str3, z);
            l.e(m26803a, "<set-?>");
            l.e(str4, "<set-?>");
            if (!(str.length() > 0)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            abstractC9114h.mo27869Zd(new C10529b(new SimpleAnalyticsModel(str, str2, m26803a, str4, "click", str5, 0L, null, false, 448, null), i.W0(linkedHashMap)));
        }
    }

    /* renamed from: R4 */
    public final void m28127R4(String str, String str2, String str3, boolean z, String str4) {
        C22128a.m8703I0(str, "feature", str2, "category", str4, AnalyticsConstants.CONTEXT);
        AbstractC9114h abstractC9114h = this.f26544d;
        if (abstractC9114h != null) {
            boolean z2 = true;
            String str5 = "";
            LinkedHashMap linkedHashMap = null;
            String str6 = true & true ? "" : null;
            String str7 = true & true ? "" : null;
            String str8 = true & true ? "" : null;
            String str9 = true & true ? "" : null;
            String str10 = true & true ? "" : null;
            if (!(true & true)) {
                str5 = null;
            }
            if (true & true) {
                linkedHashMap = new LinkedHashMap();
            }
            l.e(str6, "feature");
            l.e(str7, "eventCategory");
            l.e(str8, "eventInfo");
            l.e(str9, AnalyticsConstants.CONTEXT);
            l.e(str10, "actionType");
            l.e(str5, "actionInfo");
            l.e(linkedHashMap, "propertyMap");
            l.e(str, "<set-?>");
            l.e(str2, "<set-?>");
            l.e(ViewAction.VIEW, "<set-?>");
            String m26803a = C10031q.m26803a(str3, z);
            l.e(m26803a, "<set-?>");
            l.e(str4, "<set-?>");
            if (str.length() <= 0) {
                z2 = false;
            }
            if (!z2) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            abstractC9114h.mo27869Zd(new C10529b(new SimpleAnalyticsModel(str, str2, m26803a, str4, ViewAction.VIEW, str5, 0L, null, false, 448, null), i.W0(linkedHashMap)));
        }
    }

    /* renamed from: S4 */
    public abstract void mo27509S4(T t);

    /* renamed from: T4 */
    public final void m28126T4(boolean z) {
        View view = this.itemView;
        if (!(view instanceof FrameLayout)) {
            return;
        }
        int i = 0;
        if (z) {
            l.d(view, "itemView");
            FrameLayout frameLayout = (FrameLayout) view;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, 0);
            View view2 = this.itemView;
            l.d(view2, "itemView");
            ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
            ViewGroup.LayoutParams layoutParams3 = layoutParams2;
            if (!(layoutParams2 instanceof ViewGroup.MarginLayoutParams)) {
                layoutParams3 = null;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams3;
            int i2 = marginLayoutParams != null ? marginLayoutParams.leftMargin : 0;
            View view3 = this.itemView;
            l.d(view3, "itemView");
            ViewGroup.LayoutParams layoutParams4 = view3.getLayoutParams();
            if (!(layoutParams4 instanceof ViewGroup.MarginLayoutParams)) {
                layoutParams4 = null;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams4;
            layoutParams.setMargins(i2, 0, marginLayoutParams2 != null ? marginLayoutParams2.rightMargin : 0, 0);
            frameLayout.setLayoutParams(layoutParams);
            return;
        }
        l.d(view, "itemView");
        FrameLayout frameLayout2 = (FrameLayout) view;
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, -2);
        View view4 = this.itemView;
        l.d(view4, "itemView");
        ViewGroup.LayoutParams layoutParams6 = view4.getLayoutParams();
        ViewGroup.LayoutParams layoutParams7 = layoutParams6;
        if (!(layoutParams6 instanceof ViewGroup.MarginLayoutParams)) {
            layoutParams7 = null;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) layoutParams7;
        int i3 = marginLayoutParams3 != null ? marginLayoutParams3.leftMargin : 0;
        int i4 = this.f26541a;
        View view5 = this.itemView;
        l.d(view5, "itemView");
        ViewGroup.LayoutParams layoutParams8 = view5.getLayoutParams();
        if (!(layoutParams8 instanceof ViewGroup.MarginLayoutParams)) {
            layoutParams8 = null;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) layoutParams8;
        if (marginLayoutParams4 != null) {
            i = marginLayoutParams4.rightMargin;
        }
        layoutParams5.setMargins(i3, i4, i, this.f26542b);
        frameLayout2.setLayoutParams(layoutParams5);
    }
}
