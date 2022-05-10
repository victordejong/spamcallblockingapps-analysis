package p131c.p161d.p282e.p285j.p286a.p287c;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzgv;
import com.google.android.gms.measurement.internal.zzgx;
import com.google.android.gms.measurement.internal.zzig;
import com.integralads.avid.library.mopub.AvidBridge;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
/* renamed from: c.d.e.j.a.c.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/j/a/c/d.class */
public final class C5152d {

    /* renamed from: a */
    public static final Set<String> f17784a = new HashSet(Arrays.asList("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"));

    /* renamed from: b */
    public static final List<String> f17785b = Arrays.asList("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");

    /* renamed from: c */
    public static final List<String> f17786c = Arrays.asList("auto", "app", "am");

    /* renamed from: d */
    public static final List<String> f17787d = Arrays.asList("_r", "_dbg");

    /* renamed from: e */
    public static final List<String> f17788e = Arrays.asList((String[]) ArrayUtils.m17112a(new String[]{zzgx.f30045a, zzgx.f30046b}));

    /* renamed from: f */
    public static final List<String> f17789f = Arrays.asList("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    /* renamed from: a */
    public static AbstractC5143a.C5146c m24413a(Bundle bundle) {
        Preconditions.m17288a(bundle);
        AbstractC5143a.C5146c cVar = new AbstractC5143a.C5146c();
        cVar.f17759a = (String) zzgs.m9012a(bundle, "origin", String.class, null);
        cVar.f17760b = (String) zzgs.m9012a(bundle, "name", String.class, null);
        cVar.f17761c = zzgs.m9012a(bundle, "value", Object.class, null);
        cVar.f17762d = (String) zzgs.m9012a(bundle, "trigger_event_name", String.class, null);
        cVar.f17763e = ((Long) zzgs.m9012a(bundle, "trigger_timeout", Long.class, 0L)).longValue();
        cVar.f17764f = (String) zzgs.m9012a(bundle, "timed_out_event_name", String.class, null);
        cVar.f17765g = (Bundle) zzgs.m9012a(bundle, "timed_out_event_params", Bundle.class, null);
        cVar.f17766h = (String) zzgs.m9012a(bundle, "triggered_event_name", String.class, null);
        cVar.f17767i = (Bundle) zzgs.m9012a(bundle, "triggered_event_params", Bundle.class, null);
        cVar.f17768j = ((Long) zzgs.m9012a(bundle, "time_to_live", Long.class, 0L)).longValue();
        cVar.f17769k = (String) zzgs.m9012a(bundle, "expired_event_name", String.class, null);
        cVar.f17770l = (Bundle) zzgs.m9012a(bundle, "expired_event_params", Bundle.class, null);
        cVar.f17772n = ((Boolean) zzgs.m9012a(bundle, AvidBridge.APP_STATE_ACTIVE, Boolean.class, false)).booleanValue();
        cVar.f17771m = ((Long) zzgs.m9012a(bundle, "creation_timestamp", Long.class, 0L)).longValue();
        cVar.f17773o = ((Long) zzgs.m9012a(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        return cVar;
    }

    /* renamed from: a */
    public static boolean m24412a(AbstractC5143a.C5146c cVar) {
        String str;
        if (cVar == null || (str = cVar.f17759a) == null || str.isEmpty()) {
            return false;
        }
        Object obj = cVar.f17761c;
        if ((obj != null && zzig.m8944a(obj) == null) || !m24411a(str) || !m24409a(str, cVar.f17760b)) {
            return false;
        }
        String str2 = cVar.f17769k;
        if (str2 != null && (!m24410a(str2, cVar.f17770l) || !m24408a(str, cVar.f17769k, cVar.f17770l))) {
            return false;
        }
        String str3 = cVar.f17766h;
        if (str3 != null && (!m24410a(str3, cVar.f17767i) || !m24408a(str, cVar.f17766h, cVar.f17767i))) {
            return false;
        }
        String str4 = cVar.f17764f;
        if (str4 != null) {
            return m24410a(str4, cVar.f17765g) && m24408a(str, cVar.f17764f, cVar.f17765g);
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m24411a(String str) {
        return !f17786c.contains(str);
    }

    /* renamed from: a */
    public static boolean m24410a(String str, Bundle bundle) {
        if (f17785b.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        for (String str2 : f17787d) {
            if (bundle.containsKey(str2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m24409a(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals("fcm") || str.equals("frc");
        }
        if ("_ln".equals(str2)) {
            return str.equals("fcm") || str.equals("fiam");
        }
        if (f17788e.contains(str2)) {
            return false;
        }
        for (String str3 : f17789f) {
            if (str2.matches(str3)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m24408a(String str, String str2, Bundle bundle) {
        if (!"_cmp".equals(str2)) {
            return true;
        }
        if (!m24411a(str) || bundle == null) {
            return false;
        }
        for (String str3 : f17787d) {
            if (bundle.containsKey(str3)) {
                return false;
            }
        }
        char c = 65535;
        int hashCode = str.hashCode();
        if (hashCode != 101200) {
            if (hashCode != 101230) {
                if (hashCode == 3142703 && str.equals("fiam")) {
                    c = 2;
                }
            } else if (str.equals("fdl")) {
                c = 1;
            }
        } else if (str.equals("fcm")) {
            c = 0;
        }
        if (c == 0) {
            bundle.putString("_cis", "fcm_integration");
            return true;
        } else if (c == 1) {
            bundle.putString("_cis", "fdl_integration");
            return true;
        } else if (c != 2) {
            return false;
        } else {
            bundle.putString("_cis", "fiam_integration");
            return true;
        }
    }

    /* renamed from: b */
    public static Bundle m24407b(AbstractC5143a.C5146c cVar) {
        Bundle bundle = new Bundle();
        String str = cVar.f17759a;
        if (str != null) {
            bundle.putString("origin", str);
        }
        String str2 = cVar.f17760b;
        if (str2 != null) {
            bundle.putString("name", str2);
        }
        Object obj = cVar.f17761c;
        if (obj != null) {
            zzgs.m9013a(bundle, obj);
        }
        String str3 = cVar.f17762d;
        if (str3 != null) {
            bundle.putString("trigger_event_name", str3);
        }
        bundle.putLong("trigger_timeout", cVar.f17763e);
        String str4 = cVar.f17764f;
        if (str4 != null) {
            bundle.putString("timed_out_event_name", str4);
        }
        Bundle bundle2 = cVar.f17765g;
        if (bundle2 != null) {
            bundle.putBundle("timed_out_event_params", bundle2);
        }
        String str5 = cVar.f17766h;
        if (str5 != null) {
            bundle.putString("triggered_event_name", str5);
        }
        Bundle bundle3 = cVar.f17767i;
        if (bundle3 != null) {
            bundle.putBundle("triggered_event_params", bundle3);
        }
        bundle.putLong("time_to_live", cVar.f17768j);
        String str6 = cVar.f17769k;
        if (str6 != null) {
            bundle.putString("expired_event_name", str6);
        }
        Bundle bundle4 = cVar.f17770l;
        if (bundle4 != null) {
            bundle.putBundle("expired_event_params", bundle4);
        }
        bundle.putLong("creation_timestamp", cVar.f17771m);
        bundle.putBoolean(AvidBridge.APP_STATE_ACTIVE, cVar.f17772n);
        bundle.putLong("triggered_timestamp", cVar.f17773o);
        return bundle;
    }

    /* renamed from: b */
    public static void m24405b(String str, String str2, Bundle bundle) {
        if ("clx".equals(str) && "_ae".equals(str2)) {
            bundle.putLong("_r", 1L);
        }
    }

    /* renamed from: b */
    public static boolean m24406b(String str) {
        return !f17784a.contains(str);
    }

    /* renamed from: c */
    public static boolean m24404c(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int codePointAt = str.codePointAt(0);
        if (!Character.isLetter(codePointAt)) {
            return false;
        }
        int length = str.length();
        int charCount = Character.charCount(codePointAt);
        while (charCount < length) {
            int codePointAt2 = str.codePointAt(charCount);
            if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                return false;
            }
            charCount += Character.charCount(codePointAt2);
        }
        return true;
    }

    /* renamed from: d */
    public static boolean m24403d(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int codePointAt = str.codePointAt(0);
        if (!Character.isLetter(codePointAt) && codePointAt != 95) {
            return false;
        }
        int length = str.length();
        int charCount = Character.charCount(codePointAt);
        while (charCount < length) {
            int codePointAt2 = str.codePointAt(charCount);
            if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                return false;
            }
            charCount += Character.charCount(codePointAt2);
        }
        return true;
    }

    /* renamed from: e */
    public static String m24402e(String str) {
        String a = zzgv.m9010a(str);
        return a != null ? a : str;
    }

    /* renamed from: f */
    public static String m24401f(String str) {
        String b = zzgv.m9009b(str);
        return b != null ? b : str;
    }
}
