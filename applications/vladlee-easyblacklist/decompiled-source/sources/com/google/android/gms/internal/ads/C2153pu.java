package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.pu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pu.class */
public final class C2153pu<T> implements zzafn<Object> {

    /* renamed from: a */
    private final WeakReference<T> f10345a;

    /* renamed from: b */
    private final String f10346b;

    /* renamed from: c */
    private final zzafn<T> f10347c;

    /* renamed from: d */
    private final /* synthetic */ zzcaj f10348d;

    private C2153pu(zzcaj zzcajVar, WeakReference<T> weakReference, String str, zzafn<T> zzafnVar) {
        this.f10348d = zzcajVar;
        this.f10345a = weakReference;
        this.f10346b = str;
        this.f10347c = zzafnVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2153pu(zzcaj zzcajVar, WeakReference weakReference, String str, zzafn zzafnVar, byte b) {
        this(zzcajVar, weakReference, str, zzafnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void zza(Object obj, Map<String, String> map) {
        T t = this.f10345a.get();
        if (t == null) {
            this.f10348d.zzb(this.f10346b, this);
        } else {
            this.f10347c.zza(t, map);
        }
    }
}
