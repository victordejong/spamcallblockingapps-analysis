package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;
/* renamed from: com.google.android.gms.internal.ads.fy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fy.class */
final class C1887fy implements zzap {

    /* renamed from: a */
    private File f8486a = null;

    /* renamed from: b */
    private final /* synthetic */ Context f8487b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1887fy(Context context) {
        this.f8487b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzap
    public final File zzn() {
        if (this.f8486a == null) {
            this.f8486a = new File(this.f8487b.getCacheDir(), "volley");
        }
        return this.f8486a;
    }
}
