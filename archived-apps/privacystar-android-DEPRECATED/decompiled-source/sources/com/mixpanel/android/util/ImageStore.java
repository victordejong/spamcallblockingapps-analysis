package com.mixpanel.android.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.support.p001v4.util.LruCache;
import android.util.Base64;
import com.mixpanel.android.mpmetrics.MPConfig;
import com.mixpanel.android.util.RemoteService;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/util/ImageStore.class */
public class ImageStore {
    private static final String DEFAULT_DIRECTORY_PREFIX = "MixpanelAPI.Images.";
    private static final String FILE_PREFIX = "MP_IMG_";
    private static final String LOGTAG = "MixpanelAPI.ImageStore";
    private static final int MAX_BITMAP_SIZE = 10000000;
    private static LruCache<String, Bitmap> sMemoryCache;
    private final MPConfig mConfig;
    private final MessageDigest mDigest;
    private final File mDirectory;
    private final RemoteService mPoster;

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/util/ImageStore$CantGetImageException.class */
    public static class CantGetImageException extends Exception {
        public CantGetImageException(String str) {
            super(str);
        }

        public CantGetImageException(String str, Throwable th) {
            super(str, th);
        }
    }

    public ImageStore(Context context, String str) {
        this(context, DEFAULT_DIRECTORY_PREFIX + str, new HttpService());
    }

    public ImageStore(Context context, String str, RemoteService remoteService) {
        MessageDigest messageDigest;
        this.mDirectory = context.getDir(str, 0);
        this.mPoster = remoteService;
        this.mConfig = MPConfig.getInstance(context);
        try {
            messageDigest = MessageDigest.getInstance("SHA1");
        } catch (NoSuchAlgorithmException e) {
            MPLog.m305w(LOGTAG, "Images won't be stored because this platform doesn't supply a SHA1 hash function");
            messageDigest = null;
        }
        this.mDigest = messageDigest;
        if (sMemoryCache == null) {
            synchronized (ImageStore.class) {
                try {
                    if (sMemoryCache == null) {
                        sMemoryCache = new LruCache<String, Bitmap>(((int) (Runtime.getRuntime().maxMemory() / 1024)) / this.mConfig.getImageCacheMaxMemoryFactor()) { // from class: com.mixpanel.android.util.ImageStore.1
                            /* JADX INFO: Access modifiers changed from: protected */
                            public int sizeOf(String str2, Bitmap bitmap) {
                                return (bitmap.getRowBytes() * bitmap.getHeight()) / 1024;
                            }
                        };
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static void addBitmapToMemoryCache(String str, Bitmap bitmap) {
        if (getBitmapFromMemCache(str) == null) {
            synchronized (sMemoryCache) {
                sMemoryCache.put(str, bitmap);
            }
        }
    }

    public static void clearMemCache() {
        synchronized (sMemoryCache) {
            sMemoryCache.evictAll();
        }
    }

    private static Bitmap decodeImage(File file) throws CantGetImageException {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        if (options.outHeight * options.outWidth > getAvailableMemory()) {
            throw new CantGetImageException("Do not have enough memory for the image");
        }
        Bitmap decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath());
        if (decodeFile != null) {
            return decodeFile;
        }
        file.delete();
        throw new CantGetImageException("Bitmap on disk can't be opened or was corrupt");
    }

    private static float getAvailableMemory() {
        Runtime runtime = Runtime.getRuntime();
        return ((float) runtime.maxMemory()) - ((float) (runtime.totalMemory() - runtime.freeMemory()));
    }

    public static Bitmap getBitmapFromMemCache(String str) {
        Bitmap bitmap;
        synchronized (sMemoryCache) {
            bitmap = sMemoryCache.get(str);
        }
        return bitmap;
    }

    public static void removeBitmapFromMemCache(String str) {
        synchronized (sMemoryCache) {
            sMemoryCache.remove(str);
        }
    }

    private File storedFile(String str) {
        if (this.mDigest == null) {
            return null;
        }
        byte[] digest = this.mDigest.digest(str.getBytes());
        return new File(this.mDirectory, FILE_PREFIX + Base64.encodeToString(digest, 10));
    }

    public void clearStorage() {
        File[] listFiles;
        for (File file : this.mDirectory.listFiles()) {
            if (file.getName().startsWith(FILE_PREFIX)) {
                file.delete();
            }
        }
        clearMemCache();
    }

    public void deleteStorage(String str) {
        File storedFile = storedFile(str);
        if (storedFile != null) {
            storedFile.delete();
            removeBitmapFromMemCache(str);
        }
    }

    public Bitmap getImage(String str) throws CantGetImageException {
        Bitmap bitmapFromMemCache = getBitmapFromMemCache(str);
        Bitmap bitmap = bitmapFromMemCache;
        if (bitmapFromMemCache == null) {
            bitmap = decodeImage(getImageFile(str));
            addBitmapToMemoryCache(str, bitmap);
        }
        return bitmap;
    }

    public File getImageFile(String str) throws CantGetImageException {
        Throwable th;
        FileNotFoundException e;
        IOException e2;
        File storedFile = storedFile(str);
        if (storedFile == null || !storedFile.exists()) {
            try {
                byte[] bytes = this.mPoster.performRequest(str, "").getResponseMessage().getBytes();
                if (storedFile != null && bytes.length < MAX_BITMAP_SIZE) {
                    r12 = null;
                    FileOutputStream fileOutputStream = null;
                    fileOutputStream = null;
                    try {
                        try {
                            fileOutputStream = new FileOutputStream(storedFile);
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (FileNotFoundException e3) {
                        e = e3;
                    } catch (IOException e4) {
                        e2 = e4;
                    }
                    try {
                        fileOutputStream.write(bytes);
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e5) {
                                MPLog.m304w(LOGTAG, "Problem closing output file", e5);
                            }
                        }
                    } catch (FileNotFoundException e6) {
                        e = e6;
                        throw new CantGetImageException("It appears that ImageStore is misconfigured, or disk storage is unavailable- can't write to bitmap directory", e);
                    } catch (IOException e7) {
                        e2 = e7;
                        throw new CantGetImageException("Can't store bitmap", e2);
                    } catch (Throwable th3) {
                        th = th3;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e8) {
                                MPLog.m304w(LOGTAG, "Problem closing output file", e8);
                            }
                        }
                        throw th;
                    }
                }
            } catch (RemoteService.ServiceUnavailableException e9) {
                throw new CantGetImageException("Couldn't download image due to service availability", e9);
            } catch (IOException e10) {
                throw new CantGetImageException("Can't download bitmap", e10);
            }
        }
        return storedFile;
    }
}
