package com.google.android.gms.analytics;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import com.google.android.gms.analytics.internal.zzao;
import com.google.android.gms.internal.ab;
import com.google.android.gms.internal.ag;
import java.lang.Thread;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzi.class */
public final class zzi {

    /* renamed from: b  reason: collision with root package name */
    private static volatile zzi f3899b;
    private final Context c;
    private volatile ab f;
    private Thread.UncaughtExceptionHandler g;

    /* renamed from: a  reason: collision with root package name */
    final a f3900a = new a();
    private final List<zzj> d = new CopyOnWriteArrayList();
    private final zzd e = new zzd();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzi$a.class */
    public final class a extends ThreadPoolExecutor {
        public a() {
            super(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
            setThreadFactory(new b((byte) 0));
        }

        @Override // java.util.concurrent.AbstractExecutorService
        protected final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
            return new FutureTask<T>(runnable, t) { // from class: com.google.android.gms.analytics.zzi.a.1
                @Override // java.util.concurrent.FutureTask
                protected final void setException(Throwable th) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler = zzi.this.g;
                    if (uncaughtExceptionHandler != null) {
                        uncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
                    } else if (Log.isLoggable("GAv4", 6)) {
                        String valueOf = String.valueOf(th);
                        Log.e("GAv4", new StringBuilder(String.valueOf(valueOf).length() + 37).append("MeasurementExecutor: job failed with ").append(valueOf).toString());
                    }
                    super.setException(th);
                }
            };
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzi$b.class */
    private static final class b implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private static final AtomicInteger f3905a = new AtomicInteger();

        private b() {
        }

        /* synthetic */ b(byte b2) {
            this();
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return new c(runnable, new StringBuilder(23).append("measurement-").append(f3905a.incrementAndGet()).toString());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzi$c.class */
    private static final class c extends Thread {
        c(Runnable runnable, String str) {
            super(runnable, str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    private zzi(Context context) {
        Context applicationContext = context.getApplicationContext();
        com.google.android.gms.common.internal.b.a(applicationContext);
        this.c = applicationContext;
    }

    static /* synthetic */ void a(zze zzeVar) {
        com.google.android.gms.common.internal.b.c("deliver should be called from worker thread");
        com.google.android.gms.common.internal.b.b(zzeVar.zzkD(), "Measurement must be submitted");
        List<zzk> zzkA = zzeVar.zzkA();
        if (!zzkA.isEmpty()) {
            HashSet hashSet = new HashSet();
            for (zzk zzkVar : zzkA) {
                Uri zzkn = zzkVar.zzkn();
                if (!hashSet.contains(zzkn)) {
                    hashSet.add(zzkn);
                    zzkVar.zzb(zzeVar);
                }
            }
        }
    }

    public static zzi zzW(Context context) {
        com.google.android.gms.common.internal.b.a(context);
        if (f3899b == null) {
            synchronized (zzi.class) {
                try {
                    if (f3899b == null) {
                        f3899b = new zzi(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3899b;
    }

    public static void zzkN() {
        if (!(Thread.currentThread() instanceof c)) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    public final Context getContext() {
        return this.c;
    }

    public final void zza(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.g = uncaughtExceptionHandler;
    }

    public final <V> Future<V> zzc(Callable<V> callable) {
        FutureTask futureTask;
        com.google.android.gms.common.internal.b.a(callable);
        if (Thread.currentThread() instanceof c) {
            FutureTask futureTask2 = new FutureTask(callable);
            futureTask2.run();
            futureTask = futureTask2;
        } else {
            futureTask = this.f3900a.submit(callable);
        }
        return futureTask;
    }

    public final void zzf(Runnable runnable) {
        com.google.android.gms.common.internal.b.a(runnable);
        this.f3900a.submit(runnable);
    }

    public final ab zzkL() {
        String str;
        String str2;
        if (this.f == null) {
            synchronized (this) {
                if (this.f == null) {
                    ab abVar = new ab();
                    PackageManager packageManager = this.c.getPackageManager();
                    String packageName = this.c.getPackageName();
                    abVar.c = packageName;
                    abVar.d = packageManager.getInstallerPackageName(packageName);
                    String str3 = packageName;
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(this.c.getPackageName(), 0);
                        str = null;
                        str2 = packageName;
                        if (packageInfo != null) {
                            CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                            str2 = packageName;
                            if (!TextUtils.isEmpty(applicationLabel)) {
                                str2 = applicationLabel.toString();
                            }
                            str3 = str2;
                            str = packageInfo.versionName;
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        String valueOf = String.valueOf(str3);
                        Log.e("GAv4", valueOf.length() != 0 ? "Error retrieving package info: appName set to ".concat(valueOf) : new String("Error retrieving package info: appName set to "));
                        str = null;
                        str2 = str3;
                    }
                    abVar.f4096a = str2;
                    abVar.f4097b = str;
                    this.f = abVar;
                }
            }
        }
        return this.f;
    }

    public final ag zzkM() {
        DisplayMetrics displayMetrics = this.c.getResources().getDisplayMetrics();
        ag agVar = new ag();
        agVar.f4103a = zzao.zza(Locale.getDefault());
        agVar.c = displayMetrics.widthPixels;
        agVar.d = displayMetrics.heightPixels;
        return agVar;
    }
}
