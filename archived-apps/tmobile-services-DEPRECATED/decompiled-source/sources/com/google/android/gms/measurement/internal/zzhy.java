package com.google.android.gms.measurement.internal;

import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhy.class */
final class zzhy implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ boolean f9466f;

    /* renamed from: g */
    private final /* synthetic */ Uri f9467g;

    /* renamed from: h */
    private final /* synthetic */ String f9468h;

    /* renamed from: i */
    private final /* synthetic */ String f9469i;

    /* renamed from: j */
    private final /* synthetic */ zzhz f9470j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhy(zzhz zzhzVar, boolean z, Uri uri, String str, String str2) {
        this.f9470j = zzhzVar;
        this.f9466f = z;
        this.f9467g = uri;
        this.f9468h = str;
        this.f9469i = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9470j.m11243b(this.f9466f, this.f9467g, this.f9468h, this.f9469i);
    }
}
