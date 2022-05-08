package org.apache.commons.cli;
/* loaded from: classes2-dex2jar.jar:org/apache/commons/cli/OptionValidator.class */
class OptionValidator {
    OptionValidator() {
    }

    private static boolean isValidChar(char c) {
        return Character.isJavaIdentifierPart(c);
    }

    private static boolean isValidOpt(char c) {
        return isValidChar(c) || c == ' ' || c == '?' || c == '@';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void validateOption(String str) throws IllegalArgumentException {
        if (str != null) {
            if (str.length() == 1) {
                char charAt = str.charAt(0);
                if (!isValidOpt(charAt)) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("illegal option value '");
                    stringBuffer.append(charAt);
                    stringBuffer.append("'");
                    throw new IllegalArgumentException(stringBuffer.toString());
                }
                return;
            }
            char[] charArray = str.toCharArray();
            for (int i = 0; i < charArray.length; i++) {
                if (!isValidChar(charArray[i])) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("opt contains illegal character value '");
                    stringBuffer2.append(charArray[i]);
                    stringBuffer2.append("'");
                    throw new IllegalArgumentException(stringBuffer2.toString());
                }
            }
        }
    }
}
