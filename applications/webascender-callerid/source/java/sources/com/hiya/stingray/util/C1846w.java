package com.hiya.stingray.util;

import com.google.i18n.phonenumbers.b;
import com.hiya.common.phone.parser.PhoneParser;
import g.g.c.a.a.a.c;
import java.util.Locale;
import kotlin.c0.m;
import kotlin.s.e;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.util.w */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/w.class */
public final class C1846w {

    /* renamed from: a */
    private final b f5014a = PhoneParser.c.a().a(new c(m824b()));

    /* renamed from: b */
    private final String[] f5015b = {"*", "#"};

    /* renamed from: b */
    private final String m824b() {
        Locale locale = Locale.getDefault();
        k.c(locale, "Locale.getDefault()");
        String country = locale.getCountry();
        if (country == null || m.s(country)) {
            Locale locale2 = Locale.US;
            k.c(locale2, "Locale.US");
            country = locale2.getCountry();
            k.c(country, "Locale.US.country");
        }
        return country;
    }

    /* renamed from: a */
    public final String m825a(String str) {
        k.g(str, "phoneNumber");
        this.f5014a.h();
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isDigit(charAt) || charAt == '+') {
                sb.append(charAt);
            }
        }
        String sb2 = sb.toString();
        k.e(sb2, "filterTo(StringBuilder(), predicate).toString()");
        for (int i2 = 0; i2 < sb2.length(); i2++) {
            str = this.f5014a.n(sb2.charAt(i2));
            k.c(str, "asYouTypeFormatter.inputDigit(it)");
        }
        return str;
    }

    /* renamed from: c */
    public final boolean m823c(String str) {
        int i;
        k.g(str, "phoneNumber");
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= str.length()) {
                break;
            }
            int i4 = i;
            if (e.m(this.f5015b, String.valueOf(str.charAt(i2)))) {
                i4 = i + 1;
            }
            i2++;
            i3 = i4;
        }
        if (i == 0) {
            z = true;
        }
        return z;
    }
}
