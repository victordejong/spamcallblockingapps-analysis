package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aej.class */
final class aej implements zzdop {

    /* renamed from: a */
    private final String f7272a;

    /* renamed from: b */
    private final int f7273b;

    /* renamed from: c */
    private zzdlv f7274c;

    /* renamed from: d */
    private zzdlf f7275d;

    /* renamed from: e */
    private int f7276e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aej(zzdng zzdngVar) {
        this.f7272a = zzdngVar.zzavi();
        if (this.f7272a.equals(zzdiy.zzgys)) {
            try {
                zzdlw zzaf = zzdlw.zzaf(zzdngVar.zzavj());
                this.f7274c = (zzdlv) zzdit.zzb(zzdngVar);
                this.f7273b = zzaf.getKeySize();
            } catch (zzdse e) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e);
            }
        } else if (this.f7272a.equals(zzdiy.zzgyr)) {
            try {
                zzdlg zzx = zzdlg.zzx(zzdngVar.zzavj());
                this.f7275d = (zzdlf) zzdit.zzb(zzdngVar);
                this.f7276e = zzx.zzate().getKeySize();
                this.f7273b = this.f7276e + zzx.zzatf().getKeySize();
            } catch (zzdse e2) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e2);
            }
        } else {
            String valueOf = String.valueOf(this.f7272a);
            throw new GeneralSecurityException(valueOf.length() != 0 ? "unsupported AEAD DEM key type: ".concat(valueOf) : new String("unsupported AEAD DEM key type: "));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdop
    public final int zzasr() {
        return this.f7273b;
    }

    @Override // com.google.android.gms.internal.ads.zzdop
    public final zzdhx zzm(byte[] bArr) {
        zzdte zzdteVar;
        if (bArr.length == this.f7273b) {
            if (this.f7272a.equals(zzdiy.zzgys)) {
                zzdteVar = (zzdlv) ((zzdrt) zzdlv.zzatw().mo3358a(this.f7274c).zzag(zzdqk.zzi(bArr, 0, this.f7273b)).zzbaf());
            } else if (this.f7272a.equals(zzdiy.zzgyr)) {
                byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, this.f7276e);
                byte[] copyOfRange2 = Arrays.copyOfRange(bArr, this.f7276e, this.f7273b);
                zzdlj zzdljVar = (zzdlj) ((zzdrt) zzdlj.zzati().mo3358a(this.f7275d.zzata()).zzaa(zzdqk.zzu(copyOfRange)).zzbaf());
                zzdteVar = (zzdlf) ((zzdrt) zzdlf.zzatc().zzed(this.f7275d.getVersion()).zzb(zzdljVar).zzb((zzdmv) ((zzdrt) zzdmv.zzava().mo3358a(this.f7275d.zzatb()).zzau(zzdqk.zzu(copyOfRange2)).zzbaf())).zzbaf());
            } else {
                throw new GeneralSecurityException("unknown DEM key type");
            }
            return (zzdhx) zzdit.zza(this.f7272a, zzdteVar, zzdhx.class);
        }
        throw new GeneralSecurityException("Symmetric key has incorrect length");
    }
}
