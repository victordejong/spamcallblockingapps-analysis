package p193e.p194a.p852i.p855b;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.truecaller.ads.provider.holders.AdHolderType;
import e.a.i.f0.m.b;
import e.a.i.f0.m.c;
import s1.z.c.l;
/* renamed from: e.a.i.b.b */
/* loaded from: classes3-dex2jar.jar:e/a/i/b/b.class */
public final class C14990b {

    /* renamed from: a */
    public final NativeCustomFormatAd f42774a;

    public C14990b(c cVar) {
        l.e(cVar, "adHolder");
        Object obj = ((b) cVar).b;
        this.f42774a = (NativeCustomFormatAd) obj;
        if (cVar.d == AdHolderType.CUSTOM_AD && C14991c.f42775a.contains(((NativeCustomFormatAd) obj).getCustomFormatId())) {
            return;
        }
        throw new IllegalArgumentException("AdHolder contains unsupported ad");
    }

    /* renamed from: a */
    public final void m19312a(String str) {
        l.e(str, "s");
        this.f42774a.performClick(str);
    }
}
