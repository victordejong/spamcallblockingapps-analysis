package p081h.p160h.p179e.p180a.p188o;

import android.text.TextUtils;
import androidx.multidex.MultiDexExtractor;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;
import p081h.p160h.p179e.p180a.p188o.p189g.C6418g;
import p081h.p160h.p179e.p180a.p190p.C6432e;
import p081h.p160h.p179e.p180a.p190p.C6438i;
import p081h.p160h.p179e.p180a.p190p.p191f.C6433a;
/* renamed from: h.h.e.a.o.f */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/o/f.class */
public class C6410f {
    /* renamed from: a */
    public static String m22741a(File file) {
        MessageDigest instance = MessageDigest.getInstance("MD5");
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[8192];
            while (true) {
                try {
                    try {
                        int read = fileInputStream.read(bArr);
                        if (read <= 0) {
                            break;
                        }
                        instance.update(bArr, 0, read);
                    } catch (Throwable th) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        throw th;
                    }
                } catch (IOException e2) {
                    C6432e.m22605a("check_md5_error", e2.getMessage());
                    throw new C6433a("Unable to process file for MD5: " + e2.getMessage());
                }
            }
            String replace = String.format("%32s", new BigInteger(1, instance.digest()).toString(16)).replace(' ', '0');
            try {
                fileInputStream.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            return replace;
        } catch (FileNotFoundException | NoSuchAlgorithmException e4) {
            return null;
        }
    }

    /* renamed from: a */
    public static void m22740a(File file, File file2) {
        try {
            m22738a(file.getAbsolutePath() + "/offline.backup.zip");
            FileOutputStream fileOutputStream = new FileOutputStream(file.getAbsolutePath() + "/offline.backup.zip");
            ZipOutputStream zipOutputStream = new ZipOutputStream(fileOutputStream);
            if (!file2.isDirectory()) {
                m22739a(file, file2, zipOutputStream);
            }
            zipOutputStream.close();
            fileOutputStream.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m22739a(File file, File file2, ZipOutputStream zipOutputStream) throws FileNotFoundException, IOException {
        FileInputStream fileInputStream = new FileInputStream(file2);
        zipOutputStream.putNextEntry(new ZipEntry(file2.getCanonicalPath().substring(file.getCanonicalPath().length() + 1, file2.getCanonicalPath().length())));
        byte[] bArr = new byte[1024];
        while (true) {
            int read = fileInputStream.read(bArr);
            if (read >= 0) {
                zipOutputStream.write(bArr, 0, read);
            } else {
                zipOutputStream.closeEntry();
                fileInputStream.close();
                return;
            }
        }
    }

    /* renamed from: a */
    public static void m22738a(String str) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    /* renamed from: a */
    public static boolean m22737a(String str, File file) {
        String a;
        if (TextUtils.isEmpty(str) || file == null || (a = m22741a(file)) == null) {
            return false;
        }
        C6438i.m22578d("serverMd5 = " + str);
        C6438i.m22578d("fileMd5 = " + a);
        return a.equalsIgnoreCase(str);
    }

    /* renamed from: a */
    public static boolean m22736a(String str, String str2, String str3) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                File file = new File(str);
                File file2 = new File(str2);
                if (file.exists() && file2.exists()) {
                    String str4 = file.getParent() + "/offline.backup.zip";
                    if (m22734c(str4)) {
                        File file3 = new File(str4.replace(MultiDexExtractor.EXTRACTED_SUFFIX, ".tmp"));
                        FileInputStream fileInputStream = new FileInputStream(file3);
                        byte[] bArr = new byte[(int) file3.length()];
                        fileInputStream.read(bArr);
                        fileInputStream.close();
                        file3.delete();
                        FileInputStream fileInputStream2 = new FileInputStream(file2);
                        byte[] bArr2 = new byte[(int) file2.length()];
                        fileInputStream2.read(bArr2);
                        fileInputStream2.close();
                        String str5 = file.getParent() + "/merged.final";
                        m22738a(str5);
                        File file4 = new File(str5);
                        FileOutputStream fileOutputStream = new FileOutputStream(file4);
                        C6418g.m22697a(bArr, bArr2, fileOutputStream);
                        fileOutputStream.close();
                        if (!file4.exists()) {
                            return false;
                        }
                        if (m22737a(str3, file4)) {
                            file.delete();
                            file2.delete();
                            m22740a(file.getParentFile(), file4);
                            file4.renameTo(file);
                            return true;
                        }
                        file4.delete();
                        C6432e.m22605a("PatchError", "MD5 Error");
                        return false;
                    }
                    C6432e.m22605a("PatchError", "Unzip backup file Error");
                    return false;
                }
                C6432e.m22605a("PatchError", "File not exist");
                return false;
            }
            C6432e.m22605a("PatchError", "Input Empty");
            return false;
        } catch (Exception e) {
            C6432e.m22605a("PatchError", e.getMessage());
            return false;
        } catch (OutOfMemoryError e2) {
            C6432e.m22605a("PatchError", "OOM Error");
            return false;
        }
    }

    /* renamed from: b */
    public static boolean m22735b(String str) {
        return new File(str).exists();
    }

    /* renamed from: c */
    public static boolean m22734c(String str) {
        try {
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(str)));
            byte[] bArr = new byte[1024];
            while (zipInputStream.getNextEntry() != null) {
                FileOutputStream fileOutputStream = new FileOutputStream(str.replace(MultiDexExtractor.EXTRACTED_SUFFIX, ".tmp"));
                while (true) {
                    int read = zipInputStream.read(bArr);
                    if (read != -1) {
                        fileOutputStream.write(bArr, 0, read);
                    }
                }
                fileOutputStream.close();
                zipInputStream.closeEntry();
            }
            zipInputStream.close();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            C6432e.m22605a("unzip_error", e.getMessage());
            return false;
        }
    }
}
