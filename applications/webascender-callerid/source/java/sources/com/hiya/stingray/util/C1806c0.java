package com.hiya.stingray.util;

import android.os.Build;
import android.text.Html;
import android.text.Spanned;
import com.google.common.base.Joiner;
import java.util.Set;
import kotlin.c0.a;
import kotlin.c0.j;
import kotlin.w.c.k;
import kotlin.w.c.t;
/* renamed from: com.hiya.stingray.util.c0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/c0.class */
public final class C1806c0 {
    /* renamed from: a */
    public static final Spanned m976a(String str) {
        Spanned spanned;
        k.g(str, "$this$fromHtml");
        if (Build.VERSION.SDK_INT >= 24) {
            spanned = Html.fromHtml(str, 0);
            k.c(spanned, "Html.fromHtml(this, Html.FROM_HTML_MODE_LEGACY)");
        } else {
            spanned = Html.fromHtml(str);
            k.c(spanned, "Html.fromHtml(this)");
        }
        return spanned;
    }

    /* renamed from: b */
    public static final boolean m975b(String str) {
        k.g(str, "$this$allSpaces");
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        boolean z = false;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (a.c(charAt)) {
                sb.append(charAt);
            }
        }
        String sb2 = sb.toString();
        k.e(sb2, "filterTo(StringBuilder(), predicate).toString()");
        if (sb2.length() == str.length()) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public static final String m974c(String str) {
        k.g(str, "$this$alphaNumeric");
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isLetterOrDigit(charAt)) {
                sb.append(charAt);
            }
        }
        String sb2 = sb.toString();
        k.e(sb2, "filterTo(StringBuilder(), predicate).toString()");
        return sb2;
    }

    /* renamed from: d */
    public static final String m973d(String str) {
        k.g(str, "$this$alphaNumericSpaces");
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isLetterOrDigit(charAt) || a.c(charAt)) {
                sb.append(charAt);
            }
        }
        String sb2 = sb.toString();
        k.e(sb2, "filterTo(StringBuilder(), predicate).toString()");
        return sb2;
    }

    /* renamed from: e */
    public static final boolean m972e(String str) {
        boolean z;
        k.g(str, "$this$hasLetters");
        int i = 0;
        while (true) {
            z = false;
            if (i >= str.length()) {
                break;
            } else if (Character.isLetter(str.charAt(i))) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* renamed from: f */
    public static final boolean m971f(String str) {
        boolean z;
        k.g(str, "$this$hasOnlyDigits");
        int i = 0;
        while (true) {
            z = false;
            if (i >= str.length()) {
                break;
            } else if (!Character.isDigit(str.charAt(i))) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return !z;
    }

    /* renamed from: g */
    public static final String m970g(t tVar) {
        k.g(tVar, "$this$noBreak");
        return " ";
    }

    /* renamed from: h */
    public static final String m969h(String str) {
        k.g(str, "$this$noSpaces");
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (!a.c(charAt)) {
                sb.append(charAt);
            }
        }
        String sb2 = sb.toString();
        k.e(sb2, "filterTo(StringBuilder(), predicate).toString()");
        return sb2;
    }

    /* renamed from: i */
    public static final String m968i(String str) {
        k.g(str, "$this$onlyDigits");
        return new j("[^0-9]").d(str, "");
    }

    /* renamed from: j */
    public static final String m967j(Set<String> set) {
        String join = set != null ? Joiner.on(", ").join(set) : null;
        if (join == null) {
            join = "";
        }
        return join;
    }

    /* renamed from: k */
    public static final String m966k(String str, String str2, int i) {
        k.g(str, "$this$withInsertion");
        k.g(str2, "textToInsert");
        String stringBuffer = new StringBuffer(str).insert(i, str2).toString();
        k.c(stringBuffer, "StringBuffer(this).inser… textToInsert).toString()");
        return stringBuffer;
    }
}
