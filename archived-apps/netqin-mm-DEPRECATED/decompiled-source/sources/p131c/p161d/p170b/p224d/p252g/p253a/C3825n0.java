package p131c.p161d.p170b.p224d.p252g.p253a;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzahq;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbgj;
import java.util.HashMap;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.n0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/n0.class */
public final class C3825n0 implements zzahq<zzbgj> {
    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final /* synthetic */ void mo14168a(zzbgj zzbgjVar, Map map) {
        zzbgj zzbgjVar2 = zzbgjVar;
        WindowManager windowManager = (WindowManager) zzbgjVar2.getContext().getSystemService("window");
        zzp.m17969c();
        View view = (View) zzbgjVar2;
        DisplayMetrics a = zzayu.m16128a(windowManager);
        int i = a.widthPixels;
        int i2 = a.heightPixels;
        int[] iArr = new int[2];
        HashMap hashMap = new HashMap();
        view.getLocationInWindow(iArr);
        hashMap.put("xInPixels", Integer.valueOf(iArr[0]));
        hashMap.put("yInPixels", Integer.valueOf(iArr[1]));
        hashMap.put("windowWidthInPixels", Integer.valueOf(i));
        hashMap.put("windowHeightInPixels", Integer.valueOf(i2));
        zzbgjVar2.mo15577a("locationReady", hashMap);
        zzbbq.m15852d("GET LOCATION COMPILED");
    }
}
