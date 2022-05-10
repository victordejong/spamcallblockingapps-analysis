package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzai;
import com.google.android.gms.internal.ads.zzal;
import com.google.android.gms.internal.ads.zzbag;
import com.google.android.gms.internal.ads.zzbbk;
import com.google.android.gms.internal.ads.zzbh;
import com.google.android.gms.internal.ads.zzl;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.b6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/b6.class */
public final class C3381b6 extends zzbh {

    /* renamed from: p */
    public final /* synthetic */ byte[] f12338p;

    /* renamed from: q */
    public final /* synthetic */ Map f12339q;

    /* renamed from: r */
    public final /* synthetic */ zzbbk f12340r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3381b6(zzbag zzbagVar, int i, String str, zzal zzalVar, zzai zzaiVar, byte[] bArr, Map map, zzbbk zzbbkVar) {
        super(i, str, zzalVar, zzaiVar);
        this.f12338p = bArr;
        this.f12339q = map;
        this.f12340r = zzbbkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaa
    /* renamed from: a */
    public final Map<String, String> mo16972a() throws zzl {
        Map<String, String> map = this.f12339q;
        Map<String, String> map2 = map;
        if (map == null) {
            map2 = super.mo16972a();
        }
        return map2;
    }

    @Override // com.google.android.gms.internal.ads.zzbh
    /* renamed from: c */
    public final void mo15541a(String str) {
        this.f12340r.m15876a(str);
        super.mo15541a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzaa
    /* renamed from: g */
    public final byte[] mo16956g() throws zzl {
        byte[] bArr = this.f12338p;
        byte[] bArr2 = bArr;
        if (bArr == null) {
            bArr2 = super.mo16956g();
        }
        return bArr2;
    }
}
