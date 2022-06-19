package p193e.p194a.p682e.p684b;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import p193e.p194a.p937j4.p939b.p941b.C15576b;
import s1.z.c.l;
/* renamed from: e.a.e.b.h */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/h.class */
public final class C12920h implements AbstractC12919g {
    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: X0 */
    public void mo22423X0(boolean z) {
        C15571h.m18626y("showMissedCallsNotifications", z);
    }

    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: Y0 */
    public boolean mo22422Y0() {
        return C15571h.m18635p();
    }

    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: Z0 */
    public void mo22421Z0(String str) {
        l.e(str, "selectedItemId");
        C15571h.m18627x("dialpad_feedback_index_str", str);
    }

    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: a */
    public boolean mo22420a() {
        return AbstractApplicationC8442a.m28551L().mo28540W();
    }

    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: a1 */
    public boolean mo22419a1() {
        return C15571h.f44037b.getBoolean("showProfileViewNotifications", true);
    }

    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: b1 */
    public void mo22418b1(boolean z) {
        C15571h.m18626y("showMissedCallReminders", z);
    }

    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: c1 */
    public boolean mo22417c1() {
        return C15571h.m18636o("languageAuto");
    }

    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: d1 */
    public String mo22416d1(String str) {
        l.e(str, "defaultLang");
        String m18646e = C15571h.m18646e("t9_lang", str);
        l.d(m18646e, "Settings.get(Settings.KEY_T9_LANG, defaultLang)");
        return m18646e;
    }

    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: e1 */
    public boolean mo22415e1() {
        return l.a(C15571h.m18638m(), "auto");
    }

    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: f1 */
    public String mo22414f1() {
        String m18647d = C15571h.m18647d("dialpad_feedback_index_str");
        l.d(m18647d, "Settings.get(Settings.KE…ALPAD_FEEDBACK_INDEX_STR)");
        return m18647d;
    }

    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: g1 */
    public String mo22413g1() {
        String m18647d = C15571h.m18647d("language");
        l.d(m18647d, "Settings.get(Settings.LANGUAGE_ISO)");
        return m18647d;
    }

    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: h1 */
    public void mo22412h1(Context context, C15576b c15576b) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c15576b, "language");
        C15571h.m18627x("language", c15576b.f44042j.f26267b);
        C15571h.m18652D(context);
    }

    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: i1 */
    public boolean mo22411i1() {
        return C15571h.m18636o("showMissedCallsNotifications");
    }

    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: j1 */
    public void mo22410j1(String str) {
        l.e(str, "iso");
        C15571h.m18627x("t9_lang", str);
    }

    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: k1 */
    public void mo22409k1(boolean z) {
        C15571h.m18626y("FEEDBACK_LIKES_TRUECALLER", z);
    }

    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: l1 */
    public void mo22408l1(boolean z) {
        C15571h.m18626y("GOOGLE_REVIEW_DONE", z);
    }

    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: m1 */
    public boolean mo22407m1() {
        return C15571h.m18636o("showMissedCallReminders");
    }

    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: n1 */
    public void mo22406n1(boolean z) {
        C15571h.m18626y("languageAuto", z);
    }

    @Override // p193e.p194a.p682e.p684b.AbstractC12919g
    /* renamed from: w0 */
    public void mo22405w0(boolean z) {
        C15571h.m18626y("showProfileViewNotifications", z);
    }
}
