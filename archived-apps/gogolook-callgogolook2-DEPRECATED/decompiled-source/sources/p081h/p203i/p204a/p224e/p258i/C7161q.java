package p081h.p203i.p204a.p224e.p258i;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import androidx.core.content.ContextCompat;
import java.io.File;
import java.io.UnsupportedEncodingException;
/* renamed from: h.i.a.e.i.q */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/i/q.class */
public final class C7161q {
    /* renamed from: a */
    public static void m21018a(Context context) {
        File[] listFiles;
        for (File file : m21016b(context).listFiles()) {
            if (file.getName().startsWith("com.google.InstanceId")) {
                file.delete();
            }
        }
    }

    /* renamed from: a */
    public static void m21017a(Context context, String str) {
        File b = m21015b(context, str);
        if (b.exists()) {
            b.delete();
        }
    }

    /* renamed from: b */
    public static File m21016b(Context context) {
        File noBackupFilesDir = ContextCompat.getNoBackupFilesDir(context);
        return (noBackupFilesDir == null || !noBackupFilesDir.isDirectory()) ? context.getFilesDir() : noBackupFilesDir;
    }

    /* renamed from: b */
    public static File m21015b(Context context, String str) {
        String sb;
        if (TextUtils.isEmpty(str)) {
            sb = "com.google.InstanceId.properties";
        } else {
            try {
                String encodeToString = Base64.encodeToString(str.getBytes("UTF-8"), 11);
                StringBuilder sb2 = new StringBuilder(String.valueOf(encodeToString).length() + 33);
                sb2.append("com.google.InstanceId_");
                sb2.append(encodeToString);
                sb2.append(".properties");
                sb = sb2.toString();
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
        return new File(m21016b(context), sb);
    }
}
