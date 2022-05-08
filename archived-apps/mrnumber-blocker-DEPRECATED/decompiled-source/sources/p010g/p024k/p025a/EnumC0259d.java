package p010g.p024k.p025a;

import java.io.IOException;
/* renamed from: g.k.a.d */
/* loaded from: classes2-dex2jar.jar:g/k/a/d.class */
public enum EnumC0259d {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");
    
    private final String protocol;

    EnumC0259d(String str) {
        this.protocol = str;
    }

    public static EnumC0259d get(String str) throws IOException {
        EnumC0259d dVar = HTTP_1_0;
        if (str.equals(dVar.protocol)) {
            return dVar;
        }
        EnumC0259d dVar2 = HTTP_1_1;
        if (str.equals(dVar2.protocol)) {
            return dVar2;
        }
        EnumC0259d dVar3 = HTTP_2;
        if (str.equals(dVar3.protocol)) {
            return dVar3;
        }
        EnumC0259d dVar4 = SPDY_3;
        if (str.equals(dVar4.protocol)) {
            return dVar4;
        }
        throw new IOException("Unexpected protocol: " + str);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.protocol;
    }
}
