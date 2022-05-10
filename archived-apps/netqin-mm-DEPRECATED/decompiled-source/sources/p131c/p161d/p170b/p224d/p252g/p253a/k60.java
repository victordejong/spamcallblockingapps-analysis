package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzehb;
import com.google.android.gms.internal.ads.zzehh;
import com.google.android.gms.internal.ads.zzehn;
import java.security.GeneralSecurityException;
import java.security.Key;
import javax.crypto.Mac;
/* renamed from: c.d.b.d.g.a.k60 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/k60.class */
public final class k60 extends ThreadLocal<Mac> {

    /* renamed from: a */
    public final /* synthetic */ zzehn f13841a;

    public k60(zzehn zzehnVar) {
        this.f13841a = zzehnVar;
    }

    /* renamed from: a */
    public final Mac initialValue() {
        String str;
        Key key;
        try {
            zzehb<zzehh, Mac> zzehbVar = zzehb.f28024g;
            str = this.f13841a.f28035b;
            Mac a = zzehbVar.m12561a(str);
            key = this.f13841a.f28036c;
            a.init(key);
            return a;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
