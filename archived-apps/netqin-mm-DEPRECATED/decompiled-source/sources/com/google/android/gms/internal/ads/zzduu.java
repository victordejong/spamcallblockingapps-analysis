package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.IOUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzduu.class */
public final class zzduu {
    /* renamed from: a */
    public static File m13140a(File file, boolean z) {
        if (z && file.exists() && !file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* renamed from: a */
    public static File m13138a(String str, File file) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file2 = new File(file, str);
        m13140a(file2, false);
        return file2;
    }

    /* renamed from: a */
    public static File m13137a(String str, String str2, File file) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return new File(m13138a(str, file), str2);
    }

    /* renamed from: a */
    public static boolean m13141a(File file) {
        boolean z;
        if (!file.exists()) {
            return true;
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            int length = listFiles.length;
            int i = 0;
            boolean z2 = true;
            while (true) {
                z = z2;
                if (i >= length) {
                    break;
                }
                File file2 = listFiles[i];
                z2 = file2 != null && m13141a(file2) && z2;
                i++;
            }
        } else {
            z = true;
        }
        return file.delete() && z;
    }

    /* renamed from: a */
    public static boolean m13139a(File file, byte[] bArr) {
        Throwable th;
        FileOutputStream fileOutputStream = null;
        FileOutputStream fileOutputStream2 = null;
        try {
            FileOutputStream fileOutputStream3 = new FileOutputStream(file);
            try {
                fileOutputStream3.write(bArr);
                fileOutputStream3.flush();
                IOUtils.m17075a(fileOutputStream3);
                return true;
            } catch (IOException e) {
                fileOutputStream = fileOutputStream3;
                IOUtils.m17075a(fileOutputStream);
                return false;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream3;
                IOUtils.m17075a(fileOutputStream2);
                throw th;
            }
        } catch (IOException e2) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: b */
    public static byte[] m13136b(File file) {
        Throwable th;
        FileInputStream fileInputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
        } catch (IOException e) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            byte[] byteArray = zzeip.zzg(fileInputStream).toByteArray();
            IOUtils.m17075a(fileInputStream);
            return byteArray;
        } catch (IOException e2) {
            IOUtils.m17075a(fileInputStream);
            return null;
        } catch (Throwable th3) {
            th = th3;
            IOUtils.m17075a(fileInputStream);
            throw th;
        }
    }
}
