package com.asus.updatesdk.cache;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import java.io.File;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/cache/ImageFetcher.class */
public class ImageFetcher extends ImageResize {
    private DiskLruCache e;
    private File f;
    private boolean g = true;
    private final Object h = new Object();

    public ImageFetcher(Context context, int i) {
        super(context, i);
        a(context);
    }

    public ImageFetcher(Context context, int i, int i2) {
        super(context, i, i2);
        a(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:113:0x00f8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01c5  */
    /* JADX WARN: Type inference failed for: r0v55, types: [com.asus.updatesdk.cache.DiskLruCache] */
    /* JADX WARN: Type inference failed for: r0v59, types: [com.asus.updatesdk.cache.DiskLruCache] */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v25 */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v18 */
    /* JADX WARN: Type inference failed for: r6v17, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.Bitmap a(java.lang.String r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.updatesdk.cache.ImageFetcher.a(java.lang.String, java.lang.String):android.graphics.Bitmap");
    }

    private void a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
            Log.e("ImageFetcher", "checkConnection - no connection found");
        }
        this.f = ImageCache.getDiskCacheDir(context, "http");
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d9 A[Catch: IOException -> 0x00df, TRY_ENTER, TryCatch #7 {IOException -> 0x00df, blocks: (B:47:0x00d1, B:50:0x00d9), top: B:72:0x00d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00d1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(java.lang.String r4, java.io.OutputStream r5) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.updatesdk.cache.ImageFetcher.a(java.lang.String, java.io.OutputStream):boolean");
    }

    private void e() {
        if (!this.f.exists()) {
            this.f.mkdirs();
        }
        synchronized (this.h) {
            if (ImageCache.getUsableSpace(this.f) > 10485760) {
                try {
                    this.e = DiskLruCache.open(this.f, 1, 1, 10485760L);
                } catch (IOException e) {
                    this.e = null;
                }
            }
            this.g = false;
            this.h.notifyAll();
        }
    }

    @Override // com.asus.updatesdk.cache.ImageResize, com.asus.updatesdk.cache.ImageWorker
    protected final Bitmap a(Object obj, Object obj2) {
        return a(String.valueOf(obj), String.valueOf(obj2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.updatesdk.cache.ImageWorker
    public final void a() {
        super.a();
        e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.updatesdk.cache.ImageWorker
    public final void b() {
        super.b();
        synchronized (this.h) {
            if (this.e != null && !this.e.isClosed()) {
                try {
                    this.e.delete();
                } catch (IOException e) {
                    Log.e("ImageFetcher", "clearCacheInternal - " + e);
                }
                this.e = null;
                this.g = true;
                e();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.updatesdk.cache.ImageWorker
    public final void c() {
        super.c();
        synchronized (this.h) {
            if (this.e != null) {
                try {
                    this.e.flush();
                } catch (IOException e) {
                    Log.e("ImageFetcher", "flush - " + e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.updatesdk.cache.ImageWorker
    public final void d() {
        super.d();
        synchronized (this.h) {
            if (this.e != null) {
                try {
                    if (!this.e.isClosed()) {
                        this.e.close();
                        this.e = null;
                    }
                } catch (IOException e) {
                    Log.e("ImageFetcher", "closeCacheInternal - " + e);
                }
            }
        }
    }
}
