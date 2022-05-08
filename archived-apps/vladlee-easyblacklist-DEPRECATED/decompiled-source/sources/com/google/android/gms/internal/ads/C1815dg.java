package com.google.android.gms.internal.ads;

import java.lang.Thread;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.dg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dg.class */
public final class C1815dg implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private final /* synthetic */ Thread.UncaughtExceptionHandler f8380a;

    /* renamed from: b */
    private final /* synthetic */ zzapn f8381b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1815dg(zzapn zzapnVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f8381b = zzapnVar;
        this.f8380a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            this.f8381b.m4320a(th);
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f8380a;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            }
        } catch (Throwable th2) {
            try {
                zzayu.zzex("AdMob exception reporter failed reporting the exception.");
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f8380a;
                if (uncaughtExceptionHandler2 != null) {
                    uncaughtExceptionHandler2.uncaughtException(thread, th);
                }
            } catch (Throwable th3) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.f8380a;
                if (uncaughtExceptionHandler3 != null) {
                    uncaughtExceptionHandler3.uncaughtException(thread, th);
                }
                throw th3;
            }
        }
    }
}
