package com.google.android.gms.common.api.internal;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zzb.class */
final class zzb implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ LifecycleCallback f7367f;

    /* renamed from: g */
    private final /* synthetic */ String f7368g;

    /* renamed from: h */
    private final /* synthetic */ zza f7369h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzb(zza zzaVar, LifecycleCallback lifecycleCallback, String str) {
        this.f7369h = zzaVar;
        this.f7367f = lifecycleCallback;
        this.f7368g = str;
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
        i = this.f7369h.f7365g;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f7367f;
            bundle = this.f7369h.f7366h;
            if (bundle != null) {
                bundle3 = this.f7369h.f7366h;
                bundle2 = bundle3.getBundle(this.f7368g);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.mo14726f(bundle2);
        }
        i2 = this.f7369h.f7365g;
        if (i2 >= 2) {
            this.f7367f.mo14724j();
        }
        i3 = this.f7369h.f7365g;
        if (i3 >= 3) {
            this.f7367f.mo14861h();
        }
        i4 = this.f7369h.f7365g;
        if (i4 >= 4) {
            this.f7367f.mo10770k();
        }
        i5 = this.f7369h.f7365g;
        if (i5 >= 5) {
            this.f7367f.mo14779g();
        }
    }
}
