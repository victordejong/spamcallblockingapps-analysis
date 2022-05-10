package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzahq;
import com.google.android.gms.internal.ads.zzbuc;
import com.google.android.gms.internal.ads.zzcdi;
import java.lang.ref.WeakReference;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.jh */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/jh.class */
public final class C3694jh implements zzahq<Object> {

    /* renamed from: a */
    public WeakReference<zzcdi> f13788a;

    public C3694jh(zzcdi zzcdiVar) {
        this.f13788a = new WeakReference<>(zzcdiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final void mo14168a(Object obj, Map<String, String> map) {
        zzbuc zzbucVar;
        zzcdi zzcdiVar = this.f13788a.get();
        if (zzcdiVar != null && "_ac".equals(map.get("eventName"))) {
            zzbucVar = zzcdiVar.f25750h;
            zzbucVar.onAdClicked();
        }
    }
}
