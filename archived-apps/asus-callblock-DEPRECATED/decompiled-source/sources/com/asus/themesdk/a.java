package com.asus.themesdk;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import com.asus.updatesdk.BuildConfig;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/asus/themesdk/a.class */
public final class a {
    public static AssetManager a(String str) {
        AssetManager assetManager;
        try {
            AssetManager assetManager2 = (AssetManager) AssetManager.class.newInstance();
            assetManager2.getClass().getMethod("addAssetPath", String.class).invoke(assetManager2, str);
            assetManager = assetManager2;
        } catch (Exception e) {
            assetManager = null;
        }
        return assetManager;
    }

    public static Resources a(PackageManager packageManager, String str) {
        Resources resources;
        String absolutePath;
        PackageInfo packageArchiveInfo;
        File file = new File(str);
        if (file.exists() && (packageArchiveInfo = packageManager.getPackageArchiveInfo((absolutePath = file.getAbsolutePath()), 0)) != null) {
            ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
            applicationInfo.sourceDir = absolutePath;
            applicationInfo.publicSourceDir = absolutePath;
            try {
                resources = packageManager.getResourcesForApplication(applicationInfo);
            } catch (Exception e) {
            }
            return resources;
        }
        resources = null;
        return resources;
    }

    public static String a(AssetManager assetManager, String str, String str2) {
        String str3 = BuildConfig.FLAVOR;
        if (assetManager != null) {
            InputStream inputStream = null;
            InputStream inputStream2 = null;
            try {
                InputStream open = assetManager.open(str);
                String str4 = BuildConfig.FLAVOR;
                if (open != null) {
                    inputStream2 = open;
                    inputStream = open;
                    str4 = b.a(open, str2);
                }
                str3 = str4;
                if (open != null) {
                    try {
                        open.close();
                        str3 = str4;
                    } catch (IOException e) {
                        str3 = str4;
                    }
                }
            } catch (IOException e2) {
                str3 = BuildConfig.FLAVOR;
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                        str3 = BuildConfig.FLAVOR;
                    } catch (IOException e3) {
                        str3 = BuildConfig.FLAVOR;
                    }
                }
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e4) {
                    }
                }
                throw th;
            }
            assetManager.close();
        }
        return str3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0047, code lost:
        r4 = com.asus.themesdk.b.a(r0, r6);
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.os.ParcelFileDescriptor r4, java.lang.String r5, java.lang.String r6) {
        /*
            java.lang.String r0 = ""
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0010
            r0 = r4
            java.io.FileDescriptor r0 = r0.getFileDescriptor()
            r8 = r0
        L_0x0010:
            r0 = r7
            r4 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0058
            java.io.FileInputStream r0 = new java.io.FileInputStream
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            r9 = r0
            java.util.zip.ZipInputStream r0 = new java.util.zip.ZipInputStream
            r1 = r0
            r2 = r9
            r1.<init>(r2)
            r10 = r0
            r0 = r10
            java.util.zip.ZipEntry r0 = r0.getNextEntry()     // Catch: IOException -> 0x0064, all -> 0x0074
            r8 = r0
        L_0x0034:
            r0 = r7
            r4 = r0
            r0 = r8
            if (r0 == 0) goto L_0x004e
            r0 = r8
            java.lang.String r0 = r0.getName()     // Catch: IOException -> 0x0064, all -> 0x0074
            r1 = r5
            boolean r0 = r0.contains(r1)     // Catch: IOException -> 0x0064, all -> 0x0074
            if (r0 == 0) goto L_0x005a
            r0 = r10
            r1 = r6
            java.lang.String r0 = com.asus.themesdk.b.a(r0, r1)     // Catch: IOException -> 0x0064, all -> 0x0074
            r4 = r0
        L_0x004e:
            r0 = r9
            com.asus.themesdk.b.a(r0)
            r0 = r10
            com.asus.themesdk.b.a(r0)
        L_0x0058:
            r0 = r4
            return r0
        L_0x005a:
            r0 = r10
            java.util.zip.ZipEntry r0 = r0.getNextEntry()     // Catch: IOException -> 0x0064, all -> 0x0074
            r8 = r0
            goto L_0x0034
        L_0x0064:
            r4 = move-exception
            r0 = r9
            com.asus.themesdk.b.a(r0)
            r0 = r10
            com.asus.themesdk.b.a(r0)
            r0 = r7
            r4 = r0
            goto L_0x0058
        L_0x0074:
            r4 = move-exception
            r0 = r9
            com.asus.themesdk.b.a(r0)
            r0 = r10
            com.asus.themesdk.b.a(r0)
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.themesdk.a.a(android.os.ParcelFileDescriptor, java.lang.String, java.lang.String):java.lang.String");
    }
}
