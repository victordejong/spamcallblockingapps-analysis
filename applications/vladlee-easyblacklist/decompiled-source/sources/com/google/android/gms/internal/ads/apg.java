package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apg.class */
public final class apg implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f8107a;

    /* renamed from: b */
    private final /* synthetic */ long f8108b;

    /* renamed from: c */
    private final /* synthetic */ long f8109c;

    /* renamed from: d */
    private final /* synthetic */ zzpg f8110d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public apg(zzpg zzpgVar, String str, long j, long j2) {
        this.f8110d = zzpgVar;
        this.f8107a = str;
        this.f8108b = j;
        this.f8109c = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpd zzpdVar;
        zzpdVar = this.f8110d.f15314b;
        zzpdVar.zzd(this.f8107a, this.f8108b, this.f8109c);
    }
}
