package com.appsflyer.internal;

import android.content.Context;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import com.appsflyer.AFLogger;
import com.appsflyer.AndroidUtils;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ContentFetcher.class */
public abstract class ContentFetcher<T> {
    public final String authority;
    public final Context context;

    /* renamed from: ɩ */
    private FutureTask<T> f2942 = new FutureTask<>(new Callable<T>() { // from class: com.appsflyer.internal.ContentFetcher.3
        @Override // java.util.concurrent.Callable
        public final T call() {
            if (ContentFetcher.this.valid()) {
                return (T) ContentFetcher.this.query();
            }
            return null;
        }
    });

    /* renamed from: Ι */
    private final long f2943;

    /* renamed from: ι */
    private final String f2944;

    public ContentFetcher(Context context, String str, String str2, long j) {
        this.context = context;
        this.authority = str;
        this.f2944 = str2;
        this.f2943 = j;
    }

    public T get() {
        try {
            return this.f2942.get(this.f2943, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            onError(e);
            return null;
        }
    }

    protected void onError(Exception exc) {
        AFLogger.afErrorLog(exc.getMessage(), exc);
    }

    protected abstract T query();

    public void start() {
        new Thread(this.f2942).start();
    }

    public boolean valid() {
        try {
            ProviderInfo resolveContentProvider = this.context.getPackageManager().resolveContentProvider(this.authority, 128);
            boolean z = false;
            if (resolveContentProvider != null) {
                z = false;
                if (AndroidUtils.signature(this.context.getPackageManager(), ((PackageItemInfo) resolveContentProvider).packageName).equalsIgnoreCase(this.f2944)) {
                    z = true;
                }
            }
            return z;
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException | CertificateException e) {
            onError(e);
            return false;
        }
    }
}
