package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeba.class */
public class zzeba implements zzeaq<zzdzv> {

    /* renamed from: com.google.android.gms.internal.ads.zzeba$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeba$a.class */
    public static final class C7259a implements zzdzv {

        /* renamed from: a */
        public final zzeao<zzdzv> f27986a;

        public C7259a(zzeao<zzdzv> zzeaoVar) {
            this.f27986a = zzeaoVar;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [byte[], byte[][]] */
        @Override // com.google.android.gms.internal.ads.zzdzv
        /* renamed from: a */
        public final byte[] mo12560a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            return zzegl.m12575a(new byte[]{this.f27986a.m12932b().m12937d(), this.f27986a.m12932b().m12940a().mo12560a(bArr, bArr2)});
        }
    }

    static {
        Logger.getLogger(zzeba.class.getName());
    }

    @Override // com.google.android.gms.internal.ads.zzeaq
    /* renamed from: a */
    public final Class<zzdzv> mo12904a() {
        return zzdzv.class;
    }

    @Override // com.google.android.gms.internal.ads.zzeaq
    /* renamed from: a */
    public final /* synthetic */ zzdzv mo12903a(zzeao<zzdzv> zzeaoVar) throws GeneralSecurityException {
        return new C7259a(zzeaoVar);
    }
}
