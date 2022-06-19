package p193e.p194a.p437c.p531c0;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import s1.f0.v;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c.c0.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/c0/j.class */
public final class C10023j {

    /* renamed from: a */
    public static final Map<String, String> f29855a = i.W(new k[]{new k("inr", "₹"), new k("usd", "$"), new k("eur", "€"), new k("gbp", "£")});

    /* renamed from: b */
    public static final C10023j f29856b = null;

    /* renamed from: a */
    public static final String m26899a(double d, Locale locale) {
        l.e(locale, AnalyticsConstants.LOCALE);
        NumberFormat decimalFormat = DecimalFormat.getInstance(locale);
        Objects.requireNonNull(decimalFormat, "null cannot be cast to non-null type java.text.DecimalFormat");
        DecimalFormat decimalFormat2 = (DecimalFormat) decimalFormat;
        decimalFormat2.setMaximumFractionDigits(2);
        boolean z = false;
        decimalFormat2.setMinimumFractionDigits(0);
        String format = decimalFormat2.format(d);
        l.d(format, "formattedText");
        DecimalFormatSymbols decimalFormatSymbols = decimalFormat2.getDecimalFormatSymbols();
        l.d(decimalFormatSymbols, "formatter.decimalFormatSymbols");
        if (v.T(format, new char[]{decimalFormatSymbols.getDecimalSeparator()}, false, 0, 6).size() > 1) {
            z = true;
        }
        if (!z) {
            return format;
        }
        decimalFormat2.setMinimumFractionDigits(2);
        String format2 = decimalFormat2.format(d);
        l.d(format2, "formatter.format(amt)");
        return format2;
    }

    /* renamed from: b */
    public static final Locale m26898b(String str) {
        Locale locale;
        l.e(str, "countryCode");
        if (l.a(str, "IN")) {
            Locale locale2 = Locale.ENGLISH;
            l.d(locale2, "Locale.ENGLISH");
            locale = new Locale(locale2.getLanguage(), "IN");
        } else {
            locale = Locale.getDefault();
            l.d(locale, "Locale.getDefault()");
        }
        return locale;
    }

    /* renamed from: c */
    public static final String m26897c(String str, String str2) {
        String str3;
        l.e(str, "currencyFromParser");
        l.e(str2, "countryCode");
        Locale locale = Locale.ROOT;
        l.d(locale, "Locale.ROOT");
        String lowerCase = str.toLowerCase(locale);
        l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        if (lowerCase.length() > 0) {
            String str4 = lowerCase;
            if (l.a(lowerCase, "rs")) {
                str4 = lowerCase;
                if (l.a(str2, "IN")) {
                    str4 = "inr";
                }
            }
            Map<String, String> map = f29855a;
            if (map.containsKey(str4)) {
                str3 = map.get(str4);
            } else {
                StringBuilder sb = new StringBuilder();
                Locale locale2 = Locale.US;
                l.d(locale2, "Locale.US");
                String upperCase = str4.toUpperCase(locale2);
                l.d(upperCase, "(this as java.lang.String).toUpperCase(locale)");
                sb.append(upperCase);
                sb.append(StringConstant.SPACE);
                str3 = sb.toString();
            }
        } else {
            str3 = null;
        }
        return str3;
    }
}
