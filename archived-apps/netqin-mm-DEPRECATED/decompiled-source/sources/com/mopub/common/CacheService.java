package com.mopub.common;

import android.content.Context;
import android.os.AsyncTask;
import com.mopub.common.DiskLruCache;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Streams;
import com.mopub.common.util.Utils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/CacheService.class */
public class CacheService {

    /* renamed from: a */
    public static DiskLruCache f33653a;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/CacheService$DiskLruCacheGetListener.class */
    public interface DiskLruCacheGetListener {
        void onComplete(String str, byte[] bArr);
    }

    /* renamed from: com.mopub.common.CacheService$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/CacheService$a.class */
    public static class AsyncTaskC8688a extends AsyncTask<Void, Void, byte[]> {

        /* renamed from: a */
        public final DiskLruCacheGetListener f33654a;

        /* renamed from: b */
        public final String f33655b;

        public AsyncTaskC8688a(String str, DiskLruCacheGetListener diskLruCacheGetListener) {
            this.f33654a = diskLruCacheGetListener;
            this.f33655b = str;
        }

        /* renamed from: a */
        public void onPostExecute(byte[] bArr) {
            if (isCancelled()) {
                onCancelled();
                return;
            }
            DiskLruCacheGetListener diskLruCacheGetListener = this.f33654a;
            if (diskLruCacheGetListener != null) {
                diskLruCacheGetListener.onComplete(this.f33655b, bArr);
            }
        }

        /* renamed from: a */
        public byte[] doInBackground(Void... voidArr) {
            return CacheService.getFromDiskCache(this.f33655b);
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            DiskLruCacheGetListener diskLruCacheGetListener = this.f33654a;
            if (diskLruCacheGetListener != null) {
                diskLruCacheGetListener.onComplete(this.f33655b, null);
            }
        }
    }

    /* renamed from: com.mopub.common.CacheService$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/CacheService$b.class */
    public static class AsyncTaskC8689b extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        public final String f33656a;

        /* renamed from: b */
        public final byte[] f33657b;

        public AsyncTaskC8689b(String str, byte[] bArr) {
            this.f33656a = str;
            this.f33657b = bArr;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            CacheService.putToDiskCache(this.f33656a, this.f33657b);
            return null;
        }
    }

    @Deprecated
    @VisibleForTesting
    public static void clearAndNullCaches() {
        DiskLruCache diskLruCache = f33653a;
        if (diskLruCache != null) {
            try {
                diskLruCache.delete();
                f33653a = null;
            } catch (IOException e) {
                f33653a = null;
            }
        }
    }

    public static boolean containsKeyDiskCache(String str) {
        DiskLruCache diskLruCache = f33653a;
        boolean z = false;
        if (diskLruCache == null) {
            return false;
        }
        try {
            if (diskLruCache.get(createValidDiskCacheKey(str)) != null) {
                z = true;
            }
        } catch (Exception e) {
        }
        return z;
    }

    public static String createValidDiskCacheKey(String str) {
        return Utils.sha1(str);
    }

    public static File getDiskCacheDirectory(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String path = cacheDir.getPath();
        return new File(path + File.separator + "mopub-cache");
    }

    @Deprecated
    @VisibleForTesting
    public static DiskLruCache getDiskLruCache() {
        return f33653a;
    }

    public static String getFilePathDiskCache(String str) {
        if (f33653a == null) {
            return null;
        }
        return f33653a.getDirectory() + File.separator + createValidDiskCacheKey(str) + ".0";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [com.mopub.common.DiskLruCache$Snapshot] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    public static byte[] getFromDiskCache(String str) {
        Throwable th;
        Exception e;
        byte[] bArr;
        DiskLruCache.Snapshot snapshot;
        DiskLruCache diskLruCache = f33653a;
        byte[] bArr2 = null;
        DiskLruCache.Snapshot snapshot2 = 0;
        DiskLruCache.Snapshot snapshot3 = null;
        byte[] bArr3 = null;
        try {
            if (diskLruCache == null) {
                return null;
            }
            try {
                snapshot = diskLruCache.get(createValidDiskCacheKey(str));
            } catch (Exception e2) {
                e = e2;
                bArr = null;
            }
            if (snapshot != null) {
                try {
                    InputStream inputStream = snapshot.getInputStream(0);
                    if (inputStream != null) {
                        byte[] bArr4 = new byte[(int) snapshot.getLength(0)];
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                        Streams.readStream(bufferedInputStream, bArr4);
                        bArr2 = bArr4;
                        Streams.closeStream(bufferedInputStream);
                        bArr3 = bArr4;
                    }
                    snapshot2 = bArr3;
                    if (snapshot != null) {
                        snapshot.close();
                        snapshot2 = bArr3;
                    }
                } catch (Exception e3) {
                    e = e3;
                    snapshot3 = snapshot;
                    bArr = bArr2;
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to get from DiskLruCache", e);
                    if (snapshot3 != null) {
                        snapshot3.close();
                    }
                    snapshot2 = bArr;
                    return snapshot2;
                } catch (Throwable th2) {
                    th = th2;
                    snapshot2 = snapshot;
                    if (snapshot2 != 0) {
                        snapshot2.close();
                    }
                    throw th;
                }
                return snapshot2;
            } else if (snapshot == null) {
                return null;
            } else {
                snapshot.close();
                return null;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static void getFromDiskCacheAsync(String str, DiskLruCacheGetListener diskLruCacheGetListener) {
        new AsyncTaskC8688a(str, diskLruCacheGetListener).execute(new Void[0]);
    }

    public static void initialize(Context context) {
        initializeDiskCache(context);
    }

    public static boolean initializeDiskCache(Context context) {
        if (context == null) {
            return false;
        }
        if (f33653a != null) {
            return true;
        }
        File diskCacheDirectory = getDiskCacheDirectory(context);
        if (diskCacheDirectory == null) {
            return false;
        }
        try {
            f33653a = DiskLruCache.open(diskCacheDirectory, 1, 1, DeviceUtils.diskCacheSizeBytes(diskCacheDirectory));
            return true;
        } catch (IOException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to create DiskLruCache", e);
            return false;
        }
    }

    public static boolean putToDiskCache(String str, InputStream inputStream) {
        DiskLruCache diskLruCache = f33653a;
        if (diskLruCache == null) {
            return false;
        }
        DiskLruCache.Editor editor = null;
        try {
            DiskLruCache.Editor edit = diskLruCache.edit(createValidDiskCacheKey(str));
            if (edit == null) {
                return false;
            }
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(edit.newOutputStream(0));
            Streams.copyContent(inputStream, bufferedOutputStream);
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
            f33653a.flush();
            editor = edit;
            edit.commit();
            return true;
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to put to DiskLruCache", e);
            if (editor == null) {
                return false;
            }
            try {
                editor.abort();
                return false;
            } catch (IOException e2) {
                return false;
            }
        }
    }

    public static boolean putToDiskCache(String str, byte[] bArr) {
        return putToDiskCache(str, new ByteArrayInputStream(bArr));
    }

    public static void putToDiskCacheAsync(String str, byte[] bArr) {
        new AsyncTaskC8689b(str, bArr).execute(new Void[0]);
    }
}
