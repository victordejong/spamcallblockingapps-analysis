package com.google.android.gms.common.api.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.common.api.internal.be */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/be.class */
final class RunnableC1609be implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ LifecycleCallback f6387a;

    /* renamed from: b */
    private final /* synthetic */ String f6388b;

    /* renamed from: c */
    private final /* synthetic */ zzc f6389c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1609be(zzc zzcVar, LifecycleCallback lifecycleCallback, String str) {
        this.f6389c = zzcVar;
        this.f6387a = lifecycleCallback;
        this.f6388b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3;
        i = this.f6389c.f6578c;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f6387a;
            bundle = this.f6389c.f6579d;
            if (bundle != null) {
                bundle3 = this.f6389c.f6579d;
                bundle2 = bundle3.getBundle(this.f6388b);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.onCreate(bundle2);
        }
        i2 = this.f6389c.f6578c;
        if (i2 >= 2) {
            this.f6387a.onStart();
        }
        i3 = this.f6389c.f6578c;
        if (i3 >= 3) {
            this.f6387a.onResume();
        }
        i4 = this.f6389c.f6578c;
        if (i4 >= 4) {
            this.f6387a.onStop();
        }
        i5 = this.f6389c.f6578c;
        if (i5 >= 5) {
            this.f6387a.onDestroy();
        }
    }
}
