package com.hiya.stingray.util;

import android.content.Context;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.manager.o2;
import com.hiya.stingray.t.m0;
import com.hiya.stingray.t.n0;
import com.hiya.stingray.t.z0;
import com.hiya.stingray.ui.h;
import com.hiya.stingray.ui.k;
import com.hiya.stingray.ui.local.blocking.BlockingFragment;
import com.hiya.stingray.ui.local.dialer.DialerFragment;
import com.hiya.stingray.ui.local.e.b;
import com.hiya.stingray.ui.local.settings.n;
import com.hiya.stingray.ui.v.a;
import com.hiya.stingray.util.C1823i;
import com.hiya.stingray.util.p039g0.AbstractC1818c;
/* renamed from: com.hiya.stingray.util.g */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/g.class */
public final class C1817g {
    /* renamed from: a */
    public static String m919a() {
        return String.valueOf(110001);
    }

    /* renamed from: b */
    public static String m918b(o2 o2Var, Context context) {
        StringBuilder sb = new StringBuilder();
        if (o2Var.B(context)) {
            sb.append("spam");
        }
        if (o2Var.u(context)) {
            sb.append(sb.length() > 0 ? "_scam" : "scam");
        }
        if (o2Var.y(context)) {
            sb.append(sb.length() > 0 ? "_priv" : "priv");
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static String m917c(o2 o2Var) {
        StringBuilder sb = new StringBuilder();
        if (o2Var.q("id_incoming_calls")) {
            sb.append("in");
        }
        if (o2Var.q("id_outgoing_calls")) {
            sb.append(sb.length() > 0 ? "_out" : "out");
        }
        if (!o2Var.q("unknown_calls_only")) {
            sb.append(sb.length() > 0 ? "_noid" : "noid");
        }
        if (o2Var.q("message_settings")) {
            sb.append(sb.length() > 0 ? "_sms" : "sms");
        }
        if (o2Var.t()) {
            sb.append(sb.length() > 0 ? "_cscreen" : "cscreen");
        }
        return sb.toString();
    }

    /* renamed from: d */
    public static void m916d(e1 e1Var, Class cls, String str) {
        if (k.class.equals(cls)) {
            m913g(e1Var, "callers", str);
        } else if (DialerFragment.class.equals(cls)) {
            m913g(e1Var, "dialpad", str);
        } else if (BlockingFragment.class.equals(cls)) {
            m913g(e1Var, "block_list", str);
        } else if (n.class.equals(cls)) {
            m913g(e1Var, "settings", str);
        } else if (h.class.equals(cls)) {
            m913g(e1Var, "callers", str);
        } else if (com.hiya.stingray.ui.premium.n.class.equals(cls)) {
            m913g(e1Var, "premium", str);
        } else if (a.class.equals(cls)) {
            m913g(e1Var, "lookup", str);
        } else if (b.class.equals(cls)) {
            m913g(e1Var, "callers", str);
        } else if (!com.hiya.stingray.ui.u.b.class.equals(cls)) {
            throw new IllegalStateException("Unknown screen index. Currently sending invalid position for tabs");
        } else {
            m913g(e1Var, "dialpad", str);
        }
    }

    /* renamed from: e */
    public static void m915e(e1 e1Var, n0 n0Var, z0 z0Var, boolean z, boolean z2, boolean z3, C1823i.EnumC1824a enumC1824a, com.hiya.stingray.service.a.a aVar, boolean z4, Boolean bool) {
        String str;
        String str2 = enumC1824a == C1823i.EnumC1824a.INCOMING ? "incoming.call" : "outgoing.call";
        String str3 = "";
        if (z0Var == null) {
            str = str2;
            if (z2) {
                if (!z3) {
                    str3 = "auto_blocked_screened";
                    str = str2;
                } else {
                    str3 = "non_addrbook";
                    str = str2;
                }
            }
        } else if (z0Var == z0.SPAM) {
            str = str2 + ".spam";
        } else {
            str = str2;
            if (z0Var == z0.FRAUD) {
                str = str2 + ".spam";
                str3 = "scam_or_fraud";
            }
        }
        String str4 = str3;
        if (n0Var != null) {
            str4 = str3;
            if (n0Var.f() == m0.PERSON) {
                str4 = str3;
                if (!bool.booleanValue()) {
                    str4 = "name_available";
                }
            }
        }
        String str5 = str4;
        if (str4.isEmpty()) {
            str5 = str4;
            if (enumC1824a != C1823i.EnumC1824a.OUTGOING) {
                if (aVar == com.hiya.stingray.service.a.a.BLOCKED_AUTO_FRAUD) {
                    str5 = "auto-blocked-scam";
                } else if (aVar == com.hiya.stingray.service.a.a.BLOCKED_AUTO_PRIVATE) {
                    str5 = "auto-blocked-private";
                } else if (aVar == com.hiya.stingray.service.a.a.BLOCKED_AUTO_SPAM) {
                    str5 = "auto-blocked-spam";
                } else if (aVar == com.hiya.stingray.service.a.a.BLOCKED_STARTS_WITH) {
                    str5 = "auto-blocked-starts_with_prefix";
                } else {
                    str5 = str4;
                    if (aVar == com.hiya.stingray.service.a.a.BLOCKED_BLACK_LIST) {
                        str5 = "blocked";
                    }
                }
            }
        }
        if (str5.isEmpty()) {
            if (z4) {
                str5 = "addrbook";
            } else {
                str5 = "non_addrbook";
                if (z) {
                    str5 = "private";
                }
            }
        }
        AbstractC1818c.C1819a m906b = AbstractC1818c.C1819a.m906b();
        m906b.m905c(str);
        m906b.m901g(str5);
        e1Var.c("count_call_text_activity", m906b.m907a());
    }

    /* renamed from: f */
    public static void m914f(e1 e1Var, C1823i.EnumC1824a enumC1824a, com.hiya.stingray.service.a.a aVar) {
        m915e(e1Var, null, null, true, false, false, enumC1824a, aVar, false, null);
    }

    /* renamed from: g */
    private static void m913g(e1 e1Var, String str, String str2) {
        AbstractC1818c.C1819a c1819a = new AbstractC1818c.C1819a();
        c1819a.m896l("tab_bar_item");
        c1819a.m900h(str);
        c1819a.m897k(str2);
        e1Var.c("navigate", c1819a.m907a());
    }
}
