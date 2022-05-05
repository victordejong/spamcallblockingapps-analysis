package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agz.class */
final class agz extends agv {
    @Override // com.google.android.gms.internal.ads.agv
    /* renamed from: a */
    public final void mo3414a(Throwable th) {
        th.printStackTrace();
    }

    @Override // com.google.android.gms.internal.ads.agv
    /* renamed from: a */
    public final void mo3413a(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
    }

    @Override // com.google.android.gms.internal.ads.agv
    /* renamed from: a */
    public final void mo3412a(Throwable th, Throwable th2) {
        th.addSuppressed(th2);
    }
}
