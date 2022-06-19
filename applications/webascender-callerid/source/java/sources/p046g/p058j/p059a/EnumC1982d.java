package p046g.p058j.p059a;

import java.io.IOException;
/* renamed from: g.j.a.d */
/* loaded from: classes2-dex2jar.jar:g/j/a/d.class */
public enum EnumC1982d {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");
    
    private final String protocol;

    EnumC1982d(String str) {
        this.protocol = str;
    }

    public static EnumC1982d get(String str) throws IOException {
        EnumC1982d enumC1982d = HTTP_1_0;
        if (str.equals(enumC1982d.protocol)) {
            return enumC1982d;
        }
        EnumC1982d enumC1982d2 = HTTP_1_1;
        if (str.equals(enumC1982d2.protocol)) {
            return enumC1982d2;
        }
        EnumC1982d enumC1982d3 = HTTP_2;
        if (str.equals(enumC1982d3.protocol)) {
            return enumC1982d3;
        }
        EnumC1982d enumC1982d4 = SPDY_3;
        if (str.equals(enumC1982d4.protocol)) {
            return enumC1982d4;
        }
        throw new IOException("Unexpected protocol: " + str);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.protocol;
    }
}
