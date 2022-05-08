package com.google.android.gms.common.server.response;

import android.util.Log;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.JsonUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Map;
import java.util.Stack;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastParser.class */
public class FastParser<T extends FastJsonResponse> {

    /* renamed from: f */
    private static final char[] f6893f = {'u', 'l', 'l'};

    /* renamed from: g */
    private static final char[] f6894g = {'r', 'u', 'e'};

    /* renamed from: h */
    private static final char[] f6895h = {'r', 'u', 'e', '\"'};

    /* renamed from: i */
    private static final char[] f6896i = {'a', 'l', 's', 'e'};

    /* renamed from: j */
    private static final char[] f6897j = {'a', 'l', 's', 'e', '\"'};

    /* renamed from: k */
    private static final char[] f6898k = {'\n'};

    /* renamed from: m */
    private static final AbstractC1680a<Integer> f6899m = new C1682b();

    /* renamed from: n */
    private static final AbstractC1680a<Long> f6900n = new C1681a();

    /* renamed from: o */
    private static final AbstractC1680a<Float> f6901o = new C1684d();

    /* renamed from: p */
    private static final AbstractC1680a<Double> f6902p = new C1683c();

    /* renamed from: q */
    private static final AbstractC1680a<Boolean> f6903q = new C1686f();

    /* renamed from: r */
    private static final AbstractC1680a<String> f6904r = new C1685e();

    /* renamed from: s */
    private static final AbstractC1680a<BigInteger> f6905s = new C1688h();

    /* renamed from: t */
    private static final AbstractC1680a<BigDecimal> f6906t = new C1687g();

    /* renamed from: a */
    private final char[] f6907a = new char[1];

    /* renamed from: b */
    private final char[] f6908b = new char[32];

    /* renamed from: c */
    private final char[] f6909c = new char[1024];

    /* renamed from: d */
    private final StringBuilder f6910d = new StringBuilder(32);

    /* renamed from: e */
    private final StringBuilder f6911e = new StringBuilder(1024);

    /* renamed from: l */
    private final Stack<Integer> f6912l = new Stack<>();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastParser$ParseException.class */
    public static class ParseException extends Exception {
        public ParseException(String str) {
            super(str);
        }

        public ParseException(String str, Throwable th) {
            super(str, th);
        }

        public ParseException(Throwable th) {
            super(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.gms.common.server.response.FastParser$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastParser$a.class */
    public interface AbstractC1680a<O> {
        /* renamed from: a */
        O mo5575a(FastParser fastParser, BufferedReader bufferedReader);
    }

    /* renamed from: a */
    private final int m5619a(BufferedReader bufferedReader, char[] cArr) {
        int i;
        char j = m5600j(bufferedReader);
        if (j == 0) {
            throw new ParseException("Unexpected EOF");
        } else if (j == ',') {
            throw new ParseException("Missing value");
        } else if (j == 'n') {
            m5615b(bufferedReader, f6893f);
            return 0;
        } else {
            bufferedReader.mark(1024);
            if (j == '\"') {
                int i2 = 0;
                boolean z = false;
                while (true) {
                    i = i2;
                    if (i2 >= cArr.length) {
                        break;
                    }
                    i = i2;
                    if (bufferedReader.read(cArr, i2, 1) == -1) {
                        break;
                    }
                    char c = cArr[i2];
                    if (Character.isISOControl(c)) {
                        throw new ParseException("Unexpected control character while reading string");
                    } else if (c != '\"' || z) {
                        z = c == '\\' ? !z : false;
                        i2++;
                    } else {
                        bufferedReader.reset();
                        bufferedReader.skip(i2 + 1);
                        return i2;
                    }
                }
            } else {
                cArr[0] = j;
                int i3 = 1;
                while (true) {
                    i = i3;
                    if (i3 >= cArr.length) {
                        break;
                    }
                    i = i3;
                    if (bufferedReader.read(cArr, i3, 1) == -1) {
                        break;
                    } else if (cArr[i3] == '}' || cArr[i3] == ',' || Character.isWhitespace(cArr[i3]) || cArr[i3] == ']') {
                        break;
                    } else {
                        i3++;
                    }
                }
                bufferedReader.reset();
                bufferedReader.skip(i3 - 1);
                cArr[i3] = (char) 0;
                return i3;
            }
            if (i == cArr.length) {
                throw new ParseException("Absurdly long value");
            }
            throw new ParseException("Unexpected EOF");
        }
    }

    /* renamed from: a */
    private final String m5624a(BufferedReader bufferedReader) {
        this.f6912l.push(2);
        char j = m5600j(bufferedReader);
        if (j == '\"') {
            this.f6912l.push(3);
            String b = m5614b(bufferedReader, this.f6908b, this.f6910d, null);
            m5626a(3);
            if (m5600j(bufferedReader) == ':') {
                return b;
            }
            throw new ParseException("Expected key/value separator");
        } else if (j == ']') {
            m5626a(2);
            m5626a(1);
            m5626a(5);
            return null;
        } else if (j == '}') {
            m5626a(2);
            return null;
        } else {
            StringBuilder sb = new StringBuilder(19);
            sb.append("Unexpected token: ");
            sb.append(j);
            throw new ParseException(sb.toString());
        }
    }

    /* renamed from: a */
    private final String m5618a(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, char[] cArr2) {
        char j = m5600j(bufferedReader);
        if (j == '\"') {
            return m5614b(bufferedReader, cArr, sb, cArr2);
        }
        if (j == 'n') {
            m5615b(bufferedReader, f6893f);
            return null;
        }
        throw new ParseException("Expected string");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private final <T extends FastJsonResponse> ArrayList<T> m5623a(BufferedReader bufferedReader, FastJsonResponse.Field<?, ?> field) {
        ArrayList<T> arrayList = (ArrayList<T>) new ArrayList();
        char j = m5600j(bufferedReader);
        if (j == ']') {
            m5626a(5);
            return arrayList;
        } else if (j == 'n') {
            m5615b(bufferedReader, f6893f);
            m5626a(5);
            return null;
        } else if (j == '{') {
            Stack<Integer> stack = this.f6912l;
            while (true) {
                stack.push(1);
                try {
                    FastJsonResponse zacn = field.zacn();
                    if (!m5622a(bufferedReader, zacn)) {
                        return arrayList;
                    }
                    arrayList.add(zacn);
                    char j2 = m5600j(bufferedReader);
                    if (j2 != ',') {
                        if (j2 == ']') {
                            m5626a(5);
                            return arrayList;
                        }
                        StringBuilder sb = new StringBuilder(19);
                        sb.append("Unexpected token: ");
                        sb.append(j2);
                        throw new ParseException(sb.toString());
                    } else if (m5600j(bufferedReader) == '{') {
                        stack = this.f6912l;
                    } else {
                        throw new ParseException("Expected start of next object in array");
                    }
                } catch (IllegalAccessException e) {
                    throw new ParseException("Error instantiating inner object", e);
                } catch (InstantiationException e2) {
                    throw new ParseException("Error instantiating inner object", e2);
                }
            }
        } else {
            StringBuilder sb2 = new StringBuilder(19);
            sb2.append("Unexpected token: ");
            sb2.append(j);
            throw new ParseException(sb2.toString());
        }
    }

    /* renamed from: a */
    private final <O> ArrayList<O> m5621a(BufferedReader bufferedReader, AbstractC1680a<O> aVar) {
        char j = m5600j(bufferedReader);
        if (j == 'n') {
            m5615b(bufferedReader, f6893f);
            return null;
        } else if (j == '[') {
            this.f6912l.push(5);
            ArrayList<O> arrayList = new ArrayList<>();
            while (true) {
                bufferedReader.mark(1024);
                char j2 = m5600j(bufferedReader);
                if (j2 == 0) {
                    throw new ParseException("Unexpected EOF");
                } else if (j2 != ',') {
                    if (j2 != ']') {
                        bufferedReader.reset();
                        arrayList.add(aVar.mo5575a(this, bufferedReader));
                    } else {
                        m5626a(5);
                        return arrayList;
                    }
                }
            }
        } else {
            throw new ParseException("Expected start of array");
        }
    }

    /* renamed from: a */
    private final void m5626a(int i) {
        if (!this.f6912l.isEmpty()) {
            int intValue = this.f6912l.pop().intValue();
            if (intValue != i) {
                StringBuilder sb = new StringBuilder(46);
                sb.append("Expected state ");
                sb.append(i);
                sb.append(" but had ");
                sb.append(intValue);
                throw new ParseException(sb.toString());
            }
            return;
        }
        StringBuilder sb2 = new StringBuilder(46);
        sb2.append("Expected state ");
        sb2.append(i);
        sb2.append(" but had empty stack");
        throw new ParseException(sb2.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x01e7, code lost:
        m5626a(1);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m5622a(java.io.BufferedReader r9, com.google.android.gms.common.server.response.FastJsonResponse r10) {
        /*
            Method dump skipped, instructions count: 1192
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.FastParser.m5622a(java.io.BufferedReader, com.google.android.gms.common.server.response.FastJsonResponse):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final boolean m5620a(BufferedReader bufferedReader, boolean z) {
        while (true) {
            char j = m5600j(bufferedReader);
            if (j != '\"') {
                if (j == 'f') {
                    m5615b(bufferedReader, z ? f6897j : f6896i);
                    return false;
                } else if (j == 'n') {
                    m5615b(bufferedReader, f6893f);
                    return false;
                } else if (j == 't') {
                    m5615b(bufferedReader, z ? f6895h : f6894g);
                    return true;
                } else {
                    StringBuilder sb = new StringBuilder(19);
                    sb.append("Unexpected token: ");
                    sb.append(j);
                    throw new ParseException(sb.toString());
                }
            } else if (!z) {
                z = true;
            } else {
                throw new ParseException("No boolean value found in string");
            }
        }
    }

    /* renamed from: b */
    private final String m5616b(BufferedReader bufferedReader) {
        bufferedReader.mark(1024);
        char j = m5600j(bufferedReader);
        if (j != '\"') {
            if (j != ',') {
                int i = 1;
                if (j == '[') {
                    this.f6912l.push(5);
                    bufferedReader.mark(32);
                    if (m5600j(bufferedReader) != ']') {
                        bufferedReader.reset();
                        boolean z = false;
                        boolean z2 = false;
                        while (i > 0) {
                            char j2 = m5600j(bufferedReader);
                            if (j2 == 0) {
                                throw new ParseException("Unexpected EOF while parsing array");
                            } else if (!Character.isISOControl(j2)) {
                                boolean z3 = z2;
                                if (j2 == '\"') {
                                    z3 = z2;
                                    if (!z) {
                                        z3 = !z2;
                                    }
                                }
                                int i2 = i;
                                if (j2 == '[') {
                                    i2 = i;
                                    if (!z3) {
                                        i2 = i + 1;
                                    }
                                }
                                i = i2;
                                if (j2 == ']') {
                                    i = i2;
                                    if (!z3) {
                                        i = i2 - 1;
                                    }
                                }
                                if (j2 != '\\' || !z3) {
                                    z = false;
                                    z2 = z3;
                                } else {
                                    z = !z;
                                    z2 = z3;
                                }
                            } else {
                                throw new ParseException("Unexpected control character while reading array");
                            }
                        }
                    }
                    m5626a(5);
                } else if (j != '{') {
                    bufferedReader.reset();
                    m5619a(bufferedReader, this.f6909c);
                } else {
                    this.f6912l.push(1);
                    bufferedReader.mark(32);
                    char j3 = m5600j(bufferedReader);
                    if (j3 == '}') {
                        m5626a(1);
                    } else if (j3 == '\"') {
                        bufferedReader.reset();
                        m5624a(bufferedReader);
                        do {
                        } while (m5616b(bufferedReader) != null);
                        m5626a(1);
                    } else {
                        StringBuilder sb = new StringBuilder(18);
                        sb.append("Unexpected token ");
                        sb.append(j3);
                        throw new ParseException(sb.toString());
                    }
                }
            } else {
                throw new ParseException("Missing value");
            }
        } else if (bufferedReader.read(this.f6907a) != -1) {
            char c = this.f6907a[0];
            boolean z4 = false;
            while (true) {
                if (c == '\"' && !z4) {
                    break;
                }
                z4 = c == '\\' ? !z4 : false;
                if (bufferedReader.read(this.f6907a) != -1) {
                    char c2 = this.f6907a[0];
                    if (!Character.isISOControl(c2)) {
                        c = c2;
                    } else {
                        throw new ParseException("Unexpected control character while reading string");
                    }
                } else {
                    throw new ParseException("Unexpected EOF while parsing string");
                }
            }
        } else {
            throw new ParseException("Unexpected EOF while parsing string");
        }
        char j4 = m5600j(bufferedReader);
        if (j4 == ',') {
            m5626a(2);
            return m5624a(bufferedReader);
        } else if (j4 == '}') {
            m5626a(2);
            return null;
        } else {
            StringBuilder sb2 = new StringBuilder(18);
            sb2.append("Unexpected token ");
            sb2.append(j4);
            throw new ParseException(sb2.toString());
        }
    }

    /* renamed from: b */
    private static String m5614b(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, char[] cArr2) {
        boolean z;
        sb.setLength(0);
        bufferedReader.mark(cArr.length);
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            int read = bufferedReader.read(cArr);
            if (read != -1) {
                for (int i = 0; i < read; i++) {
                    char c = cArr[i];
                    if (Character.isISOControl(c)) {
                        if (cArr2 != null) {
                            for (char c2 : cArr2) {
                                if (c2 == c) {
                                    z = true;
                                    break;
                                }
                            }
                        }
                        z = false;
                        if (!z) {
                            throw new ParseException("Unexpected control character while reading string");
                        }
                    }
                    if (c != '\"' || z2) {
                        if (c == '\\') {
                            z2 = !z2;
                            z3 = true;
                        } else {
                            z2 = false;
                        }
                    } else {
                        sb.append(cArr, 0, i);
                        bufferedReader.reset();
                        bufferedReader.skip(i + 1);
                        String sb2 = sb.toString();
                        String str = sb2;
                        if (z3) {
                            str = JsonUtils.unescapeString(sb2);
                        }
                        return str;
                    }
                }
                sb.append(cArr, 0, read);
                bufferedReader.mark(cArr.length);
                z3 = z3;
                z2 = z2;
            } else {
                throw new ParseException("Unexpected EOF while parsing string");
            }
        }
    }

    /* renamed from: b */
    private final void m5615b(BufferedReader bufferedReader, char[] cArr) {
        int i = 0;
        while (i < cArr.length) {
            int read = bufferedReader.read(this.f6908b, 0, cArr.length - i);
            if (read != -1) {
                for (int i2 = 0; i2 < read; i2++) {
                    if (cArr[i2 + i] != this.f6908b[i2]) {
                        throw new ParseException("Unexpected character");
                    }
                }
                i += read;
            } else {
                throw new ParseException("Unexpected EOF");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public final String m5612c(BufferedReader bufferedReader) {
        return m5618a(bufferedReader, this.f6908b, this.f6910d, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public final int m5610d(BufferedReader bufferedReader) {
        boolean z;
        int i;
        int i2;
        int i3;
        int a = m5619a(bufferedReader, this.f6909c);
        if (a == 0) {
            return 0;
        }
        char[] cArr = this.f6909c;
        if (a > 0) {
            if (cArr[0] == '-') {
                i2 = Integer.MIN_VALUE;
                i = 1;
                z = true;
            } else {
                z = false;
                i2 = -2147483647;
                i = 0;
            }
            if (i < a) {
                i++;
                int digit = Character.digit(cArr[i], 10);
                if (digit >= 0) {
                    i3 = -digit;
                } else {
                    throw new ParseException("Unexpected non-digit character");
                }
            } else {
                i3 = 0;
            }
            while (i < a) {
                int digit2 = Character.digit(cArr[i], 10);
                if (digit2 < 0) {
                    throw new ParseException("Unexpected non-digit character");
                } else if (i3 >= -214748364) {
                    int i4 = i3 * 10;
                    if (i4 >= i2 + digit2) {
                        i3 = i4 - digit2;
                        i++;
                    } else {
                        throw new ParseException("Number too large");
                    }
                } else {
                    throw new ParseException("Number too large");
                }
            }
            if (!z) {
                return -i3;
            }
            if (i > 1) {
                return i3;
            }
            throw new ParseException("No digits to parse");
        }
        throw new ParseException("No number to parse");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public final long m5608e(BufferedReader bufferedReader) {
        long j;
        long j2;
        int i;
        int a = m5619a(bufferedReader, this.f6909c);
        if (a == 0) {
            return 0L;
        }
        char[] cArr = this.f6909c;
        if (a > 0) {
            int i2 = 0;
            if (cArr[0] == '-') {
                j = Long.MIN_VALUE;
                i2 = 1;
            } else {
                j = -9223372036854775807L;
            }
            if (i2 < a) {
                i = i2 + 1;
                int digit = Character.digit(cArr[i2], 10);
                if (digit >= 0) {
                    j2 = -digit;
                } else {
                    throw new ParseException("Unexpected non-digit character");
                }
            } else {
                i = i2;
                j2 = 0;
            }
            while (i < a) {
                int digit2 = Character.digit(cArr[i], 10);
                if (digit2 < 0) {
                    throw new ParseException("Unexpected non-digit character");
                } else if (j2 >= -922337203685477580L) {
                    long j3 = j2 * 10;
                    long j4 = digit2;
                    if (j3 >= j + j4) {
                        j2 = j3 - j4;
                        i++;
                    } else {
                        throw new ParseException("Number too large");
                    }
                } else {
                    throw new ParseException("Number too large");
                }
            }
            if (i2 == 0) {
                return -j2;
            }
            if (i > 1) {
                return j2;
            }
            throw new ParseException("No digits to parse");
        }
        throw new ParseException("No number to parse");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public final BigInteger m5606f(BufferedReader bufferedReader) {
        int a = m5619a(bufferedReader, this.f6909c);
        if (a == 0) {
            return null;
        }
        return new BigInteger(new String(this.f6909c, 0, a));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public final float m5604g(BufferedReader bufferedReader) {
        int a = m5619a(bufferedReader, this.f6909c);
        if (a == 0) {
            return 0.0f;
        }
        return Float.parseFloat(new String(this.f6909c, 0, a));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public final double m5602h(BufferedReader bufferedReader) {
        int a = m5619a(bufferedReader, this.f6909c);
        if (a == 0) {
            return 0.0d;
        }
        return Double.parseDouble(new String(this.f6909c, 0, a));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public final BigDecimal m5601i(BufferedReader bufferedReader) {
        int a = m5619a(bufferedReader, this.f6909c);
        if (a == 0) {
            return null;
        }
        return new BigDecimal(new String(this.f6909c, 0, a));
    }

    /* renamed from: j */
    private final char m5600j(BufferedReader bufferedReader) {
        if (bufferedReader.read(this.f6907a) == -1) {
            return (char) 0;
        }
        while (Character.isWhitespace(this.f6907a[0])) {
            if (bufferedReader.read(this.f6907a) == -1) {
                return (char) 0;
            }
        }
        return this.f6907a[0];
    }

    public void parse(InputStream inputStream, T t) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 1024);
        try {
            try {
                this.f6912l.push(0);
                char j = m5600j(bufferedReader);
                if (j != 0) {
                    if (j == '[') {
                        this.f6912l.push(5);
                        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = t.getFieldMappings();
                        if (fieldMappings.size() == 1) {
                            FastJsonResponse.Field<?, ?> value = fieldMappings.entrySet().iterator().next().getValue();
                            t.addConcreteTypeArrayInternal(value, value.f6886e, m5623a(bufferedReader, value));
                        } else {
                            throw new ParseException("Object array response class must have a single Field");
                        }
                    } else if (j == '{') {
                        this.f6912l.push(1);
                        m5622a(bufferedReader, t);
                    } else {
                        StringBuilder sb = new StringBuilder(19);
                        sb.append("Unexpected token: ");
                        sb.append(j);
                        throw new ParseException(sb.toString());
                    }
                    m5626a(0);
                    try {
                        bufferedReader.close();
                    } catch (IOException e) {
                        Log.w("FastParser", "Failed to close reader while parsing.");
                    }
                } else {
                    throw new ParseException("No data to parse");
                }
            } catch (IOException e2) {
                throw new ParseException(e2);
            }
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (IOException e3) {
                Log.w("FastParser", "Failed to close reader while parsing.");
            }
            throw th;
        }
    }
}
