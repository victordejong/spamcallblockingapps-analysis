package com.google.android.gms.internal.ads;

import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aeq.class */
class aeq implements zzdis<zzdio> {

    /* renamed from: a */
    private static final Logger f7281a = Logger.getLogger(aeq.class.getName());

    /* renamed from: com.google.android.gms.internal.ads.aeq$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aeq$a.class */
    static final class C1726a implements zzdio {

        /* renamed from: a */
        private final zzdiq<zzdio> f7282a;

        /* renamed from: b */
        private final byte[] f7283b;

        private C1726a(zzdiq<zzdio> zzdiqVar) {
            this.f7283b = new byte[]{0};
            this.f7282a = zzdiqVar;
        }

        /* synthetic */ C1726a(zzdiq zzdiqVar, byte b) {
            this(zzdiqVar);
        }

        /* JADX WARN: Type inference failed for: r0v6, types: [byte[], byte[][]] */
        /* JADX WARN: Type inference failed for: r0v9, types: [byte[], byte[][]] */
        /* JADX WARN: Type inference failed for: r4v2, types: [byte[], byte[][]] */
        @Override // com.google.android.gms.internal.ads.zzdio
        public final byte[] zzl(byte[] bArr) {
            return this.f7282a.zzasm().zzask().equals(zzdnw.LEGACY) ? zzdoi.zza(new byte[]{this.f7282a.zzasm().zzasl(), this.f7282a.zzasm().zzasi().zzl(zzdoi.zza(new byte[]{bArr, this.f7283b}))}) : zzdoi.zza(new byte[]{this.f7282a.zzasm().zzasl(), this.f7282a.zzasm().zzasi().zzl(bArr)});
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdis
    public final /* synthetic */ zzdio zza(zzdiq<zzdio> zzdiqVar) {
        return new C1726a(zzdiqVar, (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzdis
    public final Class<zzdio> zzarz() {
        return zzdio.class;
    }
}
