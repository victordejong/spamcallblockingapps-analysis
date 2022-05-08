package com.asus.updatesdk.cache;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.support.v4.app.Fragment;
import android.support.v4.app.m;
import android.support.v4.b.f;
import android.util.Log;
import com.asus.updatesdk.cache.DiskLruCache;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/cache/ImageCache.class */
public class ImageCache {

    /* renamed from: a  reason: collision with root package name */
    private static final Bitmap.CompressFormat f3162a = Bitmap.CompressFormat.PNG;

    /* renamed from: b  reason: collision with root package name */
    private DiskLruCache f3163b;
    private f<String, BitmapDrawable> c;
    private ImageCacheParams d;
    private final Object e = new Object();
    private boolean f = true;
    private Set<SoftReference<Bitmap>> g;

    /* loaded from: classes-dex2jar.jar:com/asus/updatesdk/cache/ImageCache$ImageCacheParams.class */
    public static class ImageCacheParams {
        public File diskCacheDir;
        public int memCacheSize = 5120;
        public int diskCacheSize = 10485760;
        public Bitmap.CompressFormat compressFormat = ImageCache.f3162a;
        public int compressQuality = 70;
        public boolean memoryCacheEnabled = true;
        public boolean diskCacheEnabled = true;
        public boolean initDiskCacheOnCreate = false;

        public ImageCacheParams(Context context, String str) {
            this.diskCacheDir = ImageCache.getDiskCacheDir(context, str);
        }

        public void setMemCacheSizePercent(float f) {
            if (f < 0.01f || f > 0.8f) {
                throw new IllegalArgumentException("setMemCacheSizePercent - percent must be between 0.01 and 0.8 (inclusive)");
            }
            this.memCacheSize = Math.round((((float) Runtime.getRuntime().maxMemory()) * f) / 1024.0f);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/updatesdk/cache/ImageCache$RetainFragment.class */
    public static class RetainFragment extends Fragment {

        /* renamed from: a  reason: collision with root package name */
        private Object f3165a;

        public Object getObject() {
            return this.f3165a;
        }

        @Override // android.support.v4.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            setRetainInstance(true);
        }

        public void setObject(Object obj) {
            this.f3165a = obj;
        }
    }

    private ImageCache(ImageCacheParams imageCacheParams) {
        this.d = imageCacheParams;
        if (this.d.memoryCacheEnabled) {
            if (CacheUtils.hasHoneycomb()) {
                this.g = Collections.synchronizedSet(new HashSet());
            }
            this.c = new f<String, BitmapDrawable>(this.d.memCacheSize) { // from class: com.asus.updatesdk.cache.ImageCache.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.support.v4.b.f
                public final /* synthetic */ void entryRemoved(boolean z, String str, BitmapDrawable bitmapDrawable, BitmapDrawable bitmapDrawable2) {
                    BitmapDrawable bitmapDrawable3 = bitmapDrawable;
                    if (RecyclingBitmapDrawable.class.isInstance(bitmapDrawable3)) {
                        ((RecyclingBitmapDrawable) bitmapDrawable3).setIsCached(false);
                    } else if (CacheUtils.hasHoneycomb()) {
                        ImageCache.this.g.add(new SoftReference(bitmapDrawable3.getBitmap()));
                    }
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.support.v4.b.f
                public final /* synthetic */ int sizeOf$2838e5a0(BitmapDrawable bitmapDrawable) {
                    int a2 = ImageCache.a(bitmapDrawable) / 1024;
                    int i = a2;
                    if (a2 == 0) {
                        i = 1;
                    }
                    return i;
                }
            };
        }
        if (imageCacheParams.initDiskCacheOnCreate) {
            initDiskCache();
        }
    }

    static /* synthetic */ int a(BitmapDrawable bitmapDrawable) {
        int height;
        Bitmap bitmap = bitmapDrawable.getBitmap();
        if (CacheUtils.hasKitKat()) {
            height = bitmap.getAllocationByteCount();
        } else if (CacheUtils.hasHoneycombMR1()) {
            height = bitmap.getByteCount();
        } else {
            height = bitmap.getHeight() * bitmap.getRowBytes();
        }
        return height;
    }

    public static File getDiskCacheDir(Context context, String str) {
        String str2 = null;
        if (context.getPackageManager().checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", context.getPackageName()) == 0) {
            if ("mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable()) {
                str2 = new File(Environment.getExternalStorageDirectory().getPath() + "/Android/data/com.asus.asusupdatesdk/cache/").getPath();
                Log.d("ImageCache", "EXTERNAL_STORAGE");
            }
        } else if (context.getCacheDir() != null) {
            str2 = context.getCacheDir().getPath();
            Log.d("ImageCache", "INTERNAL_STORAGE");
        }
        return new File(str2 + File.separator + str);
    }

    public static ImageCache getInstance(m mVar, ImageCacheParams imageCacheParams) {
        RetainFragment retainFragment;
        RetainFragment retainFragment2 = (RetainFragment) mVar.a("ImageCache");
        if (retainFragment2 == null) {
            RetainFragment retainFragment3 = new RetainFragment();
            mVar.a().a(retainFragment3, "ImageCache").b();
            retainFragment = retainFragment3;
        } else {
            retainFragment = retainFragment2;
        }
        ImageCache imageCache = (ImageCache) retainFragment.getObject();
        ImageCache imageCache2 = imageCache;
        if (imageCache == null) {
            imageCache2 = new ImageCache(imageCacheParams);
            retainFragment.setObject(imageCache2);
        }
        return imageCache2;
    }

    @TargetApi(9)
    public static long getUsableSpace(File file) {
        long availableBlocksLong;
        if (CacheUtils.hasGingerbread()) {
            availableBlocksLong = file.getUsableSpace();
        } else {
            StatFs statFs = new StatFs(file.getPath());
            availableBlocksLong = statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
        }
        return availableBlocksLong;
    }

    public static String hashKeyForDisk(String str) {
        String valueOf;
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                String hexString = Integer.toHexString(b2 & 255);
                if (hexString.length() == 1) {
                    sb.append('0');
                }
                sb.append(hexString);
            }
            valueOf = sb.toString();
        } catch (NoSuchAlgorithmException e) {
            valueOf = String.valueOf(str.hashCode());
        }
        return valueOf;
    }

    @TargetApi(9)
    public static boolean isExternalStorageRemovable() {
        return !CacheUtils.hasGingerbread() || Environment.isExternalStorageRemovable();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Bitmap a(BitmapFactory.Options options) {
        Bitmap bitmap;
        int i;
        boolean z;
        if (this.g != null && !this.g.isEmpty()) {
            synchronized (this.g) {
                Iterator<SoftReference<Bitmap>> it = this.g.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        bitmap = null;
                        break;
                    }
                    Bitmap bitmap2 = it.next().get();
                    if (bitmap2 == null || !bitmap2.isMutable()) {
                        it.remove();
                    } else {
                        if (!CacheUtils.hasKitKat()) {
                            z = bitmap2.getWidth() == options.outWidth && bitmap2.getHeight() == options.outHeight && options.inSampleSize == 1;
                        } else {
                            int i2 = options.outWidth / options.inSampleSize;
                            int i3 = options.outHeight / options.inSampleSize;
                            Bitmap.Config config = bitmap2.getConfig();
                            if (config == Bitmap.Config.ARGB_8888) {
                                i = 4;
                            } else if (config == Bitmap.Config.RGB_565) {
                                i = 2;
                            } else if (config == Bitmap.Config.ARGB_4444) {
                                i = 2;
                            } else {
                                Bitmap.Config config2 = Bitmap.Config.ALPHA_8;
                                i = 1;
                            }
                            z = i * (i3 * i2) <= bitmap2.getAllocationByteCount();
                        }
                        if (z) {
                            it.remove();
                            bitmap = bitmap2;
                            break;
                        }
                    }
                }
            }
        } else {
            bitmap = null;
        }
        return bitmap;
    }

    public void addBitmapToCache(String str, BitmapDrawable bitmapDrawable) {
        if (str != null && bitmapDrawable != null) {
            if (this.c != null) {
                if (RecyclingBitmapDrawable.class.isInstance(bitmapDrawable)) {
                    ((RecyclingBitmapDrawable) bitmapDrawable).setIsCached(true);
                }
                this.c.put(str, bitmapDrawable);
            }
            synchronized (this.e) {
                if (this.f3163b != null) {
                    String hashKeyForDisk = hashKeyForDisk(str);
                    OutputStream outputStream = null;
                    OutputStream outputStream2 = null;
                    try {
                        DiskLruCache.Snapshot snapshot = this.f3163b.get(hashKeyForDisk);
                        if (snapshot == null) {
                            DiskLruCache.Editor edit = this.f3163b.edit(hashKeyForDisk);
                            if (edit != null) {
                                outputStream2 = edit.newOutputStream(0);
                                bitmapDrawable.getBitmap().compress(this.d.compressFormat, this.d.compressQuality, outputStream2);
                                edit.commit();
                                outputStream2.close();
                            }
                        } else {
                            snapshot.getInputStream(0).close();
                        }
                        if (outputStream2 != null) {
                            try {
                                outputStream2.close();
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                        }
                    } catch (IOException e2) {
                        Log.e("ImageCache", "addBitmapToCache - " + e2);
                        if (0 != 0) {
                            try {
                                outputStream.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                    }
                }
            }
        }
    }

    public void clearCache() {
        if (this.c != null) {
            this.c.evictAll();
        }
        synchronized (this.e) {
            this.f = true;
            if (this.f3163b != null && !this.f3163b.isClosed()) {
                try {
                    this.f3163b.delete();
                } catch (IOException e) {
                    Log.e("ImageCache", "clearCache - " + e);
                }
                this.f3163b = null;
                initDiskCache();
            }
        }
    }

    public void close() {
        synchronized (this.e) {
            if (this.f3163b != null) {
                try {
                    if (!this.f3163b.isClosed()) {
                        this.f3163b.close();
                        this.f3163b = null;
                    }
                } catch (IOException e) {
                    Log.e("ImageCache", "close - " + e);
                }
            }
        }
    }

    public void flush() {
        synchronized (this.e) {
            if (this.f3163b != null) {
                try {
                    this.f3163b.flush();
                } catch (IOException e) {
                    Log.e("ImageCache", "flush - " + e);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v19, types: [android.graphics.Bitmap] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap getBitmapFromDiskCache(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.updatesdk.cache.ImageCache.getBitmapFromDiskCache(java.lang.String):android.graphics.Bitmap");
    }

    public BitmapDrawable getBitmapFromMemCache(String str) {
        BitmapDrawable bitmapDrawable = null;
        if (this.c != null) {
            bitmapDrawable = this.c.get(str);
        }
        return bitmapDrawable;
    }

    public void initDiskCache() {
        synchronized (this.e) {
            if (this.f3163b == null || this.f3163b.isClosed()) {
                File file = this.d.diskCacheDir;
                if (this.d.diskCacheEnabled && file != null) {
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    if (getUsableSpace(file) > this.d.diskCacheSize) {
                        try {
                            this.f3163b = DiskLruCache.open(file, 1, 1, this.d.diskCacheSize);
                        } catch (IOException e) {
                            this.d.diskCacheDir = null;
                            Log.e("ImageCache", "initDiskCache - " + e);
                        }
                    }
                }
            }
            this.f = false;
            this.e.notifyAll();
        }
    }
}
