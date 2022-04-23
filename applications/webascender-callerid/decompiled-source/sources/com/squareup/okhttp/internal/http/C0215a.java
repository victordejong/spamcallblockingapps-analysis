package com.squareup.okhttp.internal.http;

import java.io.IOException;
import java.net.ProtocolException;
import p016g.p028j.p029a.EnumC0314d;
/* renamed from: com.squareup.okhttp.internal.http.a */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/a.class */
public final class C0215a {

    /* renamed from: a */
    public final EnumC0314d f376a;

    /* renamed from: b */
    public final int f377b;

    /* renamed from: c */
    public final String f378c;

    public C0215a(EnumC0314d dVar, int i, String str) {
        this.f376a = dVar;
        this.f377b = i;
        this.f378c = str;
    }

    /* renamed from: a */
    public static C0215a m784a(String str) throws IOException {
        EnumC0314d dVar;
        String str2;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int charAt = str.charAt(7) - '0';
            if (charAt == 0) {
                dVar = EnumC0314d.HTTP_1_0;
            } else if (charAt == 1) {
                dVar = EnumC0314d.HTTP_1_1;
            } else {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        } else if (str.startsWith("ICY ")) {
            dVar = EnumC0314d.HTTP_1_0;
            i = 4;
        } else {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        int i2 = i + 3;
        if (str.length() >= i2) {
            try {
                int parseInt = Integer.parseInt(str.substring(i, i2));
                if (str.length() <= i2) {
                    str2 = "";
                } else if (str.charAt(i2) == ' ') {
                    str2 = str.substring(i + 4);
                } else {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                return new C0215a(dVar, parseInt, str2);
            } catch (NumberFormatException e) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        } else {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f376a == EnumC0314d.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f377b);
        if (this.f378c != null) {
            sb.append(' ');
            sb.append(this.f378c);
        }
        return sb.toString();
    }
}
