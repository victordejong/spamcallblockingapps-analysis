package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzai;
import com.google.android.gms.internal.ads.zzao;
import com.google.android.gms.internal.ads.zzbag;
import com.google.android.gms.internal.ads.zzbbq;
/* renamed from: c.d.b.d.g.a.z5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/z5.class */
public final class C4278z5 implements zzai {

    /* renamed from: a */
    public final /* synthetic */ String f16255a;

    /* renamed from: b */
    public final /* synthetic */ C3423c6 f16256b;

    public C4278z5(zzbag zzbagVar, String str, C3423c6 c6Var) {
        this.f16255a = str;
        this.f16256b = c6Var;
    }

    @Override // com.google.android.gms.internal.ads.zzai
    /* renamed from: a */
    public final void mo16743a(zzao zzaoVar) {
        String str = this.f16255a;
        String exc = zzaoVar.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(exc).length());
        sb.append("Failed to load URL: ");
        sb.append(str);
        sb.append("\n");
        sb.append(exc);
        zzbbq.m15852d(sb.toString());
        this.f16256b.mo16681b(null);
    }
}
