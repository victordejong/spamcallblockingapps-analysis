package com.appsflyer.internal;

import android.content.Context;
import com.appsflyer.AFLogger;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.appsflyer.internal.z */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/z.class */
public final class C0697z {

    /* renamed from: ǃ */
    private static C0697z f3098 = new C0697z();

    private C0697z() {
    }

    /* renamed from: ı */
    public static C0697z m4010() {
        return f3098;
    }

    /* renamed from: ı */
    public static void m4009(String str, Context context) {
        File file = new File(new File(context.getFilesDir(), "AFRequestCache"), str);
        StringBuilder sb = new StringBuilder("Deleting ");
        sb.append(str);
        sb.append(" from cache");
        AFLogger.afInfoLog(sb.toString());
        if (file.exists()) {
            try {
                file.delete();
            } catch (Exception e) {
                StringBuilder sb2 = new StringBuilder("Could not delete ");
                sb2.append(str);
                sb2.append(" from cache");
                AFLogger.afErrorLog(sb2.toString(), e);
            }
        }
    }

    /* renamed from: ǃ */
    public static List<C0670f> m4008(Context context) {
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
                    AFLogger.afInfoLog(sb.toString());
                    arrayList.add(m4006(file2));
                }
            }
        } catch (Exception e) {
            AFLogger.afErrorLog("Could not cache request", e);
        }
        return arrayList;
    }

    /* renamed from: Ι */
    public static C0670f m4006(File file) {
        FileReader fileReader;
        Throwable th;
        try {
            fileReader = new FileReader(file);
            try {
                char[] cArr = new char[(int) file.length()];
                fileReader.read(cArr);
                C0670f c0670f = new C0670f(cArr);
                c0670f.f3039 = file.getName();
                try {
                    fileReader.close();
                } catch (IOException e) {
                    AFLogger.afErrorLog(e);
                }
                return c0670f;
            } catch (Exception e2) {
                if (fileReader == null) {
                    return null;
                }
                try {
                    fileReader.close();
                    return null;
                } catch (IOException e3) {
                    AFLogger.afErrorLog(e3);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (IOException e4) {
                        AFLogger.afErrorLog(e4);
                    }
                }
                throw th;
            }
        } catch (Exception e5) {
            fileReader = null;
        } catch (Throwable th3) {
            th = th3;
            fileReader = null;
        }
    }

    /* renamed from: Ι */
    public static File m4007(Context context) {
        return new File(context.getFilesDir(), "AFRequestCache");
    }
}
