package com.google.android.gms.measurement.internal;

import android.net.Uri;
/* renamed from: com.google.android.gms.measurement.internal.fn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fn.class */
final class RunnableC2787fn implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ boolean f16874a;

    /* renamed from: b */
    private final /* synthetic */ Uri f16875b;

    /* renamed from: c */
    private final /* synthetic */ String f16876c;

    /* renamed from: d */
    private final /* synthetic */ String f16877d;

    /* renamed from: e */
    private final /* synthetic */ C2788fo f16878e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2787fn(C2788fo foVar, boolean z, Uri uri, String str, String str2) {
        this.f16878e = foVar;
        this.f16874a = z;
        this.f16875b = uri;
        this.f16876c = str;
        this.f16877d = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16878e.m2049a(this.f16874a, this.f16875b, this.f16876c, this.f16877d);
    }
}
