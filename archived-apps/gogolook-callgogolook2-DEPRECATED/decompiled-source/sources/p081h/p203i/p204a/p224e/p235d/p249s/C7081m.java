package p081h.p203i.p204a.p224e.p235d.p249s;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: h.i.a.e.d.s.m */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/m.class */
public final class C7081m {

    /* renamed from: a */
    public static final Pattern f17190a = Pattern.compile("[\\\\\"/\b\f\n\r\t]");

    static {
        Pattern.compile("\\\\.");
    }

    /* renamed from: a */
    public static String m21133a(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            Matcher matcher = f17190a.matcher(str);
            StringBuffer stringBuffer = null;
            while (matcher.find()) {
                StringBuffer stringBuffer2 = stringBuffer;
                if (stringBuffer == null) {
                    stringBuffer2 = new StringBuffer();
                }
                char charAt = matcher.group().charAt(0);
                if (charAt == '\f') {
                    matcher.appendReplacement(stringBuffer2, "\\\\f");
                    stringBuffer = stringBuffer2;
                } else if (charAt == '\r') {
                    matcher.appendReplacement(stringBuffer2, "\\\\r");
                    stringBuffer = stringBuffer2;
                } else if (charAt == '\"') {
                    matcher.appendReplacement(stringBuffer2, "\\\\\\\"");
                    stringBuffer = stringBuffer2;
                } else if (charAt == '/') {
                    matcher.appendReplacement(stringBuffer2, "\\\\/");
                    stringBuffer = stringBuffer2;
                } else if (charAt != '\\') {
                    switch (charAt) {
                        case '\b':
                            matcher.appendReplacement(stringBuffer2, "\\\\b");
                            stringBuffer = stringBuffer2;
                            continue;
                        case '\t':
                            matcher.appendReplacement(stringBuffer2, "\\\\t");
                            stringBuffer = stringBuffer2;
                            continue;
                        case '\n':
                            matcher.appendReplacement(stringBuffer2, "\\\\n");
                            stringBuffer = stringBuffer2;
                            continue;
                        default:
                            stringBuffer = stringBuffer2;
                            continue;
                    }
                } else {
                    matcher.appendReplacement(stringBuffer2, "\\\\\\\\");
                    stringBuffer = stringBuffer2;
                }
            }
            if (stringBuffer == null) {
                return str;
            }
            matcher.appendTail(stringBuffer);
            str2 = stringBuffer.toString();
        }
        return str2;
    }
}
