package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxq.class */
public final class zzaxq extends zzq<zzo> {

    /* renamed from: a */
    private final zzazl<zzo> f11508a;

    /* renamed from: b */
    private final Map<String, String> f11509b;

    /* renamed from: c */
    private final zzayo f11510c;

    public zzaxq(String str, zzazl<zzo> zzazlVar) {
        this(str, zzazlVar, (byte) 0);
    }

    private zzaxq(String str, zzazl<zzo> zzazlVar, byte b) {
        super(0, str, new C1875fm(zzazlVar));
        this.f11509b = null;
        this.f11508a = zzazlVar;
        this.f11510c = new zzayo();
        this.f11510c.zza(str, "GET", null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.internal.ads.zzq
    /* renamed from: a */
    public final zzz<zzo> mo3114a(zzo zzoVar) {
        return zzz.zza(zzoVar, zzas.zzb(zzoVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzq
    /* renamed from: a */
    public final /* synthetic */ void mo3111a(zzo zzoVar) {
        zzo zzoVar2 = zzoVar;
        this.f11510c.zza(zzoVar2.zzab, zzoVar2.statusCode);
        zzayo zzayoVar = this.f11510c;
        byte[] bArr = zzoVar2.data;
        if (zzayo.isEnabled() && bArr != null) {
            zzayoVar.zzi(bArr);
        }
        this.f11508a.set(zzoVar2);
    }
}
