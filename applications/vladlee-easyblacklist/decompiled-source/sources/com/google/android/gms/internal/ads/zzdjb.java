package com.google.android.gms.internal.ads;

import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjb.class */
public class zzdjb implements zzdis<zzdhx> {

    /* renamed from: a */
    private static final Logger f14360a = Logger.getLogger(zzdjb.class.getName());

    /* renamed from: com.google.android.gms.internal.ads.zzdjb$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdjb$a.class */
    static final class C2442a implements zzdhx {

        /* renamed from: a */
        private final zzdiq<zzdhx> f14361a;

        private C2442a(zzdiq<zzdhx> zzdiqVar) {
            this.f14361a = zzdiqVar;
        }

        /* synthetic */ C2442a(zzdiq zzdiqVar, byte b) {
            this(zzdiqVar);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [byte[], byte[][]] */
        @Override // com.google.android.gms.internal.ads.zzdhx
        public final byte[] zzc(byte[] bArr, byte[] bArr2) {
            return zzdoi.zza(new byte[]{this.f14361a.zzasm().zzasl(), this.f14361a.zzasm().zzasi().zzc(bArr, bArr2)});
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdis
    public final /* synthetic */ zzdhx zza(zzdiq<zzdhx> zzdiqVar) {
        return new C2442a(zzdiqVar, (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzdis
    public final Class<zzdhx> zzarz() {
        return zzdhx.class;
    }
}
