package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/JsonTreeReader.class */
public final class JsonTreeReader extends JsonReader {

    /* renamed from: z */
    private static final Object f12065z = new Object();

    /* renamed from: v */
    private Object[] f12066v;

    /* renamed from: w */
    private int f12067w;

    /* renamed from: x */
    private String[] f12068x;

    /* renamed from: y */
    private int[] f12069y;

    static {
        new Reader() { // from class: com.google.gson.internal.bind.JsonTreeReader.1
            @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                throw new AssertionError();
            }

            @Override // java.io.Reader
            public int read(char[] cArr, int i, int i2) throws IOException {
                throw new AssertionError();
            }
        };
    }

    /* renamed from: A0 */
    private Object m8265A0() {
        return this.f12066v[this.f12067w - 1];
    }

    /* renamed from: B0 */
    private Object m8264B0() {
        Object[] objArr = this.f12066v;
        int i = this.f12067w - 1;
        this.f12067w = i;
        Object obj = objArr[i];
        objArr[i] = null;
        return obj;
    }

    /* renamed from: D0 */
    private void m8262D0(Object obj) {
        int i = this.f12067w;
        Object[] objArr = this.f12066v;
        if (i == objArr.length) {
            Object[] objArr2 = new Object[i * 2];
            int[] iArr = new int[i * 2];
            String[] strArr = new String[i * 2];
            System.arraycopy(objArr, 0, objArr2, 0, i);
            System.arraycopy(this.f12069y, 0, iArr, 0, this.f12067w);
            System.arraycopy(this.f12068x, 0, strArr, 0, this.f12067w);
            this.f12066v = objArr2;
            this.f12069y = iArr;
            this.f12068x = strArr;
        }
        Object[] objArr3 = this.f12066v;
        int i2 = this.f12067w;
        this.f12067w = i2 + 1;
        objArr3[i2] = obj;
    }

    /* renamed from: t */
    private String m8261t() {
        return " at path " + mo8133m();
    }

    /* renamed from: z0 */
    private void m8260z0(JsonToken jsonToken) throws IOException {
        if (mo8147Z() != jsonToken) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + mo8147Z() + m8261t());
        }
    }

    @Override // com.google.gson.stream.JsonReader
    /* renamed from: B */
    public boolean mo8157B() throws IOException {
        m8260z0(JsonToken.BOOLEAN);
        boolean k = ((JsonPrimitive) m8264B0()).m8383k();
        int i = this.f12067w;
        if (i > 0) {
            int[] iArr = this.f12069y;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return k;
    }

    /* renamed from: C0 */
    public void m8263C0() throws IOException {
        m8260z0(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) m8265A0()).next();
        m8262D0(entry.getValue());
        m8262D0(new JsonPrimitive((String) entry.getKey()));
    }

    @Override // com.google.gson.stream.JsonReader
    /* renamed from: I */
    public double mo8156I() throws IOException {
        JsonToken Z = mo8147Z();
        if (Z == JsonToken.NUMBER || Z == JsonToken.STRING) {
            double p = ((JsonPrimitive) m8265A0()).m8381p();
            if (m8130p() || (!Double.isNaN(p) && !Double.isInfinite(p))) {
                m8264B0();
                int i = this.f12067w;
                if (i > 0) {
                    int[] iArr = this.f12069y;
                    int i2 = i - 1;
                    iArr[i2] = iArr[i2] + 1;
                }
                return p;
            }
            throw new NumberFormatException("JSON forbids NaN and infinities: " + p);
        }
        throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + Z + m8261t());
    }

    @Override // com.google.gson.stream.JsonReader
    /* renamed from: J */
    public int mo8155J() throws IOException {
        JsonToken Z = mo8147Z();
        if (Z == JsonToken.NUMBER || Z == JsonToken.STRING) {
            int r = ((JsonPrimitive) m8265A0()).m8380r();
            m8264B0();
            int i = this.f12067w;
            if (i > 0) {
                int[] iArr = this.f12069y;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return r;
        }
        throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + Z + m8261t());
    }

    @Override // com.google.gson.stream.JsonReader
    /* renamed from: K */
    public long mo8154K() throws IOException {
        JsonToken Z = mo8147Z();
        if (Z == JsonToken.NUMBER || Z == JsonToken.STRING) {
            long s = ((JsonPrimitive) m8265A0()).m8379s();
            m8264B0();
            int i = this.f12067w;
            if (i > 0) {
                int[] iArr = this.f12069y;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return s;
        }
        throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + Z + m8261t());
    }

    @Override // com.google.gson.stream.JsonReader
    /* renamed from: L */
    public String mo8153L() throws IOException {
        m8260z0(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) m8265A0()).next();
        String str = (String) entry.getKey();
        this.f12068x[this.f12067w - 1] = str;
        m8262D0(entry.getValue());
        return str;
    }

    @Override // com.google.gson.stream.JsonReader
    /* renamed from: V */
    public void mo8151V() throws IOException {
        m8260z0(JsonToken.NULL);
        m8264B0();
        int i = this.f12067w;
        if (i > 0) {
            int[] iArr = this.f12069y;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    /* renamed from: X */
    public String mo8149X() throws IOException {
        JsonToken Z = mo8147Z();
        if (Z == JsonToken.STRING || Z == JsonToken.NUMBER) {
            String u = ((JsonPrimitive) m8264B0()).m8377u();
            int i = this.f12067w;
            if (i > 0) {
                int[] iArr = this.f12069y;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return u;
        }
        throw new IllegalStateException("Expected " + JsonToken.STRING + " but was " + Z + m8261t());
    }

    @Override // com.google.gson.stream.JsonReader
    /* renamed from: Z */
    public JsonToken mo8147Z() throws IOException {
        if (this.f12067w == 0) {
            return JsonToken.END_DOCUMENT;
        }
        Object A0 = m8265A0();
        if (A0 instanceof Iterator) {
            boolean z = this.f12066v[this.f12067w - 2] instanceof JsonObject;
            Iterator it = (Iterator) A0;
            if (!it.hasNext()) {
                return z ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
            } else if (z) {
                return JsonToken.NAME;
            } else {
                m8262D0(it.next());
                return mo8147Z();
            }
        } else if (A0 instanceof JsonObject) {
            return JsonToken.BEGIN_OBJECT;
        } else {
            if (A0 instanceof JsonArray) {
                return JsonToken.BEGIN_ARRAY;
            }
            if (A0 instanceof JsonPrimitive) {
                JsonPrimitive jsonPrimitive = (JsonPrimitive) A0;
                if (jsonPrimitive.m8372z()) {
                    return JsonToken.STRING;
                }
                if (jsonPrimitive.m8376v()) {
                    return JsonToken.BOOLEAN;
                }
                if (jsonPrimitive.m8374x()) {
                    return JsonToken.NUMBER;
                }
                throw new AssertionError();
            } else if (A0 instanceof JsonNull) {
                return JsonToken.NULL;
            } else {
                if (A0 == f12065z) {
                    throw new IllegalStateException("JsonReader is closed");
                }
                throw new AssertionError();
            }
        }
    }

    @Override // com.google.gson.stream.JsonReader
    /* renamed from: a */
    public void mo8146a() throws IOException {
        m8260z0(JsonToken.BEGIN_ARRAY);
        m8262D0(((JsonArray) m8265A0()).iterator());
        this.f12069y[this.f12067w - 1] = 0;
    }

    @Override // com.google.gson.stream.JsonReader
    /* renamed from: b */
    public void mo8145b() throws IOException {
        m8260z0(JsonToken.BEGIN_OBJECT);
        m8262D0(((JsonObject) m8265A0()).m8385n().iterator());
    }

    @Override // com.google.gson.stream.JsonReader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f12066v = new Object[]{f12065z};
        this.f12067w = 1;
    }

    @Override // com.google.gson.stream.JsonReader
    /* renamed from: i */
    public void mo8138i() throws IOException {
        m8260z0(JsonToken.END_ARRAY);
        m8264B0();
        m8264B0();
        int i = this.f12067w;
        if (i > 0) {
            int[] iArr = this.f12069y;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    /* renamed from: k */
    public void mo8135k() throws IOException {
        m8260z0(JsonToken.END_OBJECT);
        m8264B0();
        m8264B0();
        int i = this.f12067w;
        if (i > 0) {
            int[] iArr = this.f12069y;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    /* renamed from: m */
    public String mo8133m() {
        int i;
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i2 = 0;
        while (i2 < this.f12067w) {
            Object[] objArr = this.f12066v;
            if (objArr[i2] instanceof JsonArray) {
                int i3 = i2 + 1;
                i = i3;
                if (objArr[i3] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.f12069y[i3]);
                    sb.append(']');
                    i = i3;
                }
            } else {
                i = i2;
                if (objArr[i2] instanceof JsonObject) {
                    int i4 = i2 + 1;
                    i = i4;
                    if (objArr[i4] instanceof Iterator) {
                        sb.append('.');
                        String[] strArr = this.f12068x;
                        i = i4;
                        if (strArr[i4] != null) {
                            sb.append(strArr[i4]);
                            i = i4;
                        }
                    }
                }
            }
            i2 = i + 1;
        }
        return sb.toString();
    }

    @Override // com.google.gson.stream.JsonReader
    /* renamed from: o */
    public boolean mo8132o() throws IOException {
        JsonToken Z = mo8147Z();
        return (Z == JsonToken.END_OBJECT || Z == JsonToken.END_ARRAY) ? false : true;
    }

    @Override // com.google.gson.stream.JsonReader
    public String toString() {
        return JsonTreeReader.class.getSimpleName();
    }

    @Override // com.google.gson.stream.JsonReader
    /* renamed from: x0 */
    public void mo8124x0() throws IOException {
        if (mo8147Z() == JsonToken.NAME) {
            mo8153L();
            this.f12068x[this.f12067w - 2] = "null";
        } else {
            m8264B0();
            int i = this.f12067w;
            if (i > 0) {
                this.f12068x[i - 1] = "null";
            }
        }
        int i2 = this.f12067w;
        if (i2 > 0) {
            int[] iArr = this.f12069y;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }
}
