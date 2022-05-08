package com.google.android.gms.internal.ads;

import java.lang.Thread;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.df */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/df.class */
public final class C1814df implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private final /* synthetic */ Thread.UncaughtExceptionHandler f8378a;

    /* renamed from: b */
    private final /* synthetic */ zzapn f8379b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1814df(zzapn zzapnVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f8379b = zzapnVar;
        this.f8378a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            this.f8379b.m4320a(th);
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f8378a;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            }
        } catch (Throwable th2) {
            try {
                zzayu.zzex("AdMob exception reporter failed reporting the exception.");
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f8378a;
                if (uncaughtExceptionHandler2 != null) {
                    uncaughtExceptionHandler2.uncaughtException(thread, th);
                }
            } catch (Throwable th3) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.f8378a;
                if (uncaughtExceptionHandler3 != null) {
                    uncaughtExceptionHandler3.uncaughtException(thread, th);
                }
                throw th3;
            }
        }
    }
}
