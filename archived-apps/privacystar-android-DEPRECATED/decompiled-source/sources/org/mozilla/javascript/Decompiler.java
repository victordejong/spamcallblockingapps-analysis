package org.mozilla.javascript;

import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Decompiler.class */
public class Decompiler {
    public static final int CASE_GAP_PROP = 3;
    private static final int FUNCTION_END = 164;
    public static final int INDENT_GAP_PROP = 2;
    public static final int INITIAL_INDENT_PROP = 1;
    public static final int ONLY_BODY_FLAG = 1;
    public static final int TO_SOURCE_FLAG = 2;
    private static final boolean printSource = false;
    private char[] sourceBuffer = new char[128];
    private int sourceTop;

    private void append(char c) {
        if (this.sourceTop == this.sourceBuffer.length) {
            increaseSourceCapacity(this.sourceTop + 1);
        }
        this.sourceBuffer[this.sourceTop] = c;
        this.sourceTop++;
    }

    private void appendString(String str) {
        int length = str.length();
        int i = this.sourceTop + (length >= 32768 ? 2 : 1) + length;
        if (i > this.sourceBuffer.length) {
            increaseSourceCapacity(i);
        }
        if (length >= 32768) {
            this.sourceBuffer[this.sourceTop] = (char) (32768 | (length >>> 16));
            this.sourceTop++;
        }
        this.sourceBuffer[this.sourceTop] = (char) length;
        this.sourceTop++;
        str.getChars(0, length, this.sourceBuffer, this.sourceTop);
        this.sourceTop = i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String decompile(String str, int i, UintMap uintMap) {
        int i2;
        char c;
        boolean z;
        int length = str.length();
        if (length == 0) {
            return "";
        }
        int i3 = uintMap.getInt(1, 0);
        if (i3 < 0) {
            throw new IllegalArgumentException();
        }
        int i4 = uintMap.getInt(2, 4);
        if (i4 < 0) {
            throw new IllegalArgumentException();
        }
        int i5 = uintMap.getInt(3, 2);
        if (i5 < 0) {
            throw new IllegalArgumentException();
        }
        StringBuilder sb = new StringBuilder();
        boolean z2 = (i & 1) != 0;
        boolean z3 = (i & 2) != 0;
        if (str.charAt(0) == 136) {
            c = 65535;
            i2 = 1;
        } else {
            c = str.charAt(1);
            i2 = 0;
        }
        char c2 = '(';
        if (!z3) {
            sb.append('\n');
            for (int i6 = 0; i6 < i3; i6++) {
                sb.append(' ');
            }
        } else if (c == 2) {
            sb.append('(');
        }
        int i7 = i3;
        int i8 = 0;
        boolean z4 = false;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            switch (charAt) {
                case '\t':
                    sb.append(" | ");
                    i7 = i7;
                    c2 = c2;
                    i2 = i2;
                    i8 = i8;
                    break;
                case '\n':
                    sb.append(" ^ ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 11:
                    sb.append(" & ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case '\f':
                    sb.append(" == ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case '\r':
                    sb.append(" != ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 14:
                    sb.append(" < ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 15:
                    sb.append(" <= ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 16:
                    sb.append(" > ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 17:
                    sb.append(" >= ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 18:
                    sb.append(" << ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 19:
                    sb.append(" >> ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 20:
                    sb.append(" >>> ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 21:
                    sb.append(" + ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 22:
                    sb.append(" - ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 23:
                    sb.append(" * ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 24:
                    sb.append(" / ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 25:
                    sb.append(" % ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 26:
                    sb.append('!');
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 27:
                    sb.append('~');
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 28:
                    sb.append('+');
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 29:
                    sb.append('-');
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 30:
                    sb.append("new ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case 31:
                    sb.append("delete ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                case ' ':
                    sb.append("typeof ");
                    i8 = i8;
                    i2 = i2;
                    c2 = c2;
                    i7 = i7;
                    break;
                default:
                    switch (charAt) {
                        case '\'':
                        case '0':
                            i2 = printSourceString(str, i2 + 1, false, sb);
                            c2 = c2;
                            continue;
                            continue;
                        case '(':
                            i2 = printSourceNumber(str, i2 + 1, sb);
                            c2 = c2;
                            continue;
                        case ')':
                            i2 = printSourceString(str, i2 + 1, true, sb);
                            c2 = c2;
                            continue;
                        case '*':
                            sb.append("null");
                            i8 = i8;
                            i2 = i2;
                            c2 = c2;
                            i7 = i7;
                            break;
                        case '+':
                            sb.append("this");
                            i8 = i8;
                            i2 = i2;
                            c2 = c2;
                            i7 = i7;
                            break;
                        case ',':
                            sb.append("false");
                            i8 = i8;
                            i2 = i2;
                            c2 = c2;
                            i7 = i7;
                            break;
                        case '-':
                            sb.append("true");
                            i8 = i8;
                            i2 = i2;
                            c2 = c2;
                            i7 = i7;
                            break;
                        case '.':
                            sb.append(" === ");
                            i8 = i8;
                            i2 = i2;
                            c2 = c2;
                            i7 = i7;
                            break;
                        case '/':
                            sb.append(" !== ");
                            i8 = i8;
                            i2 = i2;
                            c2 = c2;
                            i7 = i7;
                            break;
                        default:
                            switch (charAt) {
                                case '4':
                                    sb.append(" in ");
                                    i8 = i8;
                                    i2 = i2;
                                    c2 = c2;
                                    i7 = i7;
                                    break;
                                case '5':
                                    sb.append(" instanceof ");
                                    i8 = i8;
                                    i2 = i2;
                                    c2 = c2;
                                    i7 = i7;
                                    break;
                                default:
                                    switch (charAt) {
                                        case 'Q':
                                            sb.append("try ");
                                            i8 = i8;
                                            i2 = i2;
                                            c2 = c2;
                                            i7 = i7;
                                            break;
                                        case 'R':
                                            sb.append(';');
                                            i8 = i8;
                                            i2 = i2;
                                            c2 = c2;
                                            i7 = i7;
                                            if (1 != getNext(str, length, i2)) {
                                                sb.append(' ');
                                                i8 = i8;
                                                i2 = i2;
                                                c2 = c2;
                                                i7 = i7;
                                            }
                                            break;
                                        case 'S':
                                            sb.append('[');
                                            i8 = i8;
                                            i2 = i2;
                                            c2 = c2;
                                            i7 = i7;
                                            break;
                                        case 'T':
                                            sb.append(']');
                                            i8 = i8;
                                            i2 = i2;
                                            c2 = c2;
                                            i7 = i7;
                                            break;
                                        case 'U':
                                            i8++;
                                            i7 = i7;
                                            if (1 == getNext(str, length, i2)) {
                                                i7 += i4;
                                            }
                                            sb.append('{');
                                            i2 = i2;
                                            c2 = c2;
                                            break;
                                        case 'V':
                                            i8--;
                                            if (!z2 || i8 != 0) {
                                                sb.append('}');
                                                int next = getNext(str, length, i2);
                                                if (next != 1) {
                                                    if (next == 113 || next == 117) {
                                                        i7 -= i4;
                                                        sb.append(' ');
                                                        i2 = i2;
                                                        c2 = c2;
                                                    } else if (next != 164) {
                                                        i2 = i2;
                                                        c2 = c2;
                                                        i7 = i7;
                                                    }
                                                }
                                                i7 -= i4;
                                                i2 = i2;
                                                c2 = c2;
                                            } else {
                                                i2 = i2;
                                                c2 = c2;
                                                i7 = i7;
                                            }
                                            break;
                                        case 'W':
                                            sb.append(c2);
                                            i8 = i8;
                                            i2 = i2;
                                            c2 = c2;
                                            i7 = i7;
                                            break;
                                        case 'X':
                                            sb.append(')');
                                            i2 = i2;
                                            if (85 == getNext(str, length, i2)) {
                                                sb.append(' ');
                                                i2 = i2;
                                            }
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case 'Y':
                                            sb.append(", ");
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case 'Z':
                                            sb.append(" = ");
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case '[':
                                            sb.append(" |= ");
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case '\\':
                                            sb.append(" ^= ");
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case ']':
                                            sb.append(" &= ");
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case '^':
                                            sb.append(" <<= ");
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case '_':
                                            sb.append(" >>= ");
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case '`':
                                            sb.append(" >>>= ");
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case 'a':
                                            sb.append(" += ");
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case 'b':
                                            sb.append(" -= ");
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case 'c':
                                            sb.append(" *= ");
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case 'd':
                                            sb.append(" /= ");
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case 'e':
                                            sb.append(" %= ");
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case 'f':
                                            sb.append(" ? ");
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case 'g':
                                            if (1 == getNext(str, length, i2)) {
                                                sb.append(':');
                                                i2 = i2;
                                            } else {
                                                sb.append(" : ");
                                                i2 = i2;
                                            }
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case 'h':
                                            sb.append(" || ");
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case 'i':
                                            sb.append(" && ");
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case 'j':
                                            sb.append("++");
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case 'k':
                                            sb.append(HelpFormatter.DEFAULT_LONG_OPT_PREFIX);
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case 'l':
                                            sb.append('.');
                                            i2 = i2;
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        case 'm':
                                            i2++;
                                            sb.append("function ");
                                            c2 = '(';
                                            i8 = i8;
                                            i7 = i7;
                                            break;
                                        default:
                                            switch (charAt) {
                                                case 'p':
                                                    sb.append("if ");
                                                    i2 = i2;
                                                    c2 = '(';
                                                    i8 = i8;
                                                    i7 = i7;
                                                    break;
                                                case 'q':
                                                    sb.append("else ");
                                                    i2 = i2;
                                                    c2 = '(';
                                                    i8 = i8;
                                                    i7 = i7;
                                                    break;
                                                case 'r':
                                                    sb.append("switch ");
                                                    i2 = i2;
                                                    c2 = '(';
                                                    i8 = i8;
                                                    i7 = i7;
                                                    break;
                                                case 's':
                                                    sb.append("case ");
                                                    i2 = i2;
                                                    c2 = '(';
                                                    i8 = i8;
                                                    i7 = i7;
                                                    break;
                                                case 't':
                                                    sb.append("default");
                                                    i2 = i2;
                                                    c2 = '(';
                                                    i8 = i8;
                                                    i7 = i7;
                                                    break;
                                                case 'u':
                                                    sb.append("while ");
                                                    i2 = i2;
                                                    c2 = '(';
                                                    i8 = i8;
                                                    i7 = i7;
                                                    break;
                                                case 'v':
                                                    sb.append("do ");
                                                    i2 = i2;
                                                    c2 = '(';
                                                    i8 = i8;
                                                    i7 = i7;
                                                    break;
                                                case 'w':
                                                    sb.append("for ");
                                                    i2 = i2;
                                                    c2 = '(';
                                                    i8 = i8;
                                                    i7 = i7;
                                                    break;
                                                case 'x':
                                                    sb.append("break");
                                                    i2 = i2;
                                                    if (39 == getNext(str, length, i2)) {
                                                        sb.append(' ');
                                                        i2 = i2;
                                                    }
                                                    c2 = '(';
                                                    i8 = i8;
                                                    i7 = i7;
                                                    break;
                                                case 'y':
                                                    sb.append("continue");
                                                    i2 = i2;
                                                    if (39 == getNext(str, length, i2)) {
                                                        sb.append(' ');
                                                        i2 = i2;
                                                    }
                                                    c2 = '(';
                                                    i8 = i8;
                                                    i7 = i7;
                                                    break;
                                                case 'z':
                                                    sb.append("var ");
                                                    i2 = i2;
                                                    c2 = '(';
                                                    i8 = i8;
                                                    i7 = i7;
                                                    break;
                                                case '{':
                                                    sb.append("with ");
                                                    i2 = i2;
                                                    c2 = '(';
                                                    i8 = i8;
                                                    i7 = i7;
                                                    break;
                                                case '|':
                                                    sb.append("catch ");
                                                    i2 = i2;
                                                    c2 = '(';
                                                    i8 = i8;
                                                    i7 = i7;
                                                    break;
                                                case '}':
                                                    sb.append("finally ");
                                                    i2 = i2;
                                                    c2 = '(';
                                                    i8 = i8;
                                                    i7 = i7;
                                                    break;
                                                case '~':
                                                    sb.append("void ");
                                                    i2 = i2;
                                                    c2 = '(';
                                                    i8 = i8;
                                                    i7 = i7;
                                                    break;
                                                default:
                                                    switch (charAt) {
                                                        case 143:
                                                            sb.append("..");
                                                            i2 = i2;
                                                            c2 = '(';
                                                            i8 = i8;
                                                            i7 = i7;
                                                            break;
                                                        case 144:
                                                            sb.append("::");
                                                            i2 = i2;
                                                            c2 = '(';
                                                            i8 = i8;
                                                            i7 = i7;
                                                            break;
                                                        default:
                                                            switch (charAt) {
                                                                case 146:
                                                                    sb.append(".(");
                                                                    i2 = i2;
                                                                    c2 = '(';
                                                                    i8 = i8;
                                                                    i7 = i7;
                                                                    break;
                                                                case 147:
                                                                    sb.append('@');
                                                                    i2 = i2;
                                                                    c2 = '(';
                                                                    i8 = i8;
                                                                    i7 = i7;
                                                                    break;
                                                                default:
                                                                    switch (charAt) {
                                                                        case 151:
                                                                        case 152:
                                                                            sb.append(str.charAt(i2) == 151 ? "get " : "set ");
                                                                            i2 = printSourceString(str, i2 + 1 + 1, false, sb) + 1;
                                                                            c2 = '(';
                                                                            i8 = i8;
                                                                            i7 = i7;
                                                                            break;
                                                                        case 153:
                                                                            sb.append("let ");
                                                                            i2 = i2;
                                                                            c2 = '(';
                                                                            i8 = i8;
                                                                            i7 = i7;
                                                                            break;
                                                                        case 154:
                                                                            sb.append("const ");
                                                                            i2 = i2;
                                                                            c2 = '(';
                                                                            i8 = i8;
                                                                            i7 = i7;
                                                                            break;
                                                                        default:
                                                                            i8 = i8;
                                                                            i2 = i2;
                                                                            c2 = c2;
                                                                            i7 = i7;
                                                                            switch (charAt) {
                                                                                case 1:
                                                                                    if (z3) {
                                                                                        i2 = i2;
                                                                                        c2 = '(';
                                                                                        i8 = i8;
                                                                                        i7 = i7;
                                                                                        break;
                                                                                    } else {
                                                                                        if (!z4) {
                                                                                            if (z2) {
                                                                                                sb.setLength(0);
                                                                                                i7 -= i4;
                                                                                                z = false;
                                                                                            } else {
                                                                                                z = true;
                                                                                                i7 = i7;
                                                                                            }
                                                                                            z4 = true;
                                                                                        } else {
                                                                                            z = true;
                                                                                            i7 = i7;
                                                                                        }
                                                                                        if (z) {
                                                                                            sb.append('\n');
                                                                                        }
                                                                                        int i9 = i2 + 1;
                                                                                        if (i9 < length) {
                                                                                            char charAt2 = str.charAt(i9);
                                                                                            for (int i10 = (charAt2 == 's' || charAt2 == 't') ? i4 - i5 : (charAt2 == 'V' || (charAt2 == '\'' && str.charAt(getSourceStringEnd(str, i2 + 2)) == 'g')) ? i4 : 0; i10 < i7; i10++) {
                                                                                                sb.append(' ');
                                                                                            }
                                                                                        }
                                                                                        c2 = '(';
                                                                                        break;
                                                                                    }
                                                                                    break;
                                                                                case 4:
                                                                                    sb.append("return");
                                                                                    i2 = i2;
                                                                                    if (82 != getNext(str, length, i2)) {
                                                                                        sb.append(' ');
                                                                                        i2 = i2;
                                                                                    }
                                                                                    c2 = '(';
                                                                                    i8 = i8;
                                                                                    i7 = i7;
                                                                                    break;
                                                                                case '2':
                                                                                    sb.append("throw ");
                                                                                    i8 = i8;
                                                                                    i2 = i2;
                                                                                    c2 = c2;
                                                                                    i7 = i7;
                                                                                    break;
                                                                                case 'B':
                                                                                    sb.append(": ");
                                                                                    i8 = i8;
                                                                                    i2 = i2;
                                                                                    c2 = c2;
                                                                                    i7 = i7;
                                                                                    break;
                                                                                case 'H':
                                                                                    sb.append("yield ");
                                                                                    i8 = i8;
                                                                                    i2 = i2;
                                                                                    c2 = c2;
                                                                                    i7 = i7;
                                                                                    break;
                                                                                case 160:
                                                                                    sb.append("debugger;\n");
                                                                                    i8 = i8;
                                                                                    i2 = i2;
                                                                                    c2 = c2;
                                                                                    i7 = i7;
                                                                                    break;
                                                                                case 164:
                                                                                    break;
                                                                                default:
                                                                                    throw new RuntimeException("Token: " + Token.name(str.charAt(i2)));
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
                    break;
            }
            i2++;
        }
        if (!z3) {
            if (!z2) {
                sb.append('\n');
            }
        } else if (c == 2) {
            sb.append(')');
        }
        return sb.toString();
    }

    private static int getNext(String str, int i, int i2) {
        int i3 = i2 + 1;
        return i3 < i ? str.charAt(i3) : (char) 0;
    }

    private static int getSourceStringEnd(String str, int i) {
        return printSourceString(str, i, false, null);
    }

    private void increaseSourceCapacity(int i) {
        if (i <= this.sourceBuffer.length) {
            Kit.codeBug();
        }
        int length = this.sourceBuffer.length * 2;
        if (length >= i) {
            i = length;
        }
        char[] cArr = new char[i];
        System.arraycopy(this.sourceBuffer, 0, cArr, 0, this.sourceTop);
        this.sourceBuffer = cArr;
    }

    private static int printSourceNumber(String str, int i, StringBuilder sb) {
        int i2;
        char charAt = str.charAt(i);
        int i3 = i + 1;
        double d = 0.0d;
        if (charAt == 'S') {
            if (sb != null) {
                d = str.charAt(i3);
            }
            i2 = i3 + 1;
        } else if (charAt == 'J' || charAt == 'D') {
            if (sb != null) {
                long charAt2 = (str.charAt(i3) << 48) | (str.charAt(i3 + 1) << 32) | (str.charAt(i3 + 2) << 16) | str.charAt(i3 + 3);
                d = charAt == 'J' ? charAt2 : Double.longBitsToDouble(charAt2);
            }
            i2 = i3 + 4;
        } else {
            throw new RuntimeException();
        }
        if (sb != null) {
            sb.append(ScriptRuntime.numberToString(d, 10));
        }
        return i2;
    }

    private static int printSourceString(String str, int i, boolean z, StringBuilder sb) {
        char charAt = str.charAt(i);
        int i2 = i + 1;
        int i3 = charAt;
        int i4 = i2;
        if ((32768 & charAt) != 0) {
            i3 = ((charAt & 32767) << 16) | str.charAt(i2);
            i4 = i2 + 1;
        }
        if (sb != null) {
            String substring = str.substring(i4, i4 + i3);
            if (!z) {
                sb.append(substring);
            } else {
                sb.append('\"');
                sb.append(ScriptRuntime.escapeString(substring));
                sb.append('\"');
            }
        }
        return i4 + i3;
    }

    private String sourceToString(int i) {
        if (i < 0 || this.sourceTop < i) {
            Kit.codeBug();
        }
        return new String(this.sourceBuffer, i, this.sourceTop - i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addEOL(int i) {
        if (i < 0 || i > 163) {
            throw new IllegalArgumentException();
        }
        append((char) i);
        append((char) 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addName(String str) {
        addToken(39);
        appendString(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addNumber(double d) {
        addToken(40);
        long j = (long) d;
        if (j != d) {
            long doubleToLongBits = Double.doubleToLongBits(d);
            append('D');
            append((char) (doubleToLongBits >> 48));
            append((char) (doubleToLongBits >> 32));
            append((char) (doubleToLongBits >> 16));
            append((char) doubleToLongBits);
            return;
        }
        if (j < 0) {
            Kit.codeBug();
        }
        if (j <= 65535) {
            append('S');
            append((char) j);
            return;
        }
        append('J');
        append((char) (j >> 48));
        append((char) (j >> 32));
        append((char) (j >> 16));
        append((char) j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addRegexp(String str, String str2) {
        addToken(48);
        appendString('/' + str + '/' + str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addString(String str) {
        addToken(41);
        appendString(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addToken(int i) {
        if (i < 0 || i > 163) {
            throw new IllegalArgumentException();
        }
        append((char) i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCurrentOffset() {
        return this.sourceTop;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getEncodedSource() {
        return sourceToString(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int markFunctionEnd(int i) {
        int currentOffset = getCurrentOffset();
        append((char) 164);
        return currentOffset;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int markFunctionStart(int i) {
        int currentOffset = getCurrentOffset();
        addToken(109);
        append((char) i);
        return currentOffset;
    }
}
