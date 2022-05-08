package com.google.android.gms.common.api.internal;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zzd.class */
final class zzd implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ LifecycleCallback f7374f;

    /* renamed from: g */
    private final /* synthetic */ String f7375g;

    /* renamed from: h */
    private final /* synthetic */ zzc f7376h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(zzc zzcVar, LifecycleCallback lifecycleCallback, String str) {
        this.f7376h = zzcVar;
        this.f7374f = lifecycleCallback;
        this.f7375g = str;
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
        i = this.f7376h.f7372g;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f7374f;
            bundle = this.f7376h.f7373h;
            if (bundle != null) {
                bundle3 = this.f7376h.f7373h;
                bundle2 = bundle3.getBundle(this.f7375g);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.mo14726f(bundle2);
        }
        i2 = this.f7376h.f7372g;
        if (i2 >= 2) {
            this.f7374f.mo14724j();
        }
        i3 = this.f7376h.f7372g;
        if (i3 >= 3) {
            this.f7374f.mo14861h();
        }
        i4 = this.f7376h.f7372g;
        if (i4 >= 4) {
            this.f7374f.mo10770k();
        }
        i5 = this.f7376h.f7372g;
        if (i5 >= 5) {
            this.f7374f.mo14779g();
        }
    }
}
