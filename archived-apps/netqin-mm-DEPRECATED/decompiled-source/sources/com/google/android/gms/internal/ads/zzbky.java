package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbky.class */
public class zzbky {

    /* renamed from: a */
    public zza f25119a;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbky$zza.class */
    public static abstract class zza {
        /* renamed from: a */
        public abstract zzbft mo15341a();

        /* renamed from: b */
        public abstract zzbde mo15340b();

        /* renamed from: c */
        public abstract zztx mo15339c();

        /* renamed from: d */
        public abstract zzawn mo15338d();

        /* renamed from: e */
        public abstract zzarj mo15337e();

        /* renamed from: f */
        public abstract zzams mo15336f();

        /* renamed from: g */
        public abstract zzacg mo15335g();
    }

    public zzbky(zza zzaVar) {
        this.f25119a = zzaVar;
    }

    /* renamed from: a */
    public final zzawn m15346a() {
        return this.f25119a.mo15338d();
    }

    /* renamed from: b */
    public final zzarj m15345b() {
        return this.f25119a.mo15337e();
    }

    /* renamed from: c */
    public final zzams m15344c() {
        return this.f25119a.mo15336f();
    }

    /* renamed from: d */
    public final zzacg m15343d() {
        return this.f25119a.mo15335g();
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.gms.internal.ads.zzawe, com.google.android.gms.internal.ads.zzawk] */
    /* renamed from: e */
    public final zzb m15342e() {
        zza zzaVar = this.f25119a;
        return new zzb(zzaVar.mo15341a(), zzaVar.mo15340b(), new zzawe(zzaVar.mo15338d()), zzaVar.mo15339c(), zzaVar.mo15337e(), zzaVar.mo15335g());
    }
}
