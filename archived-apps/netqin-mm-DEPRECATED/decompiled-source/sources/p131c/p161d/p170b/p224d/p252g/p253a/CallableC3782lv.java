package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.Build;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzbbe;
import com.google.android.gms.internal.ads.zzdji;
import com.google.android.gms.internal.ads.zzwm;
import java.util.HashMap;
import java.util.concurrent.Callable;
/* renamed from: c.d.b.d.g.a.lv */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/lv.class */
public final /* synthetic */ class CallableC3782lv implements Callable {

    /* renamed from: a */
    public static final Callable f14002a = new CallableC3782lv();

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String[] split;
        HashMap hashMap = new HashMap();
        String str = (String) zzwm.m11166e().m16921a(zzabb.f23653B);
        if (str != null && !str.isEmpty()) {
            if (Build.VERSION.SDK_INT >= ((Integer) zzwm.m11166e().m16921a(zzabb.f23658C)).intValue()) {
                for (String str2 : str.split(",", -1)) {
                    hashMap.put(str2, zzbbe.m15913a(str2));
                }
            }
        }
        return new zzdji(hashMap);
    }
}
