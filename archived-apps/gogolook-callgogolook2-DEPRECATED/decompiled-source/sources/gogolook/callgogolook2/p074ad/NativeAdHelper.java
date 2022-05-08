package gogolook.callgogolook2.p074ad;

import android.content.Context;
import gogolook.callgogolook2.MyApplication;
import java.util.List;
import p081h.p160h.p161a.C6192e;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p163i.C6214a;
import p081h.p160h.p161a.p167m.AbstractC6258b;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
import p081h.p160h.p161a.p170p.C6268a;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14149s1;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14261f;
/* renamed from: gogolook.callgogolook2.ad.NativeAdHelper */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/NativeAdHelper.class */
public class NativeAdHelper {
    /* renamed from: a */
    public static void m28770a(Runnable runnable) {
        if (AdUtils.m28801h()) {
            runnable.run();
        } else {
            C14174u.m2293k().post(runnable);
        }
    }

    /* renamed from: a */
    public static boolean m28773a() {
        return C14217x3.m2137h(MyApplication.m29013o()) && AdStatusController.m28827c().m28831a();
    }

    /* renamed from: a */
    public static boolean m28771a(AdUnit adUnit) {
        return C6192e.m23607a(adUnit.m28821a()).m23597e();
    }

    /* renamed from: j */
    public static void m28761j(Context context) {
        if (!m28771a(AdUnit.CALL_END_DIALOG)) {
            C6192e a = C6192e.m23607a(AdUnit.CALL_END_DIALOG.m28821a());
            a.m23606a(AdUtils.m28803f());
            a.m23617a(EnumC6184a.AOTTER_TREK, false);
            a.m23617a(EnumC6184a.NATIVE, AdStatusController.m28827c().m28830a(AdUnit.CALL_END_DIALOG));
            a.m23617a(EnumC6184a.BANNER, false);
            a.m23608a(new AbstractC6258b() { // from class: gogolook.callgogolook2.ad.NativeAdHelper.10
                @Override // p081h.p160h.p161a.p167m.AbstractC6258b
                /* renamed from: a */
                public void mo5004a(String str) {
                    C14261f.m1975a(str, AdUtils.m28811a(str));
                    List<C6260a> a2 = C6268a.m23442a(str);
                    if (a2 != null) {
                        C14261f.m1972a(a2);
                    }
                    if (!C6214a.m23563c(str)) {
                        C14247d.m2062a(str, C6192e.m23607a(str).m23605b());
                        return;
                    }
                    C14247d.m2062a(str, C6262a.EnumC6267e.AD_FILL.m23446a());
                    C14037j3.m2731a().mo2704a(new C14149s1());
                }

                @Override // p081h.p160h.p161a.p167m.AbstractC6258b
                /* renamed from: b */
                public void mo5003b(String str) {
                    C14247d.m2060b(str);
                    C14247d.m2062a(str, C6262a.EnumC6267e.AD_REQUESTING.m23446a());
                }
            });
            a.m23619a(context);
        }
    }

    /* renamed from: k */
    public static void m28760k(Context context) {
        C14247d.m2066a(AdUnit.CALL_END_FULL);
        C14247d.m2066a(AdUnit.CALL_END_BANNER);
        C14247d.m2066a(AdUnit.CALL_END_DIALOG);
        if (!m28773a()) {
            C14247d.m2063a(AdUnit.CALL_END_FULL, C6262a.EnumC6266d.ERROR_NO_NEED_REQUEST.m23447a());
            C14247d.m2063a(AdUnit.CALL_END_BANNER, C6262a.EnumC6266d.ERROR_NO_NEED_REQUEST.m23447a());
            C14247d.m2063a(AdUnit.CALL_END_DIALOG, C6262a.EnumC6266d.ERROR_NO_NEED_REQUEST.m23447a());
        } else if (!AdUtils.m28816a(context)) {
            C14247d.m2063a(AdUnit.CALL_END_FULL, C6262a.EnumC6266d.ERROR_NO_NEED_REQUEST.m23447a());
            C14247d.m2063a(AdUnit.CALL_END_BANNER, C6262a.EnumC6266d.ERROR_NO_NEED_REQUEST.m23447a());
            C14247d.m2063a(AdUnit.CALL_END_DIALOG, C6262a.EnumC6266d.ERROR_NO_NEED_REQUEST.m23447a());
        } else {
            if (C6214a.m23563c(AdUnit.CALL_END_DIALOG.m28821a())) {
                C14247d.m2063a(AdUnit.CALL_END_DIALOG, C6262a.EnumC6267e.AD_EXIST.m23446a());
            } else {
                m28754q(context);
            }
            if (C6214a.m23563c(AdUnit.CALL_END_FULL.m28821a())) {
                C14247d.m2063a(AdUnit.CALL_END_FULL, C6262a.EnumC6267e.AD_EXIST.m23446a());
            } else if (C6214a.m23563c(AdUnit.CALL_END_BANNER.m28821a())) {
                C14247d.m2063a(AdUnit.CALL_END_BANNER, C6262a.EnumC6267e.AD_EXIST.m23446a());
            } else {
                m28750u(context);
            }
        }
    }

    /* renamed from: l */
    public static void m28759l(final Context context) {
        if (!m28771a(AdUnit.CALL_END_BANNER)) {
            C6192e a = C6192e.m23607a(AdUnit.CALL_END_BANNER.m28821a());
            a.m23606a(AdUtils.m28803f());
            a.m23617a(EnumC6184a.AOTTER_TREK, AdUtils.m28819a() && AdStatusController.m28827c().m28830a(AdUnit.CALL_END_BANNER));
            a.m23617a(EnumC6184a.NATIVE, false);
            a.m23617a(EnumC6184a.BANNER, false);
            a.m23608a(new AbstractC6258b() { // from class: gogolook.callgogolook2.ad.NativeAdHelper.8
                @Override // p081h.p160h.p161a.p167m.AbstractC6258b
                /* renamed from: a */
                public void mo5004a(String str) {
                    C14261f.m1975a(str, AdUtils.m28811a(str));
                    List<C6260a> a2 = C6268a.m23442a(str);
                    if (a2 != null) {
                        C14261f.m1972a(a2);
                    }
                    if (!C6214a.m23563c(str) || !AotterTrekUtils.m28797a(str)) {
                        NativeAdHelper.m28752s(context);
                    } else {
                        C14247d.m2062a(str, C6262a.EnumC6267e.AD_FILL.m23446a());
                    }
                }

                @Override // p081h.p160h.p161a.p167m.AbstractC6258b
                /* renamed from: b */
                public void mo5003b(String str) {
                    C14247d.m2060b(str);
                    C14247d.m2062a(str, C6262a.EnumC6267e.AD_REQUESTING.m23446a());
                }
            });
            a.m23619a(context);
        }
    }

    /* renamed from: m */
    public static void m28758m(final Context context) {
        if (!m28771a(AdUnit.CALL_END_FULL)) {
            C6192e a = C6192e.m23607a(AdUnit.CALL_END_FULL.m28821a());
            a.m23606a(AdUtils.m28803f());
            a.m23617a(EnumC6184a.AOTTER_TREK, AdUtils.m28819a() && AdStatusController.m28827c().m28830a(AdUnit.CALL_END_FULL));
            a.m23617a(EnumC6184a.NATIVE, false);
            a.m23617a(EnumC6184a.BANNER, false);
            a.m23608a(new AbstractC6258b() { // from class: gogolook.callgogolook2.ad.NativeAdHelper.6
                @Override // p081h.p160h.p161a.p167m.AbstractC6258b
                /* renamed from: a */
                public void mo5004a(String str) {
                    C14261f.m1975a(str, AdUtils.m28811a(str));
                    List<C6260a> a2 = C6268a.m23442a(str);
                    if (a2 != null) {
                        C14261f.m1972a(a2);
                    }
                    if (!C6214a.m23563c(str) || !AotterTrekUtils.m28797a(str)) {
                        NativeAdHelper.m28751t(context);
                    } else {
                        C14247d.m2062a(str, C6262a.EnumC6267e.AD_FILL.m23446a());
                    }
                }

                @Override // p081h.p160h.p161a.p167m.AbstractC6258b
                /* renamed from: b */
                public void mo5003b(String str) {
                    C14247d.m2060b(str);
                    C14247d.m2062a(str, C6262a.EnumC6267e.AD_REQUESTING.m23446a());
                }
            });
            a.m23619a(context);
        }
    }

    @ExperimentalCallEndNdpApi
    /* renamed from: n */
    public static void m28757n(Context context) {
        if (!m28771a(AdUnit.CALL_END_NDP)) {
            C6192e a = C6192e.m23607a(AdUnit.CALL_END_NDP.m28821a());
            a.m23606a(AdUtils.m28803f());
            a.m23617a(EnumC6184a.AOTTER_TREK, false);
            a.m23617a(EnumC6184a.NATIVE, true);
            a.m23617a(EnumC6184a.BANNER, false);
            a.m23608a(new AbstractC6258b() { // from class: gogolook.callgogolook2.ad.NativeAdHelper.12
                @Override // p081h.p160h.p161a.p167m.AbstractC6258b
                /* renamed from: a */
                public void mo5004a(String str) {
                    C14261f.m1975a(str, AdUtils.m28811a(str));
                    List<C6260a> a2 = C6268a.m23442a(str);
                    if (a2 != null) {
                        C14261f.m1972a(a2);
                    }
                    if (C6214a.m23563c(str)) {
                        C14247d.m2062a(str, C6262a.EnumC6267e.AD_FILL.m23446a());
                    }
                }

                @Override // p081h.p160h.p161a.p167m.AbstractC6258b
                /* renamed from: b */
                public void mo5003b(String str) {
                    C14247d.m2060b(str);
                    C14247d.m2062a(str, C6262a.EnumC6267e.AD_REQUESTING.m23446a());
                }
            });
            a.m23619a(context);
        }
    }

    /* renamed from: o */
    public static void m28756o(Context context) {
        if (!m28771a(AdUnit.CALL_END_BANNER)) {
            C6192e a = C6192e.m23607a(AdUnit.CALL_END_BANNER.m28821a());
            a.m23606a(AdUtils.m28803f());
            a.m23617a(EnumC6184a.AOTTER_TREK, false);
            a.m23617a(EnumC6184a.NATIVE, AdStatusController.m28827c().m28830a(AdUnit.CALL_END_BANNER));
            a.m23617a(EnumC6184a.BANNER, false);
            a.m23608a(new AbstractC6258b() { // from class: gogolook.callgogolook2.ad.NativeAdHelper.2
                @Override // p081h.p160h.p161a.p167m.AbstractC6258b
                /* renamed from: a */
                public void mo5004a(String str) {
                    C14261f.m1975a(str, AdUtils.m28811a(str));
                    List<C6260a> a2 = C6268a.m23442a(str);
                    if (a2 != null) {
                        C14261f.m1972a(a2);
                    }
                    if (!C6214a.m23563c(str)) {
                        C14247d.m2062a(str, C6192e.m23607a(str).m23605b());
                    } else {
                        C14247d.m2062a(str, C6262a.EnumC6267e.AD_FILL.m23446a());
                    }
                }

                @Override // p081h.p160h.p161a.p167m.AbstractC6258b
                /* renamed from: b */
                public void mo5003b(String str) {
                    C14247d.m2060b(str);
                    C14247d.m2062a(str, C6262a.EnumC6267e.AD_REQUESTING.m23446a());
                }
            });
            a.m23619a(context);
        }
    }

    /* renamed from: p */
    public static void m28755p(final Context context) {
        if (!m28771a(AdUnit.CALL_END_FULL)) {
            C6192e a = C6192e.m23607a(AdUnit.CALL_END_FULL.m28821a());
            a.m23606a(AdUtils.m28803f());
            a.m23617a(EnumC6184a.AOTTER_TREK, false);
            a.m23617a(EnumC6184a.NATIVE, AdStatusController.m28827c().m28830a(AdUnit.CALL_END_FULL));
            a.m23617a(EnumC6184a.BANNER, false);
            a.m23608a(new AbstractC6258b() { // from class: gogolook.callgogolook2.ad.NativeAdHelper.4
                @Override // p081h.p160h.p161a.p167m.AbstractC6258b
                /* renamed from: a */
                public void mo5004a(String str) {
                    C14261f.m1975a(str, AdUtils.m28811a(str));
                    List<C6260a> a2 = C6268a.m23442a(str);
                    if (a2 != null) {
                        C14261f.m1972a(a2);
                    }
                    if (!C6214a.m23563c(str)) {
                        C14247d.m2062a(str, C6192e.m23607a(str).m23605b());
                        NativeAdHelper.m28753r(context);
                        return;
                    }
                    C14247d.m2062a(str, C6262a.EnumC6267e.AD_FILL.m23446a());
                }

                @Override // p081h.p160h.p161a.p167m.AbstractC6258b
                /* renamed from: b */
                public void mo5003b(String str) {
                    C14247d.m2060b(str);
                    C14247d.m2062a(str, C6262a.EnumC6267e.AD_REQUESTING.m23446a());
                }
            });
            a.m23619a(context);
        }
    }

    /* renamed from: q */
    public static void m28754q(final Context context) {
        if (C6214a.m23563c(AdUnit.CALL_END_DIALOG.m28821a())) {
            C14247d.m2063a(AdUnit.CALL_END_DIALOG, C6262a.EnumC6267e.AD_EXIST.m23446a());
        } else {
            m28770a(new Runnable() { // from class: gogolook.callgogolook2.ad.NativeAdHelper.9
                @Override // java.lang.Runnable
                public void run() {
                    NativeAdHelper.m28761j(context);
                }
            });
        }
    }

    /* renamed from: r */
    public static void m28753r(final Context context) {
        if (C6214a.m23563c(AdUnit.CALL_END_BANNER.m28821a())) {
            C14247d.m2063a(AdUnit.CALL_END_BANNER, C6262a.EnumC6267e.AD_EXIST.m23446a());
        } else {
            m28770a(new Runnable() { // from class: gogolook.callgogolook2.ad.NativeAdHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    NativeAdHelper.m28756o(context);
                }
            });
        }
    }

    /* renamed from: s */
    public static void m28752s(final Context context) {
        if (C6214a.m23563c(AdUnit.CALL_END_FULL.m28821a())) {
            C14247d.m2063a(AdUnit.CALL_END_FULL, C6262a.EnumC6267e.AD_EXIST.m23446a());
        } else {
            m28770a(new Runnable() { // from class: gogolook.callgogolook2.ad.NativeAdHelper.3
                @Override // java.lang.Runnable
                public void run() {
                    NativeAdHelper.m28755p(context);
                }
            });
        }
    }

    /* renamed from: t */
    public static void m28751t(final Context context) {
        if (C6214a.m23563c(AdUnit.CALL_END_BANNER.m28821a())) {
            C14247d.m2063a(AdUnit.CALL_END_BANNER, C6262a.EnumC6267e.AD_EXIST.m23446a());
        } else {
            m28770a(new Runnable() { // from class: gogolook.callgogolook2.ad.NativeAdHelper.7
                @Override // java.lang.Runnable
                public void run() {
                    NativeAdHelper.m28759l(context);
                }
            });
        }
    }

    /* renamed from: u */
    public static void m28750u(final Context context) {
        if (C6214a.m23563c(AdUnit.CALL_END_FULL.m28821a())) {
            C14247d.m2063a(AdUnit.CALL_END_FULL, C6262a.EnumC6267e.AD_EXIST.m23446a());
        } else {
            m28770a(new Runnable() { // from class: gogolook.callgogolook2.ad.NativeAdHelper.5
                @Override // java.lang.Runnable
                public void run() {
                    NativeAdHelper.m28758m(context);
                }
            });
        }
    }

    @ExperimentalCallEndNdpApi
    /* renamed from: v */
    public static void m28749v(final Context context) {
        C14247d.m2066a(AdUnit.CALL_END_NDP);
        if (!m28773a() || !AdUtils.m28816a(context)) {
            C14247d.m2063a(AdUnit.CALL_END_NDP, C6262a.EnumC6266d.ERROR_NO_NEED_REQUEST.m23447a());
        } else if (C6214a.m23563c(AdUnit.CALL_END_NDP.m28821a())) {
            C14247d.m2063a(AdUnit.CALL_END_NDP, C6262a.EnumC6267e.AD_EXIST.m23446a());
        } else {
            m28770a(new Runnable() { // from class: gogolook.callgogolook2.ad.NativeAdHelper.11
                @Override // java.lang.Runnable
                public void run() {
                    NativeAdHelper.m28757n(context);
                }
            });
        }
    }
}
