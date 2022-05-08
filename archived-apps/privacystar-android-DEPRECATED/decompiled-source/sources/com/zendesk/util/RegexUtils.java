package com.zendesk.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/zendesk/util/RegexUtils.class */
public class RegexUtils {
    private static final String QUANTIFIER_VALIDATION_REGEX = "^\\{\\d{1,},?\\d*\\}";
    private static final Pattern QUANTIFIER_PATTERN = Pattern.compile(QUANTIFIER_VALIDATION_REGEX);

    private RegexUtils() {
    }

    public static String escape(String str) {
        if (str == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        char[] charArray = str.toCharArray();
        int i = 0;
        while (i < charArray.length) {
            char c = charArray[i];
            if (c == '{') {
                String validateQuantifierExpression = validateQuantifierExpression(str.substring(i));
                if (validateQuantifierExpression != null) {
                    sb.append(validateQuantifierExpression);
                    i += validateQuantifierExpression.length() - 1;
                } else {
                    sb.append(Pattern.quote(Character.toString(c)));
                }
            } else {
                sb.append(c);
            }
            i++;
        }
        return sb.toString();
    }

    static String validateQuantifierExpression(String str) {
        Matcher matcher = QUANTIFIER_PATTERN.matcher(str);
        return matcher.find() ? matcher.group() : null;
    }
}
