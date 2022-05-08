package com.getkeepsafe.relinker;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.getkeepsafe.relinker.ReLinker;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/ApkLibraryInstaller.class */
public class ApkLibraryInstaller implements ReLinker.LibraryInstaller {
    private static final int COPY_BUFFER_SIZE = 4096;
    private static final int MAX_TRIES = 5;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry.class */
    public static class ZipFileInZipEntry {
        public ZipEntry zipEntry;
        public ZipFile zipFile;

        public ZipFileInZipEntry(ZipFile zipFile, ZipEntry zipEntry) {
            this.zipFile = zipFile;
            this.zipEntry = zipEntry;
        }
    }

    private void closeSilently(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    private long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
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

    private ZipFileInZipEntry findAPKWithLibrary(Context context, String[] strArr, String str, ReLinkerInstance reLinkerInstance) {
        int i;
        String[] sourceDirectories = sourceDirectories(context);
        int length = sourceDirectories.length;
        ZipFile zipFile = null;
        int i2 = 0;
        while (i2 < length) {
            String str2 = sourceDirectories[i2];
            int i3 = 0;
            while (true) {
                i = 5;
                if (i3 >= 5) {
                    break;
                }
                try {
                    zipFile = new ZipFile(new File(str2), 1);
                    break;
                } catch (IOException e) {
                    i3++;
                }
            }
            if (zipFile != null) {
                for (int i4 = 0; i4 < i; i4++) {
                    int length2 = strArr.length;
                    int i5 = 0;
                    while (i5 < length2) {
                        String str3 = "lib" + File.separatorChar + strArr[i5] + File.separatorChar + str;
                        reLinkerInstance.log("Looking for %s in APK %s...", str3, str2);
                        ZipEntry entry = zipFile.getEntry(str3);
                        if (entry != null) {
                            return new ZipFileInZipEntry(zipFile, entry);
                        }
                        i5++;
                        i = 5;
                    }
                }
                continue;
            }
            i2++;
            zipFile = zipFile;
        }
        return null;
    }

    private String[] sourceDirectories(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (Build.VERSION.SDK_INT < 21 || applicationInfo.splitSourceDirs == null || applicationInfo.splitSourceDirs.length == 0) {
            return new String[]{applicationInfo.sourceDir};
        }
        String[] strArr = new String[applicationInfo.splitSourceDirs.length + 1];
        strArr[0] = applicationInfo.sourceDir;
        System.arraycopy(applicationInfo.splitSourceDirs, 0, strArr, 1, applicationInfo.splitSourceDirs.length);
        return strArr;
    }

    @Override // com.getkeepsafe.relinker.ReLinker.LibraryInstaller
    public void installLibrary(Context context, String[] strArr, String str, File file, ReLinkerInstance reLinkerInstance) {
        ZipFileInZipEntry zipFileInZipEntry;
        Throwable th;
        ZipFileInZipEntry findAPKWithLibrary;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        Closeable closeable;
        Throwable th2;
        long copy;
        try {
            findAPKWithLibrary = findAPKWithLibrary(context, strArr, str, reLinkerInstance);
        } catch (Throwable th3) {
            th = th3;
            zipFileInZipEntry = null;
        }
        try {
            if (findAPKWithLibrary == null) {
                throw new MissingLibraryException(str);
            }
            for (int i = 0; i < 5; i++) {
                reLinkerInstance.log("Found %s! Extracting...", str);
                try {
                    if (file.exists() || file.createNewFile()) {
                        try {
                            inputStream = findAPKWithLibrary.zipFile.getInputStream(findAPKWithLibrary.zipEntry);
                            try {
                                fileOutputStream = new FileOutputStream(file);
                                try {
                                    copy = copy(inputStream, fileOutputStream);
                                    fileOutputStream.getFD().sync();
                                } catch (FileNotFoundException e) {
                                    closeSilently(inputStream);
                                    closeSilently(fileOutputStream);
                                } catch (IOException e2) {
                                    closeSilently(inputStream);
                                    closeSilently(fileOutputStream);
                                } catch (Throwable th4) {
                                    th2 = th4;
                                    closeable = fileOutputStream;
                                    closeSilently(inputStream);
                                    closeSilently(closeable);
                                    throw th2;
                                }
                            } catch (FileNotFoundException e3) {
                                fileOutputStream = null;
                            } catch (IOException e4) {
                                fileOutputStream = null;
                            } catch (Throwable th5) {
                                th2 = th5;
                                closeable = null;
                            }
                        } catch (FileNotFoundException e5) {
                            inputStream = null;
                            fileOutputStream = null;
                        } catch (IOException e6) {
                            inputStream = null;
                            fileOutputStream = null;
                        } catch (Throwable th6) {
                            th2 = th6;
                            inputStream = null;
                            closeable = null;
                        }
                        if (copy != file.length()) {
                            closeSilently(inputStream);
                            closeSilently(fileOutputStream);
                        } else {
                            closeSilently(inputStream);
                            closeSilently(fileOutputStream);
                            file.setReadable(true, false);
                            file.setExecutable(true, false);
                            file.setWritable(true);
                            if (findAPKWithLibrary != null) {
                                try {
                                    if (findAPKWithLibrary.zipFile != null) {
                                        findAPKWithLibrary.zipFile.close();
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
            reLinkerInstance.log("FATAL! Couldn't extract the library from the APK!");
            if (findAPKWithLibrary != null) {
                try {
                    if (findAPKWithLibrary.zipFile != null) {
                        findAPKWithLibrary.zipFile.close();
                    }
                } catch (IOException e9) {
                }
            }
        } catch (Throwable th7) {
            th = th7;
            zipFileInZipEntry = findAPKWithLibrary;
            if (zipFileInZipEntry != null) {
                try {
                    if (zipFileInZipEntry.zipFile != null) {
                        zipFileInZipEntry.zipFile.close();
                    }
                } catch (IOException e10) {
                }
            }
            throw th;
        }
    }
}
