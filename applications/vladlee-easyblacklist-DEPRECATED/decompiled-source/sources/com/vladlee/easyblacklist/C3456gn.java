package com.vladlee.easyblacklist;

import android.content.Context;
import android.os.Environment;
import android.telephony.PhoneNumberUtils;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
/* renamed from: com.vladlee.easyblacklist.gn */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/gn.class */
public final class C3456gn {
    /* renamed from: a */
    public static String m33a(Context context, long j) {
        boolean is24HourFormat = DateFormat.is24HourFormat(context);
        String str = !is24HourFormat ? "d LLL, h:mm a" : "d LLL, H:mm";
        if (DateUtils.isToday(j)) {
            str = !is24HourFormat ? "h:mm a" : "H:mm";
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x009f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m32a(android.content.Context r6, java.util.ArrayList<java.lang.String> r7) {
        /*
            java.io.File r0 = new java.io.File
            r1 = r0
            java.io.File r2 = android.os.Environment.getExternalStorageDirectory()
            r3 = r6
            r4 = 2131623974(0x7f0e0026, float:1.8875115E38)
            java.lang.String r3 = r3.getString(r4)
            r1.<init>(r2, r3)
            r8 = r0
            r0 = r8
            boolean r0 = r0.exists()
            if (r0 != 0) goto L_0x001d
            r0 = r8
            boolean r0 = r0.mkdir()
        L_0x001d:
            r0 = r8
            boolean r0 = r0.exists()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r10
            r6 = r0
            r0 = r9
            if (r0 == 0) goto L_0x00b7
            java.io.File r0 = new java.io.File
            r1 = r0
            r2 = r8
            java.lang.String r2 = r2.getAbsolutePath()
            java.lang.String r3 = "blacklist.txt"
            r1.<init>(r2, r3)
            r6 = r0
            r0 = r6
            java.lang.String r0 = r0.getAbsolutePath()
            r11 = r0
            java.io.BufferedOutputStream r0 = new java.io.BufferedOutputStream     // Catch: Exception -> 0x008c
            r8 = r0
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: Exception -> 0x008c
            r12 = r0
            r0 = r12
            r1 = r6
            r0.<init>(r1)     // Catch: Exception -> 0x008c
            r0 = r8
            r1 = r12
            r0.<init>(r1)     // Catch: Exception -> 0x008c
            r0 = 0
            r13 = r0
        L_0x0058:
            r0 = r11
            r6 = r0
            r0 = r8
            r12 = r0
            r0 = r13
            r1 = r7
            int r1 = r1.size()     // Catch: Exception -> 0x0086
            if (r0 >= r1) goto L_0x009a
            r0 = r8
            r1 = r7
            r2 = r13
            java.lang.Object r1 = r1.get(r2)     // Catch: Exception -> 0x0086
            java.lang.String r1 = (java.lang.String) r1     // Catch: Exception -> 0x0086
            byte[] r1 = r1.getBytes()     // Catch: Exception -> 0x0086
            r0.write(r1)     // Catch: Exception -> 0x0086
            r0 = r8
            java.lang.String r1 = "\n"
            byte[] r1 = r1.getBytes()     // Catch: Exception -> 0x0086
            r0.write(r1)     // Catch: Exception -> 0x0086
            int r13 = r13 + 1
            goto L_0x0058
        L_0x0086:
            r7 = move-exception
            r0 = r8
            r6 = r0
            goto L_0x008f
        L_0x008c:
            r7 = move-exception
            r0 = 0
            r6 = r0
        L_0x008f:
            r0 = r7
            r0.printStackTrace()
            r0 = 0
            r7 = r0
            r0 = r6
            r12 = r0
            r0 = r7
            r6 = r0
        L_0x009a:
            r0 = r12
            if (r0 == 0) goto L_0x00b7
            r0 = r12
            r0.flush()     // Catch: IOException -> 0x00ac
            r0 = r12
            r0.close()     // Catch: IOException -> 0x00ac
            goto L_0x00b7
        L_0x00ac:
            r6 = move-exception
            r0 = r6
            r0.printStackTrace()
            r0 = r10
            r6 = r0
            goto L_0x00b7
        L_0x00b7:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vladlee.easyblacklist.C3456gn.m32a(android.content.Context, java.util.ArrayList):java.lang.String");
    }

    /* renamed from: a */
    public static ArrayList<String> m34a(Context context) {
        return m31a(new File(new File(Environment.getExternalStorageDirectory(), context.getString(2131623974)).getAbsolutePath(), "blacklist.txt"));
    }

    /* renamed from: a */
    private static ArrayList<String> m31a(File file) {
        ArrayList<String> arrayList;
        StringBuilder sb = new StringBuilder();
        ArrayList<String> arrayList2 = new ArrayList<>();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
                sb.append('\n');
                arrayList2.add(readLine);
            }
            bufferedReader.close();
            arrayList = arrayList2;
        } catch (IOException e) {
            arrayList = null;
            e.printStackTrace();
        }
        return arrayList;
    }

    /* renamed from: a */
    public static ArrayList<String> m30a(String str) {
        return m31a(new File(str));
    }

    /* renamed from: b */
    public static String m28b(String str) {
        String str2 = str;
        if (PhoneNumberUtils.isGlobalPhoneNumber(PhoneNumberUtils.stripSeparators(str))) {
            str2 = "\u200e".concat(String.valueOf(str));
        }
        return str2;
    }

    /* renamed from: b */
    public static boolean m29b(Context context) {
        return new File(new File(Environment.getExternalStorageDirectory(), context.getString(2131623974)).getAbsolutePath(), "blacklist.txt").exists();
    }
}
