package com.google.android.gms.internal.ads;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.fk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fk.class */
public final class C1873fk extends zzax {

    /* renamed from: a */
    private final /* synthetic */ byte[] f8469a;

    /* renamed from: b */
    private final /* synthetic */ Map f8470b;

    /* renamed from: c */
    private final /* synthetic */ zzayo f8471c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1873fk(int i, String str, zzab zzabVar, zzy zzyVar, byte[] bArr, Map map, zzayo zzayoVar) {
        super(i, str, zzabVar, zzyVar);
        this.f8469a = bArr;
        this.f8470b = map;
        this.f8471c = zzayoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzax, com.google.android.gms.internal.ads.zzq
    /* renamed from: a */
    protected final /* synthetic */ void mo3111a(String str) {
        mo3111a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzax
    /* renamed from: a  reason: avoid collision after fix types in other method */
    protected final void mo4225a(String str) {
        this.f8471c.zzeu(str);
        super.mo3111a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzq
    public final Map<String, String> getHeaders() {
        Map<String, String> map = this.f8470b;
        return map == null ? super.getHeaders() : map;
    }

    @Override // com.google.android.gms.internal.ads.zzq
    public final byte[] zzf() {
        byte[] bArr = this.f8469a;
        return bArr == null ? super.zzf() : bArr;
    }
}
