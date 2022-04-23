package com.google.android.gms.gass.internal;

import android.text.TextUtils;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.internal.ads.zzdqk;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gass/internal/zzj.class */
public final class zzj {
    public static File zza(File file, boolean z) {
        if (z && file.exists() && !file.isDirectory()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static File zza(String str, File file) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return zza(new File(file, str), false);
    }

    public static File zza(String str, String str2, File file) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return new File(zza(str, file), str2);
    }

    public static boolean zza(File file, byte[] bArr) {
        Throwable th;
        FileOutputStream fileOutputStream = null;
        FileOutputStream fileOutputStream2 = null;
        try {
            FileOutputStream fileOutputStream3 = new FileOutputStream(file);
            try {
                fileOutputStream3.write(bArr);
                fileOutputStream3.flush();
                IOUtils.closeQuietly(fileOutputStream3);
                return true;
            } catch (IOException e) {
                fileOutputStream = fileOutputStream3;
                IOUtils.closeQuietly(fileOutputStream);
                return false;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream3;
                IOUtils.closeQuietly(fileOutputStream2);
                throw th;
            }
        } catch (IOException e2) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static boolean zzd(File file) {
        if (!file.exists()) {
            return true;
        }
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                zzd(file2);
            }
        }
        return file.delete();
    }

    public static byte[] zze(File file) {
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
            byte[] byteArray = zzdqk.zzf(fileInputStream).toByteArray();
            IOUtils.closeQuietly(fileInputStream);
            return byteArray;
        } catch (IOException e2) {
            IOUtils.closeQuietly(fileInputStream);
            return null;
        } catch (Throwable th3) {
            th = th3;
            IOUtils.closeQuietly(fileInputStream);
            throw th;
        }
    }
}
