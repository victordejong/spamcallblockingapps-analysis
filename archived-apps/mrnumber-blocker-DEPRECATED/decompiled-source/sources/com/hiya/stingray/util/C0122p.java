package com.hiya.stingray.util;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.core.content.a;
import com.google.common.base.r;
import com.google.gson.f;
import com.google.i18n.phonenumbers.h;
import com.hiya.stingray.exception.HiyaGenericException;
import com.hiya.stingray.p.c.d;
import com.hiya.stingray.s.c1;
import com.hiya.stingray.s.v0;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.joda.time.b;
import org.joda.time.g;
import org.joda.time.l;
/* renamed from: com.hiya.stingray.util.p */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/p.class */
public class C0122p {

    /* renamed from: a */
    private static final String[] f213a = {"2", "1", "-2", "3", "-3", "4", "-4", "-1", "0"};

    /* renamed from: b */
    private static SimpleDateFormat f214b;

    /* renamed from: c */
    private static SimpleDateFormat f215c;

    /* renamed from: d */
    private static SimpleDateFormat f216d;

    /* renamed from: e */
    private static SimpleDateFormat f217e;

    static {
        Locale locale = Locale.US;
        f214b = new SimpleDateFormat("h:mm aa", locale);
        f215c = new SimpleDateFormat("M/d - h:mm aa", locale);
        f216d = new SimpleDateFormat("M/d/yyyy", locale);
        f217e = new SimpleDateFormat("M/d", locale);
    }

    /* renamed from: a */
    public static <T> T m960a(String str, Type type) {
        return (T) new f().m(str, type);
    }

    /* renamed from: b */
    public static <T> String m959b(T t) {
        return new f().u(t);
    }

    /* renamed from: c */
    public static Map<String, v0> m958c(Map<String, Integer> map) {
        HashMap hashMap = new HashMap();
        if (map != null) {
            for (String str : map.keySet()) {
                hashMap.put(str, m936y(map.get(str).intValue()));
            }
        }
        return hashMap;
    }

    /* renamed from: d */
    public static String m957d(long j) {
        f214b.setTimeZone(Calendar.getInstance().getTimeZone());
        return f214b.format(new Date(j));
    }

    /* renamed from: e */
    public static String m956e(long j, boolean z) {
        return (z ? f216d : f217e).format(new Date(j));
    }

    /* renamed from: f */
    private static String m955f(long j) {
        return f215c.format(new Date(j));
    }

    /* renamed from: g */
    public static v0 m954g(String str, Map<String, v0> map) {
        v0 v0Var = v0.PHONE;
        v0 v0Var2 = v0Var;
        if (map != null) {
            Iterator<Map.Entry<String, v0>> it = map.entrySet().iterator();
            while (true) {
                v0Var2 = v0Var;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, v0> next = it.next();
                if (!r.b(next.getKey()) && next.getKey().equals(str)) {
                    v0Var2 = next.getValue();
                    break;
                }
            }
        }
        return v0Var2;
    }

    /* renamed from: h */
    public static String m953h(long j) {
        return m937x(j) ? m957d(j) : m956e(j, false);
    }

    /* renamed from: i */
    public static String m952i(long j) {
        return m937x(j) ? m957d(j) : m955f(j);
    }

    /* renamed from: j */
    public static c1 m951j(String str, int i, String str2, Locale locale) {
        return c1.a(str, i, str2, b.y().e(), locale != null ? locale.toLanguageTag() : null);
    }

    /* renamed from: k */
    public static Locale m950k() {
        return Build.VERSION.SDK_INT >= 24 ? Resources.getSystem().getConfiguration().getLocales().get(0) : Resources.getSystem().getConfiguration().locale;
    }

    /* renamed from: l */
    public static String m949l() {
        return m950k().getCountry();
    }

    /* renamed from: m */
    public static String m948m() {
        return m950k().toLanguageTag();
    }

    /* renamed from: n */
    public static String m947n() {
        return Locale.getDefault().getCountry();
    }

    /* renamed from: o */
    public static String m946o(Context context) {
        if (a.a(context, "android.permission.READ_PHONE_STATE") != 0) {
            r.a.a.f(new HiyaGenericException(), "getDeviceSIMNumber failed as READ_PHONE_STATE Permission hasn't been granted", new Object[0]);
            return "";
        } else if (C0124r.m928b(context)) {
            r.a.a.a("Simulating missing phone number", new Object[0]);
            return "";
        } else {
            String line1Number = ((TelephonyManager) context.getSystemService("phone")).getLine1Number();
            if (!r.b(line1Number)) {
                r.a.a.a("Device number: " + line1Number, new Object[0]);
                return line1Number;
            }
            r.a.a.c(new HiyaGenericException(), "Device number is null or empty from TelephonyManager", new Object[0]);
            return "";
        }
    }

    /* renamed from: p */
    public static String m945p(String str, String str2) {
        return (r.b(str) || r.b(str2)) ? !r.b(str2) ? str2.length() == 2 ? str2.toUpperCase(Locale.US) : str2 : "" : str2.length() == 2 ? String.format("%s, %s", str, str2.toUpperCase(Locale.US)) : String.format("%s, %s", str, str2);
    }

    /* renamed from: q */
    public static String m944q(String str, String str2, String str3) {
        String p = m945p(str, str2);
        return r.b(str3) ? p : r.b(p) ? str3 : String.format("%s %s", p, str3);
    }

    /* renamed from: r */
    public static String m943r(String str) {
        String str2 = "";
        if (str != null) {
            str2 = "";
            if (!str.isEmpty()) {
                String[] split = str.split(" ");
                if (split.length == 1) {
                    str2 = "" + split[0].charAt(0);
                } else {
                    str2 = "";
                    if (split.length > 1) {
                        str2 = "";
                        if (split[0].length() > 0) {
                            str2 = "";
                            if (split[split.length - 1].length() > 0) {
                                str2 = ("" + split[0].charAt(0)) + split[split.length - 1].charAt(0);
                            }
                        }
                    }
                }
            }
        }
        return str2.toUpperCase();
    }

    /* renamed from: s */
    public static String m942s(String str) {
        h t = h.t();
        com.google.i18n.phonenumbers.p.a d = com.google.i18n.phonenumbers.p.a.d();
        Locale locale = Locale.US;
        return d.c(t.W(str, locale.getCountry()), Locale.getDefault(), locale.getCountry());
    }

    /* renamed from: t */
    public static String m941t(Resources resources, int i, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(resources.getString(2131820764) + " ");
        int i2 = i / 60;
        int i3 = i / 3600;
        if (i < 60) {
            if (z) {
                sb.append(resources.getQuantityString(2131689484, i, Integer.valueOf(i)));
            } else {
                sb.append(resources.getQuantityString(2131689485, i, Integer.valueOf(i)));
            }
        } else if (i2 >= 60) {
            int i4 = i - (i3 * 3600);
            if (i4 >= 60) {
                int i5 = i4 / 60;
                if (z) {
                    sb.append(String.format("%s %s", resources.getQuantityString(2131689482, i3, Integer.valueOf(i3)), resources.getQuantityString(2131689483, i5, Integer.valueOf(i5))));
                } else {
                    sb.append(String.format("%s %s", resources.getQuantityString(2131689474, i3, Integer.valueOf(i3)), resources.getQuantityString(2131689479, i5, Integer.valueOf(i5))));
                }
            } else if (z) {
                sb.append(resources.getQuantityString(2131689482, i3, Integer.valueOf(i3)));
            } else {
                sb.append(resources.getQuantityString(2131689474, i3, Integer.valueOf(i3)));
            }
        } else if (z) {
            sb.append(resources.getQuantityString(2131689483, i2, Integer.valueOf(i2)));
        } else {
            sb.append(resources.getQuantityString(2131689479, i2, Integer.valueOf(i2)));
        }
        return sb.toString();
    }

    /* renamed from: u */
    public static boolean m940u() {
        return Build.VERSION.SDK_INT >= 26;
    }

    /* renamed from: v */
    public static boolean m939v(d dVar) {
        return (dVar == null || dVar.d() == null || dVar.d().isEmpty()) ? false : true;
    }

    /* renamed from: w */
    public static boolean m938w(String str) {
        return str != null && (str.isEmpty() || Arrays.asList(f213a).contains(str));
    }

    /* renamed from: x */
    private static boolean m937x(long j) {
        return g.n(new l(j), new l(System.currentTimeMillis())).p() <= 4;
    }

    /* renamed from: y */
    public static v0 m936y(int i) {
        return i == 1 ? v0.HOME : i == 2 ? v0.MOBILE : v0.PHONE;
    }

    /* renamed from: z */
    public static String m935z(String str) {
        return str.replaceAll("\\s|\\(|\\)|-|\\+", "").toLowerCase();
    }
}
