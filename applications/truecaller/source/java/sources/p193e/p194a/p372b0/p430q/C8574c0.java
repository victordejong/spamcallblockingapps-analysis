package p193e.p194a.p372b0.p430q;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.common.C3656R;
import e.m.f.a.e;
import e.m.f.a.j;
import e.m.f.a.o;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p193e.p194a.p1129p5.C19231g0;
import w3.c.a.a.a.h;
/* renamed from: e.a.b0.q.c0 */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/c0.class */
public class C8574c0 {

    /* renamed from: a */
    public static final List<String> f26390a = Collections.singletonList("IT");

    /* renamed from: b */
    public static final Pattern f26391b = Pattern.compile("[a-zA-Z$]{2}-?([a-zA-Z0-9 ]{6,8})");

    /* renamed from: c */
    public static final Pattern f26392c = Pattern.compile("[,;pPwW*#]");

    /* renamed from: a */
    public static boolean m28358a(String str, String str2) {
        return m28357b(str, str2, false);
    }

    /* renamed from: b */
    public static boolean m28357b(String str, String str2, boolean z) {
        if (h.e(str, str2)) {
            return !h.j(str);
        }
        int ordinal = j.q().E(str, str2).ordinal();
        return ordinal != 3 ? ordinal == 4 : !z;
    }

    /* renamed from: c */
    public static String m28356c(Intent intent, Context context) {
        String str;
        String str2;
        Uri data = intent.getData();
        String str3 = null;
        if (data == null) {
            return null;
        }
        String scheme = data.getScheme();
        if (scheme.equals("tel") || scheme.equals("sip")) {
            return data.getSchemeSpecificPart();
        }
        if (scheme.equalsIgnoreCase("truecaller")) {
            String schemeSpecificPart = data.getSchemeSpecificPart();
            if (m28352g(schemeSpecificPart)) {
                str3 = schemeSpecificPart;
            }
            return str3;
        } else if (context == null) {
            return null;
        } else {
            String authority = data.getAuthority();
            if (!"contacts".equals(authority)) {
                str = null;
                if ("com.android.contacts".equals(authority)) {
                    str2 = "data1";
                }
                return str;
            }
            str2 = "number";
            Cursor query = context.getContentResolver().query(data, new String[]{str2}, null, null, null);
            str = null;
            if (query != null) {
                str = null;
                try {
                    if (query.moveToFirst()) {
                        str = query.getString(query.getColumnIndex(str2));
                    }
                } finally {
                    query.close();
                }
            }
            return str;
        }
    }

    /* renamed from: d */
    public static int m28355d(j.d dVar) {
        int i = 10;
        if (dVar != null) {
            switch (dVar.ordinal()) {
                case 0:
                    i = 1;
                    break;
                case 1:
                case 2:
                case 7:
                    i = 2;
                    break;
                case 8:
                    i = 6;
                    break;
            }
            return i;
        }
        i = 7;
        return i;
    }

    /* renamed from: e */
    public static boolean m28354e(CharSequence charSequence) {
        if (h.j(charSequence)) {
            return false;
        }
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            if ((charAt >= '0' && charAt <= '9') || charAt == '*' || charAt == '#' || charAt == '+') {
                return true;
            }
        }
        return m28350i(charSequence);
    }

    /* renamed from: f */
    public static boolean m28353f(String str) {
        return h.j(str) || str.equals("-2") || str.equals("-1");
    }

    /* renamed from: g */
    public static boolean m28352g(String str) {
        return C19231g0.m13809H(str, 3) && C19231g0.m13811F(str, 3);
    }

    /* renamed from: h */
    public static boolean m28351h(String str) {
        return C19231g0.m13809H(str, 6) && C19231g0.m13811F(str, 6);
    }

    /* renamed from: i */
    public static boolean m28350i(CharSequence charSequence) {
        String charSequence2 = charSequence.toString();
        return charSequence2.contains(StringConstant.f9511AT) || charSequence2.contains("%40");
    }

    /* renamed from: j */
    public static boolean m28349j(String str, String str2) {
        if (h.j(str)) {
            return false;
        }
        try {
            if (!h.j(str2)) {
                j q = j.q();
                o R = q.R(str, str2);
                return q.H(R, q.z(R));
            }
            e.a aVar = e.a.a;
            throw new e(aVar, "Bad country ISO code, " + str2);
        } catch (e e) {
            return false;
        }
    }

    /* renamed from: k */
    public static String m28348k(Context context, String str, boolean z) {
        return m28352g(str) ? str : z ? context.getString(C3656R.string.HistoryHiddenNumber) : context.getString(C3656R.string.HistoryCallerUnknown);
    }

    /* renamed from: l */
    public static j.d m28347l(String str, j.d dVar) {
        j.d dVar2 = dVar;
        if (str != null) {
            try {
                dVar2 = j.d.valueOf(str.toUpperCase());
            } catch (IllegalArgumentException e) {
                dVar2 = dVar;
            }
        }
        return dVar2;
    }

    /* renamed from: m */
    public static String m28346m(String str) {
        Matcher matcher = f26391b.matcher(str);
        return !matcher.matches() ? str : matcher.group(1).toUpperCase();
    }
}
