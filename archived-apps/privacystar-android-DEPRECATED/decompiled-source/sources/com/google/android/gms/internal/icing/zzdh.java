package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzck;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdh.class */
public final class zzdh implements zzeg {
    private static final zzdq zzjp = new zzdi();
    private final zzdq zzjo;

    public zzdh() {
        this(new zzdj(zzcj.zzau(), zzbm()));
    }

    private zzdh(zzdq zzdqVar) {
        this.zzjo = (zzdq) zzcm.zza(zzdqVar, "messageInfoFactory");
    }

    private static boolean zza(zzdp zzdpVar) {
        return zzdpVar.zzbs() == zzck.zzd.zzib;
    }

    private static zzdq zzbm() {
        try {
            return (zzdq) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return zzjp;
        }
    }

    @Override // com.google.android.gms.internal.icing.zzeg
    public final <T> zzef<T> zzd(Class<T> cls) {
        zzeh.zzf((Class<?>) cls);
        zzdp zzb = this.zzjo.zzb(cls);
        return zzb.zzbt() ? zzck.class.isAssignableFrom(cls) ? zzdw.zza(zzeh.zzcf(), zzcc.zzak(), zzb.zzbu()) : zzdw.zza(zzeh.zzcd(), zzcc.zzal(), zzb.zzbu()) : zzck.class.isAssignableFrom(cls) ? zza(zzb) ? zzdv.zza(cls, zzb, zzea.zzbx(), zzdc.zzbk(), zzeh.zzcf(), zzcc.zzak(), zzdo.zzbq()) : zzdv.zza(cls, zzb, zzea.zzbx(), zzdc.zzbk(), zzeh.zzcf(), null, zzdo.zzbq()) : zza(zzb) ? zzdv.zza(cls, zzb, zzea.zzbw(), zzdc.zzbj(), zzeh.zzcd(), zzcc.zzal(), zzdo.zzbp()) : zzdv.zza(cls, zzb, zzea.zzbw(), zzdc.zzbj(), zzeh.zzce(), null, zzdo.zzbp());
    }
}
