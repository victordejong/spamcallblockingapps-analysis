package com.appsflyer.internal;

import android.content.Context;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.appsflyer.internal.aa */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/aa.class */
public final class C1818aa {

    /* renamed from: ɩ */
    public static C1818aa f1770 = new C1818aa();

    /* renamed from: ı */
    public static C1847j m36195(File file) {
        FileReader fileReader;
        Throwable th;
        try {
            fileReader = new FileReader(file);
        } catch (Exception e) {
            fileReader = null;
        } catch (Throwable th2) {
            th = th2;
            fileReader = null;
        }
        try {
            char[] cArr = new char[(int) file.length()];
            fileReader.read(cArr);
            C1847j jVar = new C1847j(cArr);
            jVar.f1873 = file.getName();
            try {
                fileReader.close();
            } catch (IOException e2) {
            }
            return jVar;
        } catch (Exception e3) {
            if (fileReader == null) {
                return null;
            }
            try {
                fileReader.close();
                return null;
            } catch (IOException e4) {
                return null;
            }
        } catch (Throwable th3) {
            th = th3;
            if (fileReader != null) {
                try {
                    fileReader.close();
                } catch (IOException e5) {
                }
            }
            throw th;
        }
    }

    /* renamed from: ǃ */
    public static C1818aa m36194() {
        return f1770;
    }

    /* renamed from: ǃ */
    public static List<C1847j> m36193(Context context) {
        File[] listFiles;
        ArrayList arrayList = new ArrayList();
        try {
            File file = new File(context.getFilesDir(), "AFRequestCache");
            if (!file.exists()) {
                file.mkdir();
            } else {
                for (File file2 : file.listFiles()) {
                    StringBuilder sb = new StringBuilder("Found cached request");
                    sb.append(file2.getName());
                    sb.toString();
                    arrayList.add(m36195(file2));
                }
            }
        } catch (Exception e) {
        }
        return arrayList;
    }

    /* renamed from: ǃ */
    public static void m36192(String str, Context context) {
        File file = new File(new File(context.getFilesDir(), "AFRequestCache"), str);
        StringBuilder sb = new StringBuilder("Deleting ");
        sb.append(str);
        sb.append(" from cache");
        sb.toString();
        if (file.exists()) {
            try {
                file.delete();
            } catch (Exception e) {
                StringBuilder sb2 = new StringBuilder("Could not delete ");
                sb2.append(str);
                sb2.append(" from cache");
                sb2.toString();
            }
        }
    }

    /* renamed from: ι */
    public static File m36191(Context context) {
        return new File(context.getFilesDir(), "AFRequestCache");
    }
}
