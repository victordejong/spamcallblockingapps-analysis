package com.hiya.stingray.util;

import android.content.Context;
import androidx.core.content.C0203a;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.h;
import com.google.i18n.phonenumbers.m;
import com.hiya.stingray.exception.HiyaGenericException;
import java.util.Currency;
import kotlin.l;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.util.q */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/q.class */
public final class C1840q {
    /* renamed from: a */
    public static final Integer m855a(String str, String str2) {
        k.g(str, "simIso");
        k.g(str2, "phone");
        try {
            m W = h.t().W(str2, str);
            k.c(W, "parsedPhoneNumber");
            return Integer.valueOf(W.c());
        } catch (NumberParseException e) {
            return null;
        }
    }

    /* renamed from: b */
    public static final String m854b(String str) {
        k.g(str, "currency");
        Currency currency = Currency.getInstance(str);
        String str2 = str;
        if (currency != null) {
            String symbol = currency.getSymbol(C1839p.m871k());
            str2 = str;
            if (symbol != null) {
                str2 = symbol;
            }
        }
        return str2;
    }

    /* renamed from: c */
    public static final l<String, Integer> m853c(Context context, String str) {
        k.g(context, "context");
        k.g(str, "simIso");
        if (C0203a.m6059a(context, "android.permission.READ_PHONE_STATE") != 0) {
            return null;
        }
        String m867o = C1839p.m867o(context);
        k.c(m867o, "devicePhoneNumber");
        l<String, Integer> lVar = null;
        if (m867o.length() > 0) {
            try {
                m W = h.t().W(m867o, str);
                String m816c = C1848y.m816c(m867o, str);
                k.c(W, "parsedPhoneNumber");
                lVar = new l<>(m816c, Integer.valueOf(W.c()));
            } catch (NumberParseException e) {
                lVar = null;
            }
        }
        return lVar;
    }

    /* renamed from: d */
    public static final String m852d(Context context, String str) {
        k.g(context, "context");
        k.g(str, "simIso");
        if (C0203a.m6059a(context, "android.permission.READ_PHONE_STATE") != 0) {
            return null;
        }
        String m867o = C1839p.m867o(context);
        k.c(m867o, "devicePhoneNumber");
        String str2 = null;
        if (m867o.length() > 0) {
            try {
                h.t().W(m867o, str);
                str2 = C1848y.m816c(m867o, str);
            } catch (NumberParseException | HiyaGenericException e) {
                str2 = null;
            }
        }
        return str2;
    }

    /* renamed from: e */
    public static final boolean m851e(String str) {
        k.g(str, "$this$isValidAvatarURL");
        return !kotlin.c0.m.I(str, "http://", false, 2, (Object) null);
    }
}
