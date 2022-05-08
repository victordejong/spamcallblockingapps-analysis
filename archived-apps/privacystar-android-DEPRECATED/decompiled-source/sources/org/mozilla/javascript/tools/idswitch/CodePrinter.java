package org.mozilla.javascript.tools.idswitch;

import org.apache.commons.p018io.IOUtils;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/idswitch/CodePrinter.class */
class CodePrinter {
    private static final int LITERAL_CHAR_MAX_SIZE = 6;
    private int offset;
    private String lineTerminator = IOUtils.LINE_SEPARATOR_UNIX;
    private int indentStep = 4;
    private int indentTabSize = 8;
    private char[] buffer = new char[4096];

    private int add_area(int i) {
        int ensure_area = ensure_area(i);
        this.offset = i + ensure_area;
        return ensure_area;
    }

    private static char digit_to_hex_letter(int i) {
        return (char) (i < 10 ? i + 48 : i + 55);
    }

    private int ensure_area(int i) {
        int i2 = this.offset;
        int i3 = i + i2;
        if (i3 > this.buffer.length) {
            int length = this.buffer.length * 2;
            if (i3 > length) {
                length = i3;
            }
            char[] cArr = new char[length];
            System.arraycopy(this.buffer, 0, cArr, 0, i2);
            this.buffer = cArr;
        }
        return i2;
    }

    private int put_string_literal_char(int i, int i2, boolean z) {
        int i3;
        int i4 = i2;
        boolean z2 = z;
        if (i2 != 34) {
            if (i2 != 39) {
                switch (i2) {
                    case 8:
                        i4 = 98;
                        z2 = true;
                        break;
                    case 9:
                        i4 = 116;
                        z2 = true;
                        break;
                    case 10:
                        i4 = 110;
                        z2 = true;
                        break;
                    default:
                        switch (i2) {
                            case 12:
                                i4 = 102;
                                z2 = true;
                                break;
                            case 13:
                                i4 = 114;
                                z2 = true;
                                break;
                            default:
                                z2 = false;
                                i4 = i2;
                                break;
                        }
                }
            } else {
                z2 = !z;
                i4 = i2;
            }
        }
        if (z2) {
            this.buffer[i] = (char) 92;
            this.buffer[i + 1] = (char) i4;
            i3 = i + 2;
        } else if (32 > i4 || i4 > 126) {
            this.buffer[i] = (char) 92;
            this.buffer[i + 1] = (char) 117;
            this.buffer[i + 2] = digit_to_hex_letter((i4 >> 12) & 15);
            this.buffer[i + 3] = digit_to_hex_letter((i4 >> 8) & 15);
            this.buffer[i + 4] = digit_to_hex_letter((i4 >> 4) & 15);
            this.buffer[i + 5] = digit_to_hex_letter(i4 & 15);
            i3 = i + 6;
        } else {
            this.buffer[i] = (char) i4;
            i3 = i + 1;
        }
        return i3;
    }

    public void clear() {
        this.offset = 0;
    }

    public void erase(int i, int i2) {
        System.arraycopy(this.buffer, i2, this.buffer, i, this.offset - i2);
        this.offset -= i2 - i;
    }

    public int getIndentStep() {
        return this.indentStep;
    }

    public int getIndentTabSize() {
        return this.indentTabSize;
    }

    public int getLastChar() {
        return this.offset == 0 ? (char) 65535 : this.buffer[this.offset - 1];
    }

    public String getLineTerminator() {
        return this.lineTerminator;
    }

    public int getOffset() {
        return this.offset;
    }

    public void indent(int i) {
        int i2;
        int i3;
        int i4 = this.indentStep * i;
        if (this.indentTabSize <= 0) {
            i2 = 0;
        } else {
            i2 = i4 / this.indentTabSize;
            i4 = (i4 % this.indentTabSize) + i2;
        }
        int add_area = add_area(i4);
        int i5 = add_area;
        while (true) {
            if (i5 != i2 + add_area) {
                this.buffer[i5] = (char) 9;
                i5++;
            }
        }
        for (i3 = i5; i3 != i4 + add_area; i3++) {
            this.buffer[i3] = (char) 32;
        }
    }

    public void line(int i, String str) {
        indent(i);
        m210p(str);
        m213nl();
    }

    /* renamed from: nl */
    public void m213nl() {
        m212p('\n');
    }

    /* renamed from: p */
    public void m212p(char c) {
        this.buffer[add_area(1)] = c;
    }

    /* renamed from: p */
    public void m211p(int i) {
        m210p(Integer.toString(i));
    }

    /* renamed from: p */
    public void m210p(String str) {
        int length = str.length();
        str.getChars(0, length, this.buffer, add_area(length));
    }

    /* renamed from: p */
    public final void m209p(char[] cArr) {
        m208p(cArr, 0, cArr.length);
    }

    /* renamed from: p */
    public void m208p(char[] cArr, int i, int i2) {
        int i3 = i2 - i;
        System.arraycopy(cArr, i, this.buffer, add_area(i3), i3);
    }

    public void qchar(int i) {
        int ensure_area = ensure_area(8);
        this.buffer[ensure_area] = (char) 39;
        int put_string_literal_char = put_string_literal_char(ensure_area + 1, i, false);
        this.buffer[put_string_literal_char] = (char) 39;
        this.offset = put_string_literal_char + 1;
    }

    public void qstring(String str) {
        int length = str.length();
        int ensure_area = ensure_area((length * 6) + 2);
        this.buffer[ensure_area] = (char) 34;
        int i = ensure_area + 1;
        for (int i2 = 0; i2 != length; i2++) {
            i = put_string_literal_char(i, str.charAt(i2), true);
        }
        this.buffer[i] = (char) 34;
        this.offset = i + 1;
    }

    public void setIndentStep(int i) {
        this.indentStep = i;
    }

    public void setIndentTabSize(int i) {
        this.indentTabSize = i;
    }

    public void setLineTerminator(String str) {
        this.lineTerminator = str;
    }

    public String toString() {
        return new String(this.buffer, 0, this.offset);
    }
}
