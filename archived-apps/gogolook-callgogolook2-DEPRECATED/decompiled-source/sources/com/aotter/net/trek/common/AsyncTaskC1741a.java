package com.aotter.net.trek.common;

import android.os.AsyncTask;
import com.aotter.net.trek.common.CacheService;
/* renamed from: com.aotter.net.trek.common.a */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/a.class */
public class AsyncTaskC1741a extends AsyncTask<Void, Void, byte[]> {

    /* renamed from: a */
    public final CacheService.DiskLruCacheGetListener f1505a;

    /* renamed from: b */
    public final String f1506b;

    public AsyncTaskC1741a(String str, CacheService.DiskLruCacheGetListener diskLruCacheGetListener) {
        this.f1505a = diskLruCacheGetListener;
        this.f1506b = str;
    }

    /* renamed from: a */
    public void onPostExecute(byte[] bArr) {
        if (isCancelled()) {
            onCancelled();
            return;
        }
        CacheService.DiskLruCacheGetListener diskLruCacheGetListener = this.f1505a;
        if (diskLruCacheGetListener != null) {
            diskLruCacheGetListener.onComplete(this.f1506b, bArr);
        }
    }

    /* renamed from: a */
    public byte[] doInBackground(Void... voidArr) {
        return CacheService.getFromDiskCache(this.f1506b);
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        CacheService.DiskLruCacheGetListener diskLruCacheGetListener = this.f1505a;
        if (diskLruCacheGetListener != null) {
            diskLruCacheGetListener.onComplete(this.f1506b, null);
        }
    }
}
