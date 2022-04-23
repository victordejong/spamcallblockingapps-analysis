package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbod.class */
public class zzbod {

    /* renamed from: a */
    private final Context f12221a;

    /* renamed from: b */
    private final zzczu f12222b;

    /* renamed from: c */
    private Bundle f12223c;

    /* renamed from: d */
    private final String f12224d;

    /* renamed from: e */
    private final zzczs f12225e;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbod$zza.class */
    public static final class zza {

        /* renamed from: a */
        private Context f12226a;

        /* renamed from: b */
        private zzczu f12227b;

        /* renamed from: c */
        private Bundle f12228c;

        /* renamed from: d */
        private String f12229d;

        /* renamed from: e */
        private zzczs f12230e;

        public final zza zza(zzczs zzczsVar) {
            this.f12230e = zzczsVar;
            return this;
        }

        public final zza zza(zzczu zzczuVar) {
            this.f12227b = zzczuVar;
            return this;
        }

        public final zzbod zzahh() {
            return new zzbod(this, (byte) 0);
        }

        public final zza zzbz(Context context) {
            this.f12226a = context;
            return this;
        }

        public final zza zze(Bundle bundle) {
            this.f12228c = bundle;
            return this;
        }

        public final zza zzfs(String str) {
            this.f12229d = str;
            return this;
        }
    }

    private zzbod(zza zzaVar) {
        this.f12221a = zzaVar.f12226a;
        this.f12222b = zzaVar.f12227b;
        this.f12223c = zzaVar.f12228c;
        this.f12224d = zzaVar.f12229d;
        this.f12225e = zzaVar.f12230e;
    }

    /* synthetic */ zzbod(zza zzaVar, byte b) {
        this(zzaVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Context m4008a(Context context) {
        return this.f12224d != null ? context : this.f12221a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final zza m4009a() {
        return new zza().zzbz(this.f12221a).zza(this.f12222b).zzfs(this.f12224d).zze(this.f12223c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final zzczu m4007b() {
        return this.f12222b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final zzczs m4006c() {
        return this.f12225e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final Bundle m4005d() {
        return this.f12223c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final String m4004e() {
        return this.f12224d;
    }
}
