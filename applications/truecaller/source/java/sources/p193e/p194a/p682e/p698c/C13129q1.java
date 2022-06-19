package p193e.p194a.p682e.p698c;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.data.entity.Style;
import com.truecaller.log.AssertionUtil;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p682e.C12864a2;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.e.c.q1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/q1.class */
public final class C13129q1 {

    /* renamed from: a */
    public Context f38076a;

    /* renamed from: b */
    public final boolean f38077b;

    /* renamed from: c */
    public final AbstractC19233h0 f38078c;

    public C13129q1(Context context, boolean z, AbstractC19233h0 abstractC19233h0) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19233h0, "themedResourceProvider");
        this.f38076a = context;
        this.f38077b = z;
        this.f38078c = abstractC19233h0;
    }

    /* renamed from: a */
    public final C13126p1 m22046a() {
        int mo13769a = this.f38078c.mo13769a(2131101216);
        int mo13769a2 = this.f38078c.mo13769a(2131101238);
        return new C13126p1(mo13769a, new ColorDrawable(this.f38078c.mo13769a(17170445)), mo13769a2, new C13171y1(this.f38078c.mo13769a(2131101238), this.f38078c.mo13769a(2131101242), this.f38078c.mo13769a(2131099848), this.f38078c.mo13769a(2131101242), Integer.valueOf(this.f38078c.mo13769a(C2752R.color.tcx_tagTextColor_dark)), Integer.valueOf(this.f38078c.mo13769a(C2752R.color.tcx_detailsHeaderTagStrokeColor_dark)), m22042e(), null, this.f38078c.mo13769a(2131101242), this.f38078c.mo13767c(2131231051), 128), new C13132r1(this.f38078c.mo13769a(2131099848), new ColorDrawable(this.f38078c.mo13769a(2131099845)), null, null, 12));
    }

    /* renamed from: b */
    public final C13126p1 m22045b(boolean z) {
        ColorDrawable colorDrawable;
        int mo13758l = this.f38078c.mo13758l(2130970403);
        ColorDrawable colorDrawable2 = new ColorDrawable(this.f38078c.mo13758l(2130970356));
        int mo13758l2 = this.f38078c.mo13758l(2130970409);
        int mo13758l3 = this.f38078c.mo13758l(2130970408);
        int mo13758l4 = this.f38078c.mo13758l(C2752R.attr.tcx_detailsViewSecondaryColor);
        int mo13758l5 = this.f38078c.mo13758l(C2752R.attr.detailView_actionButtonColor);
        int mo13758l6 = this.f38078c.mo13758l(C2752R.attr.tcx_detailsViewSecondaryColor);
        Drawable m22042e = m22042e();
        Integer num = null;
        Integer valueOf = z ? Integer.valueOf(this.f38078c.mo13758l(2130969958)) : null;
        if (z) {
            num = Integer.valueOf(this.f38078c.mo13758l(2130969956));
        }
        C13171y1 c13171y1 = new C13171y1(mo13758l3, mo13758l4, mo13758l5, mo13758l6, valueOf, num, m22042e, null, this.f38078c.mo13758l(2130970440), this.f38078c.mo13763g(2130970438), 128);
        if (z) {
            colorDrawable = new ColorDrawable(this.f38078c.mo13758l(C2752R.attr.tcx_detailsActionBarBackgroundColor));
        } else if (z) {
            throw new i();
        } else {
            colorDrawable = C8605o.m28236d(this.f38076a, this.f38078c.mo13765e(C2752R.attr.detailView_actionBarBackground));
            l.d(colorDrawable, "GUIUtils.getDrawable(\n  …Background)\n            )");
        }
        return new C13126p1(mo13758l, colorDrawable2, mo13758l2, c13171y1, new C13132r1(this.f38078c.mo13758l(C2752R.attr.detailView_actionButtonColor), new ColorDrawable(this.f38078c.mo13758l(2130970356)), colorDrawable, null, 8));
    }

    /* renamed from: c */
    public final C13126p1 m22044c(boolean z) {
        Drawable drawable;
        Drawable drawable2;
        ColorDrawable colorDrawable;
        Context context = this.f38076a;
        Object obj = C26467a.f74235a;
        int m1787a = C26467a.C26471d.m1787a(context, C2752R.color.premium_gold_details_status_bar_all_themes);
        if (z) {
            drawable = this.f38078c.mo13757m(C2752R.attr.tcx_detailsViewAppBarBackgroundGold);
            if (drawable == null) {
                drawable = C8605o.m28236d(this.f38076a, C2752R.C2753drawable.details_gold_bg);
            }
        } else {
            drawable = C8605o.m28236d(this.f38076a, C2752R.C2753drawable.details_gold_bg);
        }
        int m1787a2 = C26467a.C26471d.m1787a(this.f38076a, 2131101388);
        int m1787a3 = C26467a.C26471d.m1787a(this.f38076a, C2752R.color.premium_gold_calling_tint_primary_all_themes);
        int mo13758l = this.f38078c.mo13758l(C2752R.attr.tcx_detailsViewSecondaryGoldColor);
        int mo13758l2 = this.f38078c.mo13758l(C2752R.attr.tcx_detailsViewIconGoldColor);
        int mo13758l3 = this.f38078c.mo13758l(C2752R.attr.tcx_detailsViewAddTagIconGoldColor);
        int mo13758l4 = this.f38078c.mo13758l(2130969959);
        int mo13758l5 = z ? this.f38078c.mo13758l(2130969956) : C26467a.C26471d.m1787a(this.f38076a, C2752R.color.premium_gold_calling_add_tag_background_all_themes);
        Drawable m22042e = m22042e();
        if (z) {
            drawable2 = this.f38078c.mo13757m(C2752R.attr.tcx_detailsViewAppBarBackgroundGold);
            if (drawable2 == null) {
                drawable2 = C8605o.m28236d(this.f38076a, C2752R.C2753drawable.details_gold_bg);
            }
        } else {
            drawable2 = null;
        }
        C13171y1 c13171y1 = new C13171y1(m1787a3, mo13758l, mo13758l2, mo13758l3, Integer.valueOf(mo13758l4), Integer.valueOf(mo13758l5), m22042e, drawable2, this.f38078c.mo13758l(2130970441), this.f38078c.mo13763g(2130970439));
        if (z) {
            colorDrawable = new ColorDrawable(this.f38078c.mo13758l(C2752R.attr.tcx_detailsActionBarBackgroundGoldColor));
        } else if (z) {
            throw new i();
        } else {
            colorDrawable = C8605o.m28236d(this.f38076a, C2752R.C2753drawable.details_action_bar_border_gold);
            l.d(colorDrawable, "GUIUtils.getDrawable(con…s_action_bar_border_gold)");
        }
        return new C13126p1(m1787a, drawable, m1787a2, c13171y1, new C13132r1(C26467a.C26471d.m1787a(this.f38076a, C2752R.color.premium_gold_details_button_all_themes), colorDrawable, colorDrawable, null, 8));
    }

    /* renamed from: d */
    public final C13126p1 m22043d(Style style) {
        int i;
        try {
            i = Color.parseColor(style.getBackgroundColor());
        } catch (IllegalArgumentException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            i = Color.parseColor("#F2F5F7");
        }
        boolean z = true;
        int i2 = (C12864a2.m22534x(i) > 85.0d ? 1 : (C12864a2.m22534x(i) == 85.0d ? 0 : -1)) > 0 ? -14208456 : -1;
        int m22536v = C12864a2.m22536v(i);
        ColorDrawable colorDrawable = new ColorDrawable(i);
        C13171y1 c13171y1 = new C13171y1(i2, i2, i2, i2, Integer.valueOf(i2), 855638016, m22042e(), null, this.f38078c.mo13758l(2130970440), this.f38078c.mo13763g(2130970438), 128);
        int m22041f = m22041f(style);
        int i3 = (C12864a2.m22534x(m22041f(style)) > 85.0d ? 1 : (C12864a2.m22534x(m22041f(style)) == 85.0d ? 0 : -1)) > 0 ? -14208456 : -1;
        ColorDrawable colorDrawable2 = new ColorDrawable(m22041f);
        ColorDrawable colorDrawable3 = new ColorDrawable(m22041f);
        if (C12864a2.m22534x(m22041f(style)) <= 85.0d) {
            z = false;
        }
        return new C13126p1(m22536v, colorDrawable, i2, c13171y1, new C13132r1(i3, colorDrawable2, colorDrawable3, new ColorDrawable(z ? 855638016 : 872415231)));
    }

    /* renamed from: e */
    public final Drawable m22042e() {
        Drawable mo13757m = this.f38078c.mo13757m(C2752R.attr.tcx_detailsViewAddTagIconDrawable);
        if (mo13757m == null) {
            mo13757m = this.f38078c.mo13767c(C2752R.C2753drawable.ic_add_circle_white_24dp);
            l.d(mo13757m, "themedResourceProvider.g…ic_add_circle_white_24dp)");
        }
        return mo13757m;
    }

    /* renamed from: f */
    public final int m22041f(Style style) {
        int i;
        try {
            i = Color.parseColor(style.getBackgroundColor());
        } catch (IllegalArgumentException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            i = Color.parseColor("#F2F5F7");
        }
        return i;
    }
}
