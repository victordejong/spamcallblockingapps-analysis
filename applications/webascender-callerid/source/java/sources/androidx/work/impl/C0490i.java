package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC0541m;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.work.impl.i */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/i.class */
public class C0490i {

    /* renamed from: a */
    private static final String f2521a = AbstractC0541m.m4305f("WrkDbPathHelper");

    /* renamed from: b */
    private static final String[] f2522b = {"-journal", "-shm", "-wal"};

    /* renamed from: a */
    public static File m4467a(Context context) {
        return Build.VERSION.SDK_INT < 23 ? m4466b(context) : m4465c(context, "androidx.work.workdb");
    }

    /* renamed from: b */
    public static File m4466b(Context context) {
        return context.getDatabasePath("androidx.work.workdb");
    }

    /* renamed from: c */
    private static File m4465c(Context context, String str) {
        return new File(context.getNoBackupFilesDir(), str);
    }

    /* renamed from: d */
    public static String m4464d() {
        return "androidx.work.workdb";
    }

    /* renamed from: e */
    public static void m4463e(Context context) {
        File m4466b = m4466b(context);
        if (Build.VERSION.SDK_INT < 23 || !m4466b.exists()) {
            return;
        }
        AbstractC0541m.m4308c().m4310a(f2521a, "Migrating WorkDatabase to the no-backup directory", new Throwable[0]);
        Map<File, File> m4462f = m4462f(context);
        for (File file : m4462f.keySet()) {
            File file2 = m4462f.get(file);
            if (file.exists() && file2 != null) {
                if (file2.exists()) {
                    AbstractC0541m.m4308c().m4303h(f2521a, String.format("Over-writing contents of %s", file2), new Throwable[0]);
                }
                AbstractC0541m.m4308c().m4310a(f2521a, file.renameTo(file2) ? String.format("Migrated %s to %s", file, file2) : String.format("Renaming %s to %s failed", file, file2), new Throwable[0]);
            }
        }
    }

    /* renamed from: f */
    public static Map<File, File> m4462f(Context context) {
        File m4466b;
        File m4467a;
        String[] strArr;
        HashMap hashMap = new HashMap();
        if (Build.VERSION.SDK_INT >= 23) {
            hashMap.put(m4466b(context), m4467a(context));
            for (String str : f2522b) {
                hashMap.put(new File(m4466b.getPath() + str), new File(m4467a.getPath() + str));
            }
        }
        return hashMap;
    }
}
