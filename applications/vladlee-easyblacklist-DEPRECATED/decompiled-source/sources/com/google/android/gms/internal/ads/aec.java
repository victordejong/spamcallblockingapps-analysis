package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECPrivateKeySpec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aec.class */
final class aec extends zzdik<zzdib, zzdmk> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public aec(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzdik
    public final /* synthetic */ zzdib zzak(zzdmk zzdmkVar) {
        zzdmk zzdmkVar2 = zzdmkVar;
        zzdmj zzauf = zzdmkVar2.zzaum().zzauf();
        zzdmo zzauh = zzauf.zzauh();
        zzdox a = aeh.m5445a(zzauh.zzauu());
        byte[] byteArray = zzdmkVar2.zzass().toByteArray();
        return new zzdoo((ECPrivateKey) zzdoy.zzhgm.zzhd("EC").generatePrivate(new ECPrivateKeySpec(new BigInteger(1, byteArray), zzdov.zza(a))), zzauh.zzauw().toByteArray(), aeh.m5444a(zzauh.zzauv()), aeh.m5447a(zzauf.zzauj()), new aej(zzauf.zzaui().zzauc()));
    }
}
