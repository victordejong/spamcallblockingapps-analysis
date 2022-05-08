package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.common.util.Clock;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ek */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ek.class */
public final class C1846ek {

    /* renamed from: a */
    private long f8423a = -1;

    /* renamed from: b */
    private long f8424b = -1;

    /* renamed from: c */
    private final /* synthetic */ zzavd f8425c;

    public C1846ek(zzavd zzavdVar) {
        this.f8425c = zzavdVar;
    }

    /* renamed from: a */
    public final long m4732a() {
        return this.f8424b;
    }

    /* renamed from: b */
    public final void m4731b() {
        Clock clock;
        clock = this.f8425c.f11385a;
        this.f8424b = clock.elapsedRealtime();
    }

    /* renamed from: c */
    public final void m4730c() {
        Clock clock;
        clock = this.f8425c.f11385a;
        this.f8423a = clock.elapsedRealtime();
    }

    /* renamed from: d */
    public final Bundle m4729d() {
        Bundle bundle = new Bundle();
        bundle.putLong("topen", this.f8423a);
        bundle.putLong("tclose", this.f8424b);
        return bundle;
    }
}
