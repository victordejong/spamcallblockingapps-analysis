package com.squareup.okhttp.internal.http;

import java.io.IOException;
import java.net.ProtocolException;
import p046g.p058j.p059a.EnumC1982d;
/* renamed from: com.squareup.okhttp.internal.http.a */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/a.class */
public final class C1883a {

    /* renamed from: a */
    public final EnumC1982d f5055a;

    /* renamed from: b */
    public final int f5056b;

    /* renamed from: c */
    public final String f5057c;

    public C1883a(EnumC1982d enumC1982d, int i, String str) {
        this.f5055a = enumC1982d;
        this.f5056b = i;
        this.f5057c = str;
    }

    /* renamed from: a */
    public static C1883a m784a(String str) throws IOException {
        EnumC1982d enumC1982d;
        String str2;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int charAt = str.charAt(7) - '0';
            if (charAt == 0) {
                enumC1982d = EnumC1982d.HTTP_1_0;
            } else if (charAt != 1) {
                throw new ProtocolException("Unexpected status line: " + str);
            } else {
                enumC1982d = EnumC1982d.HTTP_1_1;
            }
        } else if (!str.startsWith("ICY ")) {
            throw new ProtocolException("Unexpected status line: " + str);
        } else {
            enumC1982d = EnumC1982d.HTTP_1_0;
            i = 4;
        }
        int i2 = i + 3;
        if (str.length() < i2) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        try {
            int parseInt = Integer.parseInt(str.substring(i, i2));
            if (str.length() <= i2) {
                str2 = "";
            } else if (str.charAt(i2) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            } else {
                str2 = str.substring(i + 4);
            }
            return new C1883a(enumC1982d, parseInt, str2);
        } catch (NumberFormatException e) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f5055a == EnumC1982d.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f5056b);
        if (this.f5057c != null) {
            sb.append(' ');
            sb.append(this.f5057c);
        }
        return sb.toString();
    }
}
