package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeai;
import com.google.android.gms.internal.ads.zzeam;
import com.google.android.gms.internal.ads.zzeer;
import com.google.android.gms.internal.ads.zzeet;
import com.google.android.gms.internal.ads.zzehn;
import com.google.android.gms.internal.ads.zzehp;
import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: c.d.b.d.g.a.f40 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/f40.class */
public final class f40 extends zzeai<zzeam, zzeet> {
    public f40(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzeai
    /* renamed from: a */
    public final /* synthetic */ zzeam mo12945a(zzeet zzeetVar) throws GeneralSecurityException {
        zzeet zzeetVar2 = zzeetVar;
        zzeer n = zzeetVar2.m12712o().m12699n();
        SecretKeySpec secretKeySpec = new SecretKeySpec(zzeetVar2.m12713n().toByteArray(), "HMAC");
        int m = zzeetVar2.m12712o().m12700m();
        int i = g40.f13017a[n.ordinal()];
        if (i == 1) {
            return new zzehp(new zzehn("HMACSHA1", secretKeySpec), m);
        }
        if (i == 2) {
            return new zzehp(new zzehn("HMACSHA256", secretKeySpec), m);
        }
        if (i == 3) {
            return new zzehp(new zzehn("HMACSHA512", secretKeySpec), m);
        }
        throw new GeneralSecurityException("unknown hash");
    }
}
