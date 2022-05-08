package com.google.android.datatransport.cct.p006a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.p006a.zzg;
import com.google.auto.value.AutoValue;
@AutoValue
/* renamed from: com.google.android.datatransport.cct.a.zzp */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzp.class */
public abstract class zzp {

    @AutoValue.Builder
    /* renamed from: com.google.android.datatransport.cct.a.zzp$zza */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzp$zza.class */
    public static abstract class zza {
        @NonNull
        /* renamed from: a */
        public abstract zza mo15525a(@Nullable com.google.android.datatransport.cct.p006a.zza zzaVar);

        @NonNull
        /* renamed from: b */
        public abstract zza mo15524b(@Nullable zzb zzbVar);

        @NonNull
        /* renamed from: c */
        public abstract zzp mo15523c();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.google.android.datatransport.cct.a.zzp$zzb */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzp$zzb.class */
    public static final class zzb extends Enum<zzb> {
        public static final zzb zza = new zzb("UNKNOWN", 0, 0);
        public static final zzb zzb = new zzb("ANDROID_FIREBASE", 1, 23);

        private zzb(String str, int i, int i2) {
        }
    }

    @NonNull
    /* renamed from: a */
    public static zza m15528a() {
        return new zzg.zza();
    }

    @Nullable
    /* renamed from: b */
    public abstract com.google.android.datatransport.cct.p006a.zza mo15527b();

    @Nullable
    /* renamed from: c */
    public abstract zzb mo15526c();
}
