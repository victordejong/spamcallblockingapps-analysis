package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* renamed from: com.google.android.gms.internal.ads.wd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wd.class */
final class C2325wd implements zzcty<Bundle> {

    /* renamed from: a */
    private final String f10646a;

    /* renamed from: b */
    private final String f10647b;

    /* renamed from: c */
    private final Bundle f10648c;

    private C2325wd(String str, String str2, Bundle bundle) {
        this.f10646a = str;
        this.f10647b = str2;
        this.f10648c = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2325wd(String str, String str2, Bundle bundle, byte b) {
        this(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("consent_string", this.f10646a);
        bundle2.putString("fc_consent", this.f10647b);
        bundle2.putBundle("iab_consent_info", this.f10648c);
    }
}
