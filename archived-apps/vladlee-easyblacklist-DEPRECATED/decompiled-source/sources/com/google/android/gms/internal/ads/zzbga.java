package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzh;
import com.google.android.gms.ads.internal.zzq;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbga.class */
public class zzbga {

    /* renamed from: a */
    private final zzazb f11818a;

    /* renamed from: b */
    private final Context f11819b;

    /* renamed from: c */
    private final WeakReference<Context> f11820c;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbga$zza.class */
    public static final class zza {

        /* renamed from: a */
        private zzazb f11821a;

        /* renamed from: b */
        private Context f11822b;

        /* renamed from: c */
        private WeakReference<Context> f11823c;

        public final zza zza(zzazb zzazbVar) {
            this.f11821a = zzazbVar;
            return this;
        }

        public final zza zzbs(Context context) {
            this.f11823c = new WeakReference<>(context);
            Context context2 = context;
            if (context.getApplicationContext() != null) {
                context2 = context.getApplicationContext();
            }
            this.f11822b = context2;
            return this;
        }
    }

    private zzbga(zza zzaVar) {
        this.f11818a = zzaVar.f11821a;
        this.f11819b = zzaVar.f11822b;
        this.f11820c = zzaVar.f11823c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzbga(zza zzaVar, byte b) {
        this(zzaVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Context m4090a() {
        return this.f11819b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final WeakReference<Context> m4089b() {
        return this.f11820c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final zzazb m4088c() {
        return this.f11818a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final String m4087d() {
        return zzq.zzkq().zzr(this.f11819b, this.f11818a.zzbma);
    }

    public final zzdq zzact() {
        return new zzdq(new zzh(this.f11819b, this.f11818a));
    }
}
