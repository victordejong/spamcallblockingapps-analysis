package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdte;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdig.class */
public class zzdig<PrimitiveT, KeyProtoT extends zzdte> implements zzdid<PrimitiveT> {

    /* renamed from: a */
    private final zzdii<KeyProtoT> f14307a;

    /* renamed from: b */
    private final Class<PrimitiveT> f14308b;

    public zzdig(zzdii<KeyProtoT> zzdiiVar, Class<PrimitiveT> cls) {
        if (zzdiiVar.zzase().contains(cls) || Void.class.equals(cls)) {
            this.f14307a = zzdiiVar;
            this.f14308b = cls;
            return;
        }
        throw new IllegalArgumentException(String.format("Given internalKeyMananger %s does not support primitive class %s", zzdiiVar.toString(), cls.getName()));
    }

    /* renamed from: a */
    private final adg<?, KeyProtoT> m3536a() {
        return new adg<>(this.f14307a.zzasg());
    }

    /* renamed from: a */
    private final PrimitiveT m3535a(KeyProtoT keyprotot) {
        if (!Void.class.equals(this.f14308b)) {
            this.f14307a.zze(keyprotot);
            return (PrimitiveT) this.f14307a.zza(keyprotot, (Class<PrimitiveT>) this.f14308b);
        }
        throw new GeneralSecurityException("Cannot create a primitive for Void");
    }

    @Override // com.google.android.gms.internal.ads.zzdid
    public final String getKeyType() {
        return this.f14307a.getKeyType();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzdid
    public final PrimitiveT zza(zzdte zzdteVar) {
        String valueOf = String.valueOf(this.f14307a.zzasc().getName());
        String concat = valueOf.length() != 0 ? "Expected proto of type ".concat(valueOf) : new String("Expected proto of type ");
        if (this.f14307a.zzasc().isInstance(zzdteVar)) {
            return (PrimitiveT) m3535a(zzdteVar);
        }
        throw new GeneralSecurityException(concat);
    }

    @Override // com.google.android.gms.internal.ads.zzdid
    public final Class<PrimitiveT> zzarz() {
        return this.f14308b;
    }

    @Override // com.google.android.gms.internal.ads.zzdid
    public final PrimitiveT zzm(zzdqk zzdqkVar) {
        try {
            return m3535a(this.f14307a.zzr(zzdqkVar));
        } catch (zzdse e) {
            String valueOf = String.valueOf(this.f14307a.zzasc().getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "Failures parsing proto of type ".concat(valueOf) : new String("Failures parsing proto of type "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdid
    public final zzdte zzn(zzdqk zzdqkVar) {
        try {
            return m3536a().m5450a(zzdqkVar);
        } catch (zzdse e) {
            String valueOf = String.valueOf(this.f14307a.zzasg().zzasb().getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "Failures parsing proto of type ".concat(valueOf) : new String("Failures parsing proto of type "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdid
    public final zzdna zzo(zzdqk zzdqkVar) {
        try {
            return (zzdna) ((zzdrt) zzdna.zzavl().zzhb(this.f14307a.getKeyType()).zzaw(m3536a().m5450a(zzdqkVar).zzaxk()).zzb(this.f14307a.zzasd()).zzbaf());
        } catch (zzdse e) {
            throw new GeneralSecurityException("Unexpected proto", e);
        }
    }
}
