package com.google.gson.stream;

import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;
import com.privacystar.core.util.text.Text;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
/* loaded from: classes-dex2jar.jar:com/google/gson/stream/JsonReader.class */
public class JsonReader implements Closeable {
    private static final long MIN_INCOMPLETE_INTEGER = -922337203685477580L;
    private static final char[] NON_EXECUTE_PREFIX = ")]}'\n".toCharArray();
    private static final int NUMBER_CHAR_DECIMAL = 3;
    private static final int NUMBER_CHAR_DIGIT = 2;
    private static final int NUMBER_CHAR_EXP_DIGIT = 7;
    private static final int NUMBER_CHAR_EXP_E = 5;
    private static final int NUMBER_CHAR_EXP_SIGN = 6;
    private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
    private static final int NUMBER_CHAR_NONE = 0;
    private static final int NUMBER_CHAR_SIGN = 1;
    private static final int PEEKED_BEGIN_ARRAY = 3;
    private static final int PEEKED_BEGIN_OBJECT = 1;
    private static final int PEEKED_BUFFERED = 11;
    private static final int PEEKED_DOUBLE_QUOTED = 9;
    private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
    private static final int PEEKED_END_ARRAY = 4;
    private static final int PEEKED_END_OBJECT = 2;
    private static final int PEEKED_EOF = 17;
    private static final int PEEKED_FALSE = 6;
    private static final int PEEKED_LONG = 15;
    private static final int PEEKED_NONE = 0;
    private static final int PEEKED_NULL = 7;
    private static final int PEEKED_NUMBER = 16;
    private static final int PEEKED_SINGLE_QUOTED = 8;
    private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
    private static final int PEEKED_TRUE = 5;
    private static final int PEEKED_UNQUOTED = 10;
    private static final int PEEKED_UNQUOTED_NAME = 14;

    /* renamed from: in */
    private final Reader f208in;
    private long peekedLong;
    private int peekedNumberLength;
    private String peekedString;
    private int stackSize;
    private boolean lenient = false;
    private final char[] buffer = new char[1024];
    private int pos = 0;
    private int limit = 0;
    private int lineNumber = 0;
    private int lineStart = 0;
    int peeked = 0;
    private int[] stack = new int[32];
    private String[] pathNames = new String[32];
    private int[] pathIndices = new int[32];

    static {
        JsonReaderInternalAccess.INSTANCE = new JsonReaderInternalAccess() { // from class: com.google.gson.stream.JsonReader.1
            @Override // com.google.gson.internal.JsonReaderInternalAccess
            public void promoteNameToValue(JsonReader jsonReader) throws IOException {
                if (jsonReader instanceof JsonTreeReader) {
                    ((JsonTreeReader) jsonReader).promoteNameToValue();
                    return;
                }
                int i = jsonReader.peeked;
                int i2 = i;
                if (i == 0) {
                    i2 = jsonReader.doPeek();
                }
                if (i2 == 13) {
                    jsonReader.peeked = 9;
                } else if (i2 == 12) {
                    jsonReader.peeked = 8;
                } else if (i2 == 14) {
                    jsonReader.peeked = 10;
                } else {
                    throw new IllegalStateException("Expected a name but was " + jsonReader.peek() + jsonReader.locationString());
                }
            }
        };
    }

    public JsonReader(Reader reader) {
        this.stackSize = 0;
        int[] iArr = this.stack;
        int i = this.stackSize;
        this.stackSize = i + 1;
        iArr[i] = 6;
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.f208in = reader;
    }

    private void checkLenient() throws IOException {
        if (!this.lenient) {
            throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void consumeNonExecutePrefix() throws IOException {
        nextNonWhitespace(true);
        this.pos--;
        if (this.pos + NON_EXECUTE_PREFIX.length <= this.limit || fillBuffer(NON_EXECUTE_PREFIX.length)) {
            for (int i = 0; i < NON_EXECUTE_PREFIX.length; i++) {
                if (this.buffer[this.pos + i] != NON_EXECUTE_PREFIX[i]) {
                    return;
                }
            }
            this.pos += NON_EXECUTE_PREFIX.length;
        }
    }

    private boolean fillBuffer(int i) throws IOException {
        int i2;
        char[] cArr = this.buffer;
        this.lineStart -= this.pos;
        if (this.limit != this.pos) {
            this.limit -= this.pos;
            System.arraycopy(cArr, this.pos, cArr, 0, this.limit);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            int read = this.f208in.read(cArr, this.limit, cArr.length - this.limit);
            if (read == -1) {
                return false;
            }
            this.limit += read;
            i2 = i;
            if (this.lineNumber == 0) {
                i2 = i;
                if (this.lineStart == 0) {
                    i2 = i;
                    if (this.limit > 0) {
                        i2 = i;
                        if (cArr[0] == 65279) {
                            this.pos++;
                            this.lineStart++;
                            i2 = i + 1;
                        }
                    }
                }
            }
            i = i2;
        } while (this.limit < i2);
        return true;
    }

    private boolean isLiteral(char c) throws IOException {
        switch (c) {
            case '\t':
            case '\n':
            case '\f':
            case '\r':
            case ' ':
            case ',':
            case ':':
            case '[':
            case ']':
            case '{':
            case '}':
                return false;
            case '#':
            case '/':
            case ';':
            case '=':
            case '\\':
                checkLenient();
                return false;
            default:
                return true;
        }
    }

    private int nextNonWhitespace(boolean z) throws IOException {
        char[] cArr = this.buffer;
        int i = this.pos;
        int i2 = this.limit;
        while (true) {
            int i3 = i;
            int i4 = i2;
            if (i == i2) {
                this.pos = i;
                if (fillBuffer(1)) {
                    i3 = this.pos;
                    i4 = this.limit;
                } else if (!z) {
                    return -1;
                } else {
                    throw new EOFException("End of input" + locationString());
                }
            }
            i = i3 + 1;
            char c = cArr[i3];
            if (c == '\n') {
                this.lineNumber++;
                this.lineStart = i;
            } else if (!(c == ' ' || c == '\r' || c == '\t')) {
                if (c == '/') {
                    this.pos = i;
                    if (i == i4) {
                        this.pos--;
                        boolean fillBuffer = fillBuffer(2);
                        this.pos++;
                        if (!fillBuffer) {
                            return c;
                        }
                    }
                    checkLenient();
                    char c2 = cArr[this.pos];
                    if (c2 == '*') {
                        this.pos++;
                        if (!skipTo("*/")) {
                            throw syntaxError("Unterminated comment");
                        }
                        i = this.pos + 2;
                        i2 = this.limit;
                    } else if (c2 != '/') {
                        return c;
                    } else {
                        this.pos++;
                        skipToEndOfLine();
                        i = this.pos;
                        i2 = this.limit;
                    }
                } else if (c == '#') {
                    this.pos = i;
                    checkLenient();
                    skipToEndOfLine();
                    i = this.pos;
                    i2 = this.limit;
                } else {
                    this.pos = i;
                    return c;
                }
            }
            i2 = i4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00d2, code lost:
        r14 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00d6, code lost:
        if (r9 != null) goto L_0x00ee;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d9, code lost:
        r14 = new java.lang.StringBuilder(java.lang.Math.max((r12 - r10) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ee, code lost:
        r14.append(r0, r10, r12 - r10);
        r6.pos = r12;
        r9 = r14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String nextQuotedValue(char r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.nextQuotedValue(char):java.lang.String");
    }

    private String nextUnquotedValue() throws IOException {
        String str;
        int i = 0;
        StringBuilder sb = null;
        while (true) {
            i = 0;
            while (true) {
                if (this.pos + i < this.limit) {
                    switch (this.buffer[this.pos + i]) {
                        case '\t':
                        case '\n':
                        case '\f':
                        case '\r':
                        case ' ':
                        case ',':
                        case ':':
                        case '[':
                        case ']':
                        case '{':
                        case '}':
                            break;
                        case '#':
                        case '/':
                        case ';':
                        case '=':
                        case '\\':
                            checkLenient();
                            break;
                        default:
                            i++;
                    }
                } else if (i >= this.buffer.length) {
                    StringBuilder sb2 = sb;
                    if (sb == null) {
                        sb2 = new StringBuilder(Math.max(i, 16));
                    }
                    sb2.append(this.buffer, this.pos, i);
                    this.pos += i;
                    sb = sb2;
                    if (!fillBuffer(1)) {
                        sb = sb2;
                    }
                } else if (fillBuffer(i + 1)) {
                }
            }
        }
        if (sb == null) {
            str = new String(this.buffer, this.pos, i);
        } else {
            sb.append(this.buffer, this.pos, i);
            str = sb.toString();
        }
        this.pos += i;
        return str;
    }

    private int peekKeyword() throws IOException {
        String str;
        String str2;
        int i;
        char c = this.buffer[this.pos];
        if (c == 't' || c == 'T') {
            str2 = "true";
            str = "TRUE";
            i = 5;
        } else if (c == 'f' || c == 'F') {
            str2 = "false";
            str = "FALSE";
            i = 6;
        } else if (c != 'n' && c != 'N') {
            return 0;
        } else {
            str2 = "null";
            str = Text.NULL;
            i = 7;
        }
        int length = str2.length();
        for (int i2 = 1; i2 < length; i2++) {
            if (this.pos + i2 >= this.limit && !fillBuffer(i2 + 1)) {
                return 0;
            }
            char c2 = this.buffer[this.pos + i2];
            if (!(c2 == str2.charAt(i2) || c2 == str.charAt(i2))) {
                return 0;
            }
        }
        if ((this.pos + length < this.limit || fillBuffer(length + 1)) && isLiteral(this.buffer[this.pos + length])) {
            return 0;
        }
        this.pos += length;
        this.peeked = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0107, code lost:
        if (r10 == 6) goto L_0x0117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0133, code lost:
        if (isLiteral(r0) != false) goto L_0x01a9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0139, code lost:
        if (r10 != 2) goto L_0x0182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x013e, code lost:
        if (r11 == false) goto L_0x0182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0147, code lost:
        if (r12 != Long.MIN_VALUE) goto L_0x014f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x014c, code lost:
        if (r14 == false) goto L_0x0182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0153, code lost:
        if (r12 != 0) goto L_0x015b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0158, code lost:
        if (r14 != false) goto L_0x0182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x015b, code lost:
        r12 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x015d, code lost:
        if (r14 == false) goto L_0x0163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0163, code lost:
        r12 = -r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0168, code lost:
        r5.peekedLong = r12;
        r5.pos += r9;
        r5.peeked = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0181, code lost:
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0185, code lost:
        if (r10 == 2) goto L_0x019a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x018b, code lost:
        if (r10 == 4) goto L_0x019a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0192, code lost:
        if (r10 != 7) goto L_0x0198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0198, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x019a, code lost:
        r5.peekedNumberLength = r9;
        r5.peeked = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01a8, code lost:
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01a9, code lost:
        return 0;
     */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5, types: [long] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int peekNumber() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 513
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.peekNumber():int");
    }

    private void push(int i) {
        if (this.stackSize == this.stack.length) {
            int[] iArr = new int[this.stackSize * 2];
            int[] iArr2 = new int[this.stackSize * 2];
            String[] strArr = new String[this.stackSize * 2];
            System.arraycopy(this.stack, 0, iArr, 0, this.stackSize);
            System.arraycopy(this.pathIndices, 0, iArr2, 0, this.stackSize);
            System.arraycopy(this.pathNames, 0, strArr, 0, this.stackSize);
            this.stack = iArr;
            this.pathIndices = iArr2;
            this.pathNames = strArr;
        }
        int[] iArr3 = this.stack;
        int i2 = this.stackSize;
        this.stackSize = i2 + 1;
        iArr3[i2] = i;
    }

    private char readEscapeCharacter() throws IOException {
        int i;
        char c;
        if (this.pos != this.limit || fillBuffer(1)) {
            char[] cArr = this.buffer;
            int i2 = this.pos;
            this.pos = i2 + 1;
            char c2 = cArr[i2];
            if (c2 == '\n') {
                this.lineNumber++;
                this.lineStart = this.pos;
            } else if (!(c2 == '\"' || c2 == '\'' || c2 == '/' || c2 == '\\')) {
                if (c2 == 'b') {
                    return '\b';
                }
                if (c2 == 'f') {
                    return '\f';
                }
                if (c2 == 'n') {
                    return '\n';
                }
                if (c2 == 'r') {
                    return '\r';
                }
                switch (c2) {
                    case 't':
                        return '\t';
                    case 'u':
                        if (this.pos + 4 <= this.limit || fillBuffer(4)) {
                            char c3 = 0;
                            int i3 = this.pos;
                            for (int i4 = i3; i4 < i3 + 4; i4++) {
                                char c4 = this.buffer[i4];
                                char c5 = (char) (c3 << 4);
                                if (c4 >= '0' && c4 <= '9') {
                                    c = c5;
                                    i = c4 - '0';
                                } else if (c4 >= 'a' && c4 <= 'f') {
                                    c = c5;
                                    i = (c4 - 'a') + 10;
                                } else if (c4 < 'A' || c4 > 'F') {
                                    throw new NumberFormatException("\\u" + new String(this.buffer, this.pos, 4));
                                } else {
                                    c = c5;
                                    i = (c4 - 'A') + 10;
                                }
                                c3 = (char) (c + i);
                            }
                            this.pos += 4;
                            return c3;
                        }
                        throw syntaxError("Unterminated escape sequence");
                    default:
                        throw syntaxError("Invalid escape sequence");
                }
            }
            return c2;
        }
        throw syntaxError("Unterminated escape sequence");
    }

    private void skipQuotedValue(char c) throws IOException {
        char[] cArr = this.buffer;
        do {
            int i = this.pos;
            int i2 = this.limit;
            while (i < i2) {
                int i3 = i + 1;
                char c2 = cArr[i];
                if (c2 == c) {
                    this.pos = i3;
                    return;
                } else if (c2 == '\\') {
                    this.pos = i3;
                    readEscapeCharacter();
                    i = this.pos;
                    i2 = this.limit;
                } else {
                    if (c2 == '\n') {
                        this.lineNumber++;
                        this.lineStart = i3;
                    }
                    i = i3;
                }
            }
            this.pos = i;
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    private boolean skipTo(String str) throws IOException {
        int length = str.length();
        while (true) {
            if (this.pos + length > this.limit && !fillBuffer(length)) {
                return false;
            }
            if (this.buffer[this.pos] == '\n') {
                this.lineNumber++;
                this.lineStart = this.pos + 1;
            } else {
                for (int i = 0; i < length; i++) {
                    if (this.buffer[this.pos + i] != str.charAt(i)) {
                        break;
                    }
                }
                return true;
            }
            this.pos++;
        }
    }

    private void skipToEndOfLine() throws IOException {
        char c;
        do {
            if (this.pos < this.limit || fillBuffer(1)) {
                char[] cArr = this.buffer;
                int i = this.pos;
                this.pos = i + 1;
                c = cArr[i];
                if (c == '\n') {
                    this.lineNumber++;
                    this.lineStart = this.pos;
                    return;
                }
            } else {
                return;
            }
        } while (c != '\r');
    }

    private void skipUnquotedValue() throws IOException {
        do {
            int i = 0;
            while (this.pos + i < this.limit) {
                switch (this.buffer[this.pos + i]) {
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                    case ',':
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        this.pos += i;
                        return;
                    case '#':
                    case '/':
                    case ';':
                    case '=':
                    case '\\':
                        checkLenient();
                        this.pos += i;
                        return;
                    default:
                        i++;
                }
            }
            this.pos += i;
        } while (fillBuffer(1));
    }

    private IOException syntaxError(String str) throws IOException {
        throw new MalformedJsonException(str + locationString());
    }

    public void beginArray() throws IOException {
        int i = this.peeked;
        int i2 = i;
        if (i == 0) {
            i2 = doPeek();
        }
        if (i2 == 3) {
            push(1);
            this.pathIndices[this.stackSize - 1] = 0;
            this.peeked = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + peek() + locationString());
    }

    public void beginObject() throws IOException {
        int i = this.peeked;
        int i2 = i;
        if (i == 0) {
            i2 = doPeek();
        }
        if (i2 == 1) {
            push(3);
            this.peeked = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + peek() + locationString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.peeked = 0;
        this.stack[0] = 8;
        this.stackSize = 1;
        this.f208in.close();
    }

    int doPeek() throws IOException {
        int nextNonWhitespace;
        int i = this.stack[this.stackSize - 1];
        if (i == 1) {
            this.stack[this.stackSize - 1] = 2;
        } else if (i == 2) {
            int nextNonWhitespace2 = nextNonWhitespace(true);
            if (nextNonWhitespace2 != 44) {
                if (nextNonWhitespace2 == 59) {
                    checkLenient();
                } else if (nextNonWhitespace2 != 93) {
                    throw syntaxError("Unterminated array");
                } else {
                    this.peeked = 4;
                    return 4;
                }
            }
        } else if (i == 3 || i == 5) {
            this.stack[this.stackSize - 1] = 4;
            if (i == 5 && (nextNonWhitespace = nextNonWhitespace(true)) != 44) {
                if (nextNonWhitespace == 59) {
                    checkLenient();
                } else if (nextNonWhitespace != 125) {
                    throw syntaxError("Unterminated object");
                } else {
                    this.peeked = 2;
                    return 2;
                }
            }
            int nextNonWhitespace3 = nextNonWhitespace(true);
            if (nextNonWhitespace3 == 34) {
                this.peeked = 13;
                return 13;
            } else if (nextNonWhitespace3 == 39) {
                checkLenient();
                this.peeked = 12;
                return 12;
            } else if (nextNonWhitespace3 != 125) {
                checkLenient();
                this.pos--;
                if (isLiteral((char) nextNonWhitespace3)) {
                    this.peeked = 14;
                    return 14;
                }
                throw syntaxError("Expected name");
            } else if (i != 5) {
                this.peeked = 2;
                return 2;
            } else {
                throw syntaxError("Expected name");
            }
        } else if (i == 4) {
            this.stack[this.stackSize - 1] = 5;
            int nextNonWhitespace4 = nextNonWhitespace(true);
            if (nextNonWhitespace4 != 58) {
                if (nextNonWhitespace4 != 61) {
                    throw syntaxError("Expected ':'");
                }
                checkLenient();
                if ((this.pos < this.limit || fillBuffer(1)) && this.buffer[this.pos] == '>') {
                    this.pos++;
                }
            }
        } else if (i == 6) {
            if (this.lenient) {
                consumeNonExecutePrefix();
            }
            this.stack[this.stackSize - 1] = 7;
        } else if (i == 7) {
            if (nextNonWhitespace(false) == -1) {
                this.peeked = 17;
                return 17;
            }
            checkLenient();
            this.pos--;
        } else if (i == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        int nextNonWhitespace5 = nextNonWhitespace(true);
        if (nextNonWhitespace5 == 34) {
            this.peeked = 9;
            return 9;
        } else if (nextNonWhitespace5 != 39) {
            if (!(nextNonWhitespace5 == 44 || nextNonWhitespace5 == 59)) {
                if (nextNonWhitespace5 == 91) {
                    this.peeked = 3;
                    return 3;
                } else if (nextNonWhitespace5 != 93) {
                    if (nextNonWhitespace5 != 123) {
                        this.pos--;
                        int peekKeyword = peekKeyword();
                        if (peekKeyword != 0) {
                            return peekKeyword;
                        }
                        int peekNumber = peekNumber();
                        if (peekNumber != 0) {
                            return peekNumber;
                        }
                        if (!isLiteral(this.buffer[this.pos])) {
                            throw syntaxError("Expected value");
                        }
                        checkLenient();
                        this.peeked = 10;
                        return 10;
                    }
                    this.peeked = 1;
                    return 1;
                } else if (i == 1) {
                    this.peeked = 4;
                    return 4;
                }
            }
            if (i == 1 || i == 2) {
                checkLenient();
                this.pos--;
                this.peeked = 7;
                return 7;
            }
            throw syntaxError("Unexpected value");
        } else {
            checkLenient();
            this.peeked = 8;
            return 8;
        }
    }

    public void endArray() throws IOException {
        int i = this.peeked;
        int i2 = i;
        if (i == 0) {
            i2 = doPeek();
        }
        if (i2 == 4) {
            this.stackSize--;
            int[] iArr = this.pathIndices;
            int i3 = this.stackSize - 1;
            iArr[i3] = iArr[i3] + 1;
            this.peeked = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + peek() + locationString());
    }

    public void endObject() throws IOException {
        int i = this.peeked;
        int i2 = i;
        if (i == 0) {
            i2 = doPeek();
        }
        if (i2 == 2) {
            this.stackSize--;
            this.pathNames[this.stackSize] = null;
            int[] iArr = this.pathIndices;
            int i3 = this.stackSize - 1;
            iArr[i3] = iArr[i3] + 1;
            this.peeked = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + peek() + locationString());
    }

    public String getPath() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i = this.stackSize;
        for (int i2 = 0; i2 < i; i2++) {
            switch (this.stack[i2]) {
                case 1:
                case 2:
                    sb.append('[');
                    sb.append(this.pathIndices[i2]);
                    sb.append(']');
                    break;
                case 3:
                case 4:
                case 5:
                    sb.append('.');
                    if (this.pathNames[i2] != null) {
                        sb.append(this.pathNames[i2]);
                        break;
                    } else {
                        break;
                    }
            }
        }
        return sb.toString();
    }

    public boolean hasNext() throws IOException {
        int i = this.peeked;
        int i2 = i;
        if (i == 0) {
            i2 = doPeek();
        }
        return (i2 == 2 || i2 == 4) ? false : true;
    }

    public final boolean isLenient() {
        return this.lenient;
    }

    String locationString() {
        int i = this.lineNumber;
        int i2 = this.pos;
        int i3 = this.lineStart;
        return " at line " + (i + 1) + " column " + ((i2 - i3) + 1) + " path " + getPath();
    }

    public boolean nextBoolean() throws IOException {
        int i = this.peeked;
        int i2 = i;
        if (i == 0) {
            i2 = doPeek();
        }
        if (i2 == 5) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i3 = this.stackSize - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        } else if (i2 == 6) {
            this.peeked = 0;
            int[] iArr2 = this.pathIndices;
            int i4 = this.stackSize - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return false;
        } else {
            throw new IllegalStateException("Expected a boolean but was " + peek() + locationString());
        }
    }

    public double nextDouble() throws IOException {
        int i = this.peeked;
        int i2 = i;
        if (i == 0) {
            i2 = doPeek();
        }
        if (i2 == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i3 = this.stackSize - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.peekedLong;
        }
        if (i2 == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (i2 == 8 || i2 == 9) {
            this.peekedString = nextQuotedValue(i2 == 8 ? '\'' : '\"');
        } else if (i2 == 10) {
            this.peekedString = nextUnquotedValue();
        } else if (i2 != 11) {
            throw new IllegalStateException("Expected a double but was " + peek() + locationString());
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        if (this.lenient || (!Double.isNaN(parseDouble) && !Double.isInfinite(parseDouble))) {
            this.peekedString = null;
            this.peeked = 0;
            int[] iArr2 = this.pathIndices;
            int i4 = this.stackSize - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return parseDouble;
        }
        throw new MalformedJsonException("JSON forbids NaN and infinities: " + parseDouble + locationString());
    }

    public int nextInt() throws IOException {
        int i = this.peeked;
        int i2 = i;
        if (i == 0) {
            i2 = doPeek();
        }
        if (i2 == 15) {
            int i3 = (int) this.peekedLong;
            if (this.peekedLong != i3) {
                throw new NumberFormatException("Expected an int but was " + this.peekedLong + locationString());
            }
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i4 = this.stackSize - 1;
            iArr[i4] = iArr[i4] + 1;
            return i3;
        }
        if (i2 == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (i2 == 8 || i2 == 9 || i2 == 10) {
            if (i2 == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                this.peekedString = nextQuotedValue(i2 == 8 ? '\'' : '\"');
            }
            try {
                int parseInt = Integer.parseInt(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i5 = this.stackSize - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return parseInt;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected an int but was " + peek() + locationString());
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        int i6 = (int) parseDouble;
        if (i6 != parseDouble) {
            throw new NumberFormatException("Expected an int but was " + this.peekedString + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr3 = this.pathIndices;
        int i7 = this.stackSize - 1;
        iArr3[i7] = iArr3[i7] + 1;
        return i6;
    }

    public long nextLong() throws IOException {
        int i = this.peeked;
        int i2 = i;
        if (i == 0) {
            i2 = doPeek();
        }
        if (i2 == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i3 = this.stackSize - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.peekedLong;
        }
        if (i2 == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (i2 == 8 || i2 == 9 || i2 == 10) {
            if (i2 == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                this.peekedString = nextQuotedValue(i2 == 8 ? '\'' : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i4 = this.stackSize - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseLong;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected a long but was " + peek() + locationString());
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        long j = (long) parseDouble;
        if (j != parseDouble) {
            throw new NumberFormatException("Expected a long but was " + this.peekedString + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr3 = this.pathIndices;
        int i5 = this.stackSize - 1;
        iArr3[i5] = iArr3[i5] + 1;
        return j;
    }

    public String nextName() throws IOException {
        String str;
        int i = this.peeked;
        int i2 = i;
        if (i == 0) {
            i2 = doPeek();
        }
        if (i2 == 14) {
            str = nextUnquotedValue();
        } else if (i2 == 12) {
            str = nextQuotedValue('\'');
        } else if (i2 == 13) {
            str = nextQuotedValue('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + peek() + locationString());
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = str;
        return str;
    }

    public void nextNull() throws IOException {
        int i = this.peeked;
        int i2 = i;
        if (i == 0) {
            i2 = doPeek();
        }
        if (i2 == 7) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i3 = this.stackSize - 1;
            iArr[i3] = iArr[i3] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + peek() + locationString());
    }

    public String nextString() throws IOException {
        String str;
        int i = this.peeked;
        int i2 = i;
        if (i == 0) {
            i2 = doPeek();
        }
        if (i2 == 10) {
            str = nextUnquotedValue();
        } else if (i2 == 8) {
            str = nextQuotedValue('\'');
        } else if (i2 == 9) {
            str = nextQuotedValue('\"');
        } else if (i2 == 11) {
            str = this.peekedString;
            this.peekedString = null;
        } else if (i2 == 15) {
            str = Long.toString(this.peekedLong);
        } else if (i2 == 16) {
            str = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            throw new IllegalStateException("Expected a string but was " + peek() + locationString());
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i3 = this.stackSize - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    public JsonToken peek() throws IOException {
        int i = this.peeked;
        int i2 = i;
        if (i == 0) {
            i2 = doPeek();
        }
        switch (i2) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public final void setLenient(boolean z) {
        this.lenient = z;
    }

    public void skipValue() throws IOException {
        int i;
        int i2 = 0;
        do {
            int i3 = this.peeked;
            int i4 = i3;
            if (i3 == 0) {
                i4 = doPeek();
            }
            if (i4 == 3) {
                push(1);
                i = i2 + 1;
            } else if (i4 == 1) {
                push(3);
                i = i2 + 1;
            } else if (i4 == 4) {
                this.stackSize--;
                i = i2 - 1;
            } else if (i4 == 2) {
                this.stackSize--;
                i = i2 - 1;
            } else if (i4 == 14 || i4 == 10) {
                skipUnquotedValue();
                i = i2;
            } else if (i4 == 8 || i4 == 12) {
                skipQuotedValue('\'');
                i = i2;
            } else if (i4 == 9 || i4 == 13) {
                skipQuotedValue('\"');
                i = i2;
            } else {
                i = i2;
                if (i4 == 16) {
                    this.pos += this.peekedNumberLength;
                    i = i2;
                }
            }
            this.peeked = 0;
            i2 = i;
        } while (i != 0);
        int[] iArr = this.pathIndices;
        int i5 = this.stackSize - 1;
        iArr[i5] = iArr[i5] + 1;
        this.pathNames[this.stackSize - 1] = "null";
    }

    public String toString() {
        return getClass().getSimpleName() + locationString();
    }
}
