package p016g.p028j.p029a;

import java.io.IOException;
/* renamed from: g.j.a.d */
/* loaded from: classes2-dex2jar.jar:g/j/a/d.class */
public enum EnumC0314d {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");
    
    private final String protocol;

    EnumC0314d(String str) {
        this.protocol = str;
    }

    public static EnumC0314d get(String str) throws IOException {
        EnumC0314d dVar = HTTP_1_0;
        if (str.equals(dVar.protocol)) {
            return dVar;
        }
        EnumC0314d dVar2 = HTTP_1_1;
        if (str.equals(dVar2.protocol)) {
            return dVar2;
        }
        EnumC0314d dVar3 = HTTP_2;
        if (str.equals(dVar3.protocol)) {
            return dVar3;
        }
        EnumC0314d dVar4 = SPDY_3;
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
