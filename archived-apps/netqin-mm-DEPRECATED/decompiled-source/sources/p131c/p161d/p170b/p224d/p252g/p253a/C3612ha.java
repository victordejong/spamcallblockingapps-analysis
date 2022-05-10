package p131c.p161d.p170b.p224d.p252g.p253a;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzahq;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbgj;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.ha */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ha.class */
public final class C3612ha implements zzahq<zzbgj> {

    /* renamed from: a */
    public final /* synthetic */ ViewTreeObserver$OnGlobalLayoutListenerC3538fa f13262a;

    public C3612ha(ViewTreeObserver$OnGlobalLayoutListenerC3538fa faVar) {
        this.f13262a = faVar;
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final /* synthetic */ void mo14168a(zzbgj zzbgjVar, Map map) {
        int i;
        if (map != null) {
            String str = (String) map.get("height");
            if (!TextUtils.isEmpty(str)) {
                try {
                    int parseInt = Integer.parseInt(str);
                    synchronized (this.f13262a) {
                        i = this.f13262a.f12900E;
                        if (i != parseInt) {
                            this.f13262a.f12900E = parseInt;
                            this.f13262a.requestLayout();
                        }
                    }
                } catch (Exception e) {
                    zzbbq.m15853c("Exception occurred while getting webview content height", e);
                }
            }
        }
    }
}
