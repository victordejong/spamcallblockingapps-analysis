package com.appsflyer.internal;

import android.util.Base64;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.appsflyer.internal.j */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/j.class */
public final class C1847j {

    /* renamed from: ı */
    public String f1872;

    /* renamed from: ǃ */
    public String f1873;

    /* renamed from: ɩ */
    public String f1874;

    /* renamed from: ι */
    public byte[] f1875;

    public C1847j() {
    }

    public C1847j(String str, byte[] bArr, String str2) {
        this.f1872 = str;
        this.f1875 = bArr;
        this.f1874 = str2;
    }

    public C1847j(char[] cArr) {
        Scanner scanner = new Scanner(new String(cArr));
        int i = 0;
        int i2 = 0;
        while (scanner.hasNextLine()) {
            String nextLine = scanner.nextLine();
            if (nextLine.startsWith("url=")) {
                this.f1872 = nextLine.substring(4).trim();
            } else if (nextLine.startsWith("version=")) {
                this.f1874 = nextLine.substring(8).trim();
                Matcher matcher = Pattern.compile("^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$").matcher(this.f1874);
                if (matcher.matches()) {
                    i = Integer.parseInt(matcher.group(1));
                    i2 = Integer.parseInt(matcher.group(2));
                }
            } else if (nextLine.startsWith("data=")) {
                String trim = nextLine.substring(5).trim();
                this.f1875 = (i > 4 || i2 >= 11) ? Base64.decode(trim, 2) : trim.getBytes();
            }
        }
        scanner.close();
    }

    /* renamed from: ǃ */
    public final byte[] m36127() {
        return this.f1875;
    }
}
