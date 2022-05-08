package com.mopub.network;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebSettings;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.LruCache;
import androidx.media2.exoplayer.external.extractor.mp4.Mp4Extractor;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.volley.toolbox.BasicNetwork;
import com.mopub.volley.toolbox.DiskBasedCache;
import com.mopub.volley.toolbox.HurlStack;
import com.mopub.volley.toolbox.ImageLoader;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/Networking.class */
public class Networking {
    @NonNull

    /* renamed from: a */
    public static final String f9448a;

    /* renamed from: b */
    public static volatile MoPubRequestQueue f9449b;

    /* renamed from: c */
    public static volatile String f9450c;

    /* renamed from: d */
    public static volatile MaxWidthImageLoader f9451d;

    /* renamed from: e */
    public static boolean f9452e;

    /* renamed from: f */
    public static HurlStack.UrlRewriter f9453f;

    /* renamed from: com.mopub.network.Networking$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/Networking$a.class */
    public static final class C4036a extends LruCache<String, Bitmap> {
        public C4036a(int i) {
            super(i);
        }

        /* renamed from: b */
        public int sizeOf(String str, Bitmap bitmap) {
            return bitmap != null ? bitmap.getRowBytes() * bitmap.getHeight() : super.sizeOf(str, bitmap);
        }
    }

    /* renamed from: com.mopub.network.Networking$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/Networking$b.class */
    public static final class C4037b implements ImageLoader.ImageCache {

        /* renamed from: a */
        public final /* synthetic */ LruCache f9454a;

        public C4037b(LruCache lruCache) {
            this.f9454a = lruCache;
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageCache
        public Bitmap getBitmap(String str) {
            return (Bitmap) this.f9454a.get(str);
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageCache
        public void putBitmap(String str, Bitmap bitmap) {
            this.f9454a.put(str, bitmap);
        }
    }

    static {
        String str;
        String str2 = "";
        try {
            str = System.getProperty("http.agent", "");
        } catch (SecurityException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to get system user agent.");
            str = "";
        }
        if (str != null) {
            str2 = str;
        }
        f9448a = str2;
        f9452e = false;
    }

    @VisibleForTesting
    public static void clearForTesting() {
        synchronized (Networking.class) {
            try {
                f9449b = null;
                f9451d = null;
                f9450c = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String getBaseUrlScheme() {
        return shouldUseHttps() ? "https" : "http";
    }

    @NonNull
    public static String getCachedUserAgent() {
        String str = f9450c;
        String str2 = str;
        if (str == null) {
            str2 = f9448a;
        }
        return str2;
    }

    @NonNull
    public static ImageLoader getImageLoader(@NonNull Context context) {
        MaxWidthImageLoader maxWidthImageLoader = f9451d;
        MaxWidthImageLoader maxWidthImageLoader2 = maxWidthImageLoader;
        if (maxWidthImageLoader == null) {
            synchronized (Networking.class) {
                try {
                    MaxWidthImageLoader maxWidthImageLoader3 = f9451d;
                    maxWidthImageLoader2 = maxWidthImageLoader3;
                    if (maxWidthImageLoader3 == null) {
                        maxWidthImageLoader2 = new MaxWidthImageLoader(getRequestQueue(context), context, new C4037b(new C4036a(DeviceUtils.memoryCacheSizeBytes(context))));
                        f9451d = maxWidthImageLoader2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return maxWidthImageLoader2;
    }

    @Nullable
    public static MoPubRequestQueue getRequestQueue() {
        return f9449b;
    }

    @NonNull
    public static MoPubRequestQueue getRequestQueue(@NonNull Context context) {
        MoPubRequestQueue moPubRequestQueue = f9449b;
        MoPubRequestQueue moPubRequestQueue2 = moPubRequestQueue;
        if (moPubRequestQueue == null) {
            synchronized (Networking.class) {
                try {
                    MoPubRequestQueue moPubRequestQueue3 = f9449b;
                    moPubRequestQueue2 = moPubRequestQueue3;
                    if (moPubRequestQueue3 == null) {
                        BasicNetwork basicNetwork = new BasicNetwork(new RequestQueueHttpStack(getUserAgent(context.getApplicationContext()), getUrlRewriter(context), CustomSSLSocketFactory.getDefault(10000)));
                        File file = new File(context.getCacheDir().getPath() + File.separator + "mopub-volley-cache");
                        moPubRequestQueue2 = new MoPubRequestQueue(new DiskBasedCache(file, (int) DeviceUtils.diskCacheSizeBytes(file, Mp4Extractor.MAXIMUM_READ_AHEAD_BYTES_STREAM)), basicNetwork);
                        f9449b = moPubRequestQueue2;
                        moPubRequestQueue2.start();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return moPubRequestQueue2;
    }

    public static String getScheme() {
        return "https";
    }

    @NonNull
    public static HurlStack.UrlRewriter getUrlRewriter(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        if (f9453f == null) {
            f9453f = new PlayServicesUrlRewriter();
        }
        return f9453f;
    }

    @NonNull
    public static String getUserAgent(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        String str = f9450c;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return f9448a;
        }
        String str2 = f9448a;
        try {
            str2 = WebSettings.getDefaultUserAgent(context);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to get a user agent. Defaulting to the system user agent.");
        }
        f9450c = str2;
        return str2;
    }

    @VisibleForTesting
    public static void setImageLoaderForTesting(MaxWidthImageLoader maxWidthImageLoader) {
        synchronized (Networking.class) {
            try {
                f9451d = maxWidthImageLoader;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @VisibleForTesting
    public static void setRequestQueueForTesting(MoPubRequestQueue moPubRequestQueue) {
        synchronized (Networking.class) {
            try {
                f9449b = moPubRequestQueue;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Deprecated
    @VisibleForTesting
    public static void setUserAgentForTesting(String str) {
        synchronized (Networking.class) {
            try {
                f9450c = str;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean shouldUseHttps() {
        return f9452e;
    }

    public static void useHttps(boolean z) {
        f9452e = z;
    }
}
