package com.asus.contacts.fonts;

import android.content.Context;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/m.class */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, Integer> f2668a = null;

    /* renamed from: b  reason: collision with root package name */
    private Context f2669b;
    private RandomAccessFile c = null;
    private String d = null;
    private int e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Context context) {
        this.f2669b = null;
        this.e = -1;
        this.f2669b = context;
        if (f2668a == null) {
            a(context);
        }
        String locale = Locale.getDefault().toString();
        this.e = f2668a.containsKey(locale) ? f2668a.get(locale).intValue() : 1033;
    }

    private static int a(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 8) | (bArr[i + 1] & 255);
    }

    private String a() {
        String str;
        try {
            int d = d();
            if (d == 1953658213 || d == 65536) {
                int c = c();
                c();
                c();
                c();
                int i = 0;
                while (true) {
                    str = null;
                    if (i >= c) {
                        break;
                    }
                    int d2 = d();
                    d();
                    int d3 = d();
                    int d4 = d();
                    if (d2 == 1851878757) {
                        byte[] bArr = new byte[d4];
                        this.c.seek(d3);
                        if (this.c.read(bArr) == bArr.length) {
                            int a2 = a(bArr, 2);
                            int a3 = a(bArr, 4);
                            int i2 = 0;
                            while (true) {
                                if (i2 >= a2) {
                                    str = this.d;
                                    break;
                                }
                                int i3 = (i2 * 12) + 6;
                                int a4 = a(bArr, i3);
                                int a5 = a(bArr, i3 + 4);
                                int a6 = a(bArr, i3 + 6);
                                boolean z = a5 == this.e || a5 == 1033;
                                if (a6 == 4 && a4 == 3 && z) {
                                    int a7 = a(bArr, i3 + 8);
                                    int a8 = a(bArr, i3 + 10) + a3;
                                    if (a8 >= 0 && a8 + a7 < bArr.length) {
                                        str = new String(bArr, a8, a7, Charset.forName("utf-16"));
                                        Log.v("[TTFNameParser]", String.format("[parseTtfFontname] languageId: %s, name: %s", Integer.valueOf(a5), str));
                                        if (a5 == this.e) {
                                            break;
                                        } else if (a5 == 1033) {
                                            this.d = str;
                                        }
                                    }
                                }
                                i2++;
                            }
                        } else {
                            throw new IOException();
                        }
                    } else {
                        i++;
                    }
                }
            } else {
                str = null;
            }
        } catch (FileNotFoundException e) {
            Log.d("[TTFNameParser]", "Failed parsing TTF file", e);
            str = null;
        } catch (IOException e2) {
            Log.d("[TTFNameParser]", "Failed parsing TTF file", e2);
            str = null;
        }
        return str;
    }

    private static void a(Context context) {
        String[] stringArray = context.getResources().getStringArray(2130837541);
        HashMap hashMap = new HashMap();
        for (String str : stringArray) {
            String[] split = str.split("#", 2);
            hashMap.put(split[0], Integer.valueOf(Integer.parseInt(split[1], 16)));
        }
        f2668a = hashMap;
    }

    private static void a(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    private int b() {
        return this.c.read() & 255;
    }

    private int c() {
        return (b() << 8) | b();
    }

    private int d() {
        return (b() << 24) | (b() << 16) | (b() << 8) | b();
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x0176 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x016d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0182 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a(android.content.res.AssetManager r5, java.lang.String r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.contacts.fonts.m.a(android.content.res.AssetManager, java.lang.String, java.lang.String):java.lang.String");
    }
}
