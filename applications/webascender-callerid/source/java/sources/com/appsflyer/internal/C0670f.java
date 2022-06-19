package com.appsflyer.internal;

import android.util.Base64;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.appsflyer.internal.f */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/f.class */
public final class C0670f {

    /* renamed from: ı */
    public String f3036;

    /* renamed from: ɩ */
    public String f3037;

    /* renamed from: Ι */
    private byte[] f3038;

    /* renamed from: ι */
    public String f3039;

    C0670f() {
    }

    public C0670f(String str, byte[] bArr, String str2) {
        this.f3036 = str;
        this.f3038 = bArr;
        this.f3037 = str2;
    }

    public C0670f(char[] cArr) {
        Scanner scanner = new Scanner(new String(cArr));
        int i = 0;
        int i2 = 0;
        while (scanner.hasNextLine()) {
            String nextLine = scanner.nextLine();
            if (nextLine.startsWith("url=")) {
                this.f3036 = nextLine.substring(4).trim();
            } else if (nextLine.startsWith("version=")) {
                this.f3037 = nextLine.substring(8).trim();
                Matcher matcher = Pattern.compile("^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$").matcher(this.f3037);
                if (matcher.matches()) {
                    i = Integer.parseInt(matcher.group(1));
                    i2 = Integer.parseInt(matcher.group(2));
                }
            } else if (nextLine.startsWith("data=")) {
                String trim = nextLine.substring(5).trim();
                this.f3038 = (i > 4 || i2 >= 11) ? Base64.decode(trim, 2) : trim.getBytes();
            }
        }
        scanner.close();
    }

    /* renamed from: Ι */
    public final byte[] m4038() {
        return this.f3038;
    }
}
