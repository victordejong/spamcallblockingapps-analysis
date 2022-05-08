package p065f.p066a.p068b.p069a;

import android.content.Context;
import android.os.Bundle;
import android.telephony.SmsManager;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import com.flurry.sdk.C3340ji;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p081h.p160h.p172b.p173a.C6294c;
/* renamed from: f.a.b.a.i */
/* loaded from: classes-dex2jar.jar:f/a/b/a/i.class */
public class C4256i {

    /* renamed from: c */
    public static final Pattern f10310c = Pattern.compile("##(\\S+)##");

    /* renamed from: a */
    public final Context f10311a;

    /* renamed from: b */
    public final TelephonyManager f10312b;

    public C4256i(Context context) {
        this.f10311a = context;
        this.f10312b = (TelephonyManager) context.getSystemService("phone");
    }

    /* renamed from: a */
    public static String m29217a(Locale locale) {
        StringBuilder sb = new StringBuilder();
        m29219a(sb, locale);
        if (!Locale.US.equals(locale)) {
            if (sb.length() > 0) {
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
            }
            sb.append("en-US");
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m29219a(StringBuilder sb, Locale locale) {
        String c = m29210c(locale.getLanguage());
        if (c != null) {
            sb.append(c);
            String country = locale.getCountry();
            if (country != null) {
                sb.append("-");
                sb.append(country);
            }
        }
    }

    /* renamed from: a */
    public static void m29216a(Map<String, List<String>> map) {
        StringBuilder sb = new StringBuilder();
        if (map != null) {
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                String key = entry.getKey();
                List<String> value = entry.getValue();
                if (value != null) {
                    for (String str : value) {
                        sb.append(key);
                        sb.append('=');
                        sb.append(str);
                        sb.append('\n');
                    }
                }
            }
            String str2 = "HTTP: headers\n" + sb.toString();
        }
    }

    /* renamed from: b */
    public static int m29214b(int i) {
        try {
            Method method = SubscriptionManager.class.getMethod("getSlotId", Integer.TYPE);
            if (method != null) {
                return ((Integer) method.invoke(null, Integer.valueOf(i))).intValue();
            }
            return -1;
        } catch (Exception e) {
            String str = "SubscriptionManager.getSlotId failed " + e;
            return -1;
        }
    }

    /* renamed from: b */
    public static void m29213b(String str) throws C4257j {
        if (!"GET".equals(str) && !"POST".equals(str)) {
            throw new C4257j(0, "Invalid method " + str);
        }
    }

    /* renamed from: c */
    public static String m29211c() {
        return C6294c.m23364a("persist.radio.cdma.nai");
    }

    /* renamed from: c */
    public static String m29210c(String str) {
        if (str == null) {
            return null;
        }
        if ("iw".equals(str)) {
            return "he";
        }
        if ("in".equals(str)) {
            return "id";
        }
        String str2 = str;
        if (C3340ji.f5710a.equals(str)) {
            str2 = "yi";
        }
        return str2;
    }

    /* renamed from: a */
    public final String m29224a() {
        if (!C4266q.m29163c()) {
            return this.f10312b.getLine1Number();
        }
        SubscriptionInfo activeSubscriptionInfo = SubscriptionManager.from(this.f10311a).getActiveSubscriptionInfo(SmsManager.getDefaultSmsSubscriptionId());
        if (activeSubscriptionInfo != null) {
            return activeSubscriptionInfo.getNumber();
        }
        return null;
    }

    /* renamed from: a */
    public final String m29223a(int i) {
        try {
            Method method = this.f10312b.getClass().getMethod("getNai", Integer.TYPE);
            if (method != null) {
                return (String) method.invoke(this.f10312b, Integer.valueOf(i));
            }
            return null;
        } catch (Exception e) {
            String str = "TelephonyManager.getNai failed " + e;
            return null;
        }
    }

    /* renamed from: a */
    public final String m29222a(String str) {
        byte[] bArr;
        String a = C4266q.m29163c() ? m29223a(m29214b(C4266q.m29169a(-1))) : m29211c();
        if (TextUtils.isEmpty(a)) {
            return null;
        }
        String str2 = a;
        if (!TextUtils.isEmpty(str)) {
            str2 = a + str;
        }
        try {
            bArr = Base64.encode(str2.getBytes("UTF-8"), 2);
        } catch (UnsupportedEncodingException e) {
            bArr = Base64.encode(str2.getBytes(), 2);
        }
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            return new String(bArr);
        }
    }

    /* renamed from: a */
    public final String m29221a(String str, Bundle bundle) {
        if ("LINE1".equals(str)) {
            return m29224a();
        }
        if ("LINE1NOCOUNTRYCODE".equals(str)) {
            return C4264o.m29171a(m29224a(), m29215b());
        }
        if ("NAI".equals(str)) {
            return m29222a(bundle.getString("naiSuffix", AbstractC4246d.f10290b));
        }
        return null;
    }

    /* renamed from: a */
    public final void m29218a(HttpURLConnection httpURLConnection, Bundle bundle) {
        String string = bundle.getString("httpParams");
        if (!TextUtils.isEmpty(string)) {
            for (String str : string.split("\\|")) {
                String[] split = str.split(":", 2);
                if (split.length == 2) {
                    String trim = split[0].trim();
                    String b = m29212b(split[1].trim(), bundle);
                    if (!TextUtils.isEmpty(trim) && !TextUtils.isEmpty(b)) {
                        httpURLConnection.setRequestProperty(trim, b);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0578  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] m29220a(java.lang.String r6, byte[] r7, java.lang.String r8, boolean r9, java.lang.String r10, int r11, android.os.Bundle r12, java.lang.String r13, java.lang.String r14) throws p065f.p066a.p068b.p069a.C4257j {
        /*
            Method dump skipped, instructions count: 1407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p065f.p066a.p068b.p069a.C4256i.m29220a(java.lang.String, byte[], java.lang.String, boolean, java.lang.String, int, android.os.Bundle, java.lang.String, java.lang.String):byte[]");
    }

    /* renamed from: b */
    public final String m29215b() {
        String str;
        if (C4266q.m29163c()) {
            SubscriptionInfo activeSubscriptionInfo = SubscriptionManager.from(this.f10311a).getActiveSubscriptionInfo(SmsManager.getDefaultSmsSubscriptionId());
            str = activeSubscriptionInfo != null ? activeSubscriptionInfo.getCountryIso() : null;
        } else {
            str = this.f10312b.getSimCountryIso();
        }
        return !TextUtils.isEmpty(str) ? str.toUpperCase() : Locale.getDefault().getCountry();
    }

    /* renamed from: b */
    public final String m29212b(String str, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Matcher matcher = f10310c.matcher(str);
        int i = 0;
        StringBuilder sb = null;
        while (matcher.find()) {
            StringBuilder sb2 = sb;
            if (sb == null) {
                sb2 = new StringBuilder();
            }
            int start = matcher.start();
            if (start > i) {
                sb2.append(str.substring(i, start));
            }
            String a = m29221a(matcher.group(1), bundle);
            if (a != null) {
                sb2.append(a);
            }
            i = matcher.end();
            sb = sb2;
        }
        if (sb != null && i < str.length()) {
            sb.append(str.substring(i));
        }
        if (sb != null) {
            str = sb.toString();
        }
        return str;
    }
}
