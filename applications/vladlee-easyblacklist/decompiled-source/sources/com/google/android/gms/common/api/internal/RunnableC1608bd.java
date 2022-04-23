package com.google.android.gms.common.api.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.common.api.internal.bd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/bd.class */
final class RunnableC1608bd implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ LifecycleCallback f6384a;

    /* renamed from: b */
    private final /* synthetic */ String f6385b;

    /* renamed from: c */
    private final /* synthetic */ zza f6386c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1608bd(zza zzaVar, LifecycleCallback lifecycleCallback, String str) {
        this.f6386c = zzaVar;
        this.f6384a = lifecycleCallback;
        this.f6385b = str;
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
        i = this.f6386c.f6574c;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f6384a;
            bundle = this.f6386c.f6575d;
            if (bundle != null) {
                bundle3 = this.f6386c.f6575d;
                bundle2 = bundle3.getBundle(this.f6385b);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.onCreate(bundle2);
        }
        i2 = this.f6386c.f6574c;
        if (i2 >= 2) {
            this.f6384a.onStart();
        }
        i3 = this.f6386c.f6574c;
        if (i3 >= 3) {
            this.f6384a.onResume();
        }
        i4 = this.f6386c.f6574c;
        if (i4 >= 4) {
            this.f6384a.onStop();
        }
        i5 = this.f6386c.f6574c;
        if (i5 >= 5) {
            this.f6384a.onDestroy();
        }
    }
}
