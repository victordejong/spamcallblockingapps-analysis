package com.getkeepsafe.relinker;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.getkeepsafe.relinker.ReLinker;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/ApkLibraryInstaller.class */
public class ApkLibraryInstaller implements ReLinker.LibraryInstaller {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry.class */
    public static class ZipFileInZipEntry {

        /* renamed from: a */
        public ZipFile f6480a;

        /* renamed from: b */
        public ZipEntry f6481b;

        public ZipFileInZipEntry(ZipFile zipFile, ZipEntry zipEntry) {
            this.f6480a = zipFile;
            this.f6481b = zipEntry;
        }
    }

    /* renamed from: b */
    private void m15598b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: c */
    private long m15597c(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[CodedOutputStream.DEFAULT_BUFFER_SIZE];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                outputStream.flush();
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += read;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00fc -> B:26:0x00f1). Please submit an issue!!! */
    /* renamed from: d */
    private ZipFileInZipEntry m15596d(Context context, String[] strArr, String str, ReLinkerInstance reLinkerInstance) {
        String[] f = m15594f(context);
        int length = f.length;
        ZipFile zipFile = null;
        int i = 0;
        while (true) {
            char c = 0;
            if (i >= length) {
                return null;
            }
            String str2 = f[i];
            for (int i2 = 0; i2 < 5; i2++) {
                try {
                    zipFile = new ZipFile(new File(str2), 1);
                    break;
                } catch (IOException e) {
                }
            }
            if (zipFile != null) {
                for (int i3 = 0; i3 < 5; i3++) {
                    int length2 = strArr.length;
                    int i4 = 0;
                    while (i4 < length2) {
                        String str3 = "lib" + File.separatorChar + strArr[i4] + File.separatorChar + str;
                        Object[] objArr = new Object[2];
                        objArr[c] = str3;
                        objArr[1] = str2;
                        reLinkerInstance.m15580i("Looking for %s in APK %s...", objArr);
                        ZipEntry entry = zipFile.getEntry(str3);
                        if (entry != null) {
                            return new ZipFileInZipEntry(zipFile, entry);
                        }
                        i4++;
                        c = 0;
                    }
                }
                try {
                    zipFile.close();
                } catch (IOException e2) {
                }
            }
            i++;
            zipFile = zipFile;
        }
    }

    /* renamed from: e */
    private String[] m15595e(Context context, String str) {
        Pattern compile = Pattern.compile("lib" + File.separatorChar + "([^\\" + File.separatorChar + "]*)" + File.separatorChar + str);
        HashSet hashSet = new HashSet();
        for (String str2 : m15594f(context)) {
            try {
                Enumeration<? extends ZipEntry> entries = new ZipFile(new File(str2), 1).entries();
                while (entries.hasMoreElements()) {
                    Matcher matcher = compile.matcher(((ZipEntry) entries.nextElement()).getName());
                    if (matcher.matches()) {
                        hashSet.add(matcher.group(1));
                    }
                }
            } catch (IOException e) {
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    /* renamed from: f */
    private String[] m15594f(Context context) {
        String[] strArr;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (Build.VERSION.SDK_INT < 21 || (strArr = applicationInfo.splitSourceDirs) == null || strArr.length == 0) {
            return new String[]{applicationInfo.sourceDir};
        }
        String[] strArr2 = new String[strArr.length + 1];
        strArr2[0] = applicationInfo.sourceDir;
        System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
        return strArr2;
    }

    @Override // com.getkeepsafe.relinker.ReLinker.LibraryInstaller
    /* renamed from: a */
    public void mo15591a(Context context, String[] strArr, String str, File file, ReLinkerInstance reLinkerInstance) {
        Throwable th;
        String[] strArr2;
        FileOutputStream fileOutputStream;
        Closeable closeable;
        Throwable th2;
        long c;
        ZipFileInZipEntry zipFileInZipEntry = null;
        InputStream inputStream = null;
        try {
            ZipFileInZipEntry d = m15596d(context, strArr, str, reLinkerInstance);
            try {
                if (d != null) {
                    for (int i = 0; i < 5; i++) {
                        reLinkerInstance.m15580i("Found %s! Extracting...", str);
                        try {
                            if (file.exists() || file.createNewFile()) {
                                try {
                                    inputStream = d.f6480a.getInputStream(d.f6481b);
                                    try {
                                        fileOutputStream = new FileOutputStream(file);
                                    } catch (FileNotFoundException e) {
                                        fileOutputStream = null;
                                    } catch (IOException e2) {
                                        fileOutputStream = null;
                                    } catch (Throwable th3) {
                                        th2 = th3;
                                        closeable = null;
                                    }
                                } catch (FileNotFoundException e3) {
                                    inputStream = null;
                                    fileOutputStream = null;
                                } catch (IOException e4) {
                                    inputStream = null;
                                    fileOutputStream = null;
                                } catch (Throwable th4) {
                                    th2 = th4;
                                    closeable = null;
                                }
                                try {
                                    c = m15597c(inputStream, fileOutputStream);
                                    fileOutputStream.getFD().sync();
                                } catch (FileNotFoundException e5) {
                                    m15598b(inputStream);
                                    m15598b(fileOutputStream);
                                } catch (IOException e6) {
                                    m15598b(inputStream);
                                    m15598b(fileOutputStream);
                                } catch (Throwable th5) {
                                    th2 = th5;
                                    closeable = fileOutputStream;
                                    m15598b(inputStream);
                                    m15598b(closeable);
                                    throw th2;
                                }
                                if (c != file.length()) {
                                    m15598b(inputStream);
                                    m15598b(fileOutputStream);
                                } else {
                                    m15598b(inputStream);
                                    m15598b(fileOutputStream);
                                    file.setReadable(true, false);
                                    file.setExecutable(true, false);
                                    file.setWritable(true);
                                    if (d != null) {
                                        try {
                                            if (d.f6480a != null) {
                                                d.f6480a.close();
                                                return;
                                            }
                                            return;
                                        } catch (IOException e7) {
                                            return;
                                        }
                                    } else {
                                        return;
                                    }
                                }
                            }
                        } catch (IOException e8) {
                        }
                    }
                    reLinkerInstance.m15581h("FATAL! Couldn't extract the library from the APK!");
                    if (d != null) {
                        try {
                            if (d.f6480a != null) {
                                d.f6480a.close();
                            }
                        } catch (IOException e9) {
                        }
                    }
                } else {
                    try {
                        strArr2 = m15595e(context, str);
                    } catch (Exception e10) {
                        strArr2 = new String[]{e10.toString()};
                    }
                    throw new MissingLibraryException(str, strArr, strArr2);
                }
            } catch (Throwable th6) {
                th = th6;
                zipFileInZipEntry = d;
                if (zipFileInZipEntry != null) {
                    try {
                        if (zipFileInZipEntry.f6480a != null) {
                            zipFileInZipEntry.f6480a.close();
                        }
                    } catch (IOException e11) {
                    }
                }
                throw th;
            }
        } catch (Throwable th7) {
            th = th7;
        }
    }
}
